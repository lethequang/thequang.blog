<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BaseController extends Controller
{
    public function __construct() {
		if (Session('cart')){
			$oldCart = Session::get('cart');
			$cart = new Cart($oldCart);
			$data = ['cart'=>Session::get('cart'),'product_cart'=>$cart->items,'totalPrice'=>$cart->totalPrice,'totalQty'=>$cart->totalQty];
		}else{
			$data = array();
			Session::set('cart', $data);
		}
		return response($data);
	}
}
