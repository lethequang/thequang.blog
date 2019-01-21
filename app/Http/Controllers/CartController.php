<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Cart;
use App\Customer;
use App\Bill;
use App\BillDetail;
use Session;
use Hash;

class CartController extends Controller
{
	public function getAddToCart(Request $request, $id)
	{
		$product = Product::find($id);
		$oldCart = Session('cart') ? Session::get('cart') : NULL;
		$cart = new Cart($oldCart);
		$cart->add($product, $id);
		$request->Session()->put('cart', $cart);
		return response()->json(Session::get('cart'));
	}


	public function getDelItemCart($id)
	{
		$oldCart = Session::has('cart') ? Session::get('cart') : NULL;
		$cart = new Cart($oldCart);
		$cart->removeItem($id);
		if (count($cart->items) > 0) {
			Session::put('cart', $cart);
		} else {
			Session::forget('cart');
		}
		return response()->json(Session::get('cart'));
	}


	public function getCart()
	{
		if (Session::has('cart')) {
			$cart = Session::get('cart');
			foreach ($cart->items as $key => $value) {
			}
			return view('page.cart', [
				'cart' => $cart,
				'product_cart' => $cart->items,
				'totalPrice' => $cart->totalPrice,
				'totalQty' => $cart->totalQty,
			]);
		}
		else
			return view('page.cart');
	}


	public function getCheckout()
	{
		if(Session::has('cart')){
			$cart = Session::get('cart');
			return view('page.checkout',[
				'cart' => $cart,
				'product_cart' => $cart->items,
				'totalPrice' => $cart->totalPrice,
				'totalQty' => $cart->totalQty,
			]);
		}
		else
			return view('page.cart');
	}

	public function postCheckout(Request $request)
	{
		$cart = Session::get('cart');
		$customer = new Customer;
		$customer->full_name = $request->full_name;
		$customer->email = $request->email;
		$customer->address = $request->address;
		$customer->phone = $request->phone;
		$customer->note = $request->note;
		$customer->save();

		$bill = new Bill;
		$bill->id_customer = $customer->id;
		$bill->note = $request->note;
		$bill->date_order = date('Y-m-d');
		$bill->payment = $request->payment;
		$bill->total = $cart->totalPrice;
		$bill->save();

		foreach ($cart->items as $key => $value) {
			$bill_detail = new BillDetail;
			$bill_detail->id_bill = $bill->id;
			$bill_detail->id_product = $key;
			$bill_detail->quantity = $value['qty'];
			$bill_detail->price = $value['price'];
			$bill_detail->save();
		}
		Session::forget('cart');
		return redirect()->back()->with('message', 'Đặt hàng thành công. Đơn hàng đang được xử lý !');

	}
}
