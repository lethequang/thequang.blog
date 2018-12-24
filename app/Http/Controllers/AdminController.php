<?php

namespace App\Http\Controllers;

use App;
use PDF;
use App\Author;
use App\Bill;
use App\BillDetail;
use App\Category;
use App\Customer;
use App\Feedback;
use App\News;
use App\User;
use function GuzzleHttp\Promise\all;
use Illuminate\Http\Request;
use App\Product;
use Illuminate\Support\Facades\Auth;
use function Sodium\compare;

class AdminController extends Controller
{

	/*public function __construct() {
		$this->middleware('admin',['except' => 'getLogout']);
	}
	public function getLogout() {
		Auth::guard('admin')->logout();
		return redirect('admin/login');
	}*/

	public function __construct(){
		$this->middleware('admin');
	}

	public function showIndex(){
		$product = Product::all();
		$author = Author::all();
		$category = Category::all();
		$bill = Bill::all();
		$user = User::all();
		$customer = Customer::all();
		$news = News::all();
		$feedback = Feedback::all();
		return view('admin.index',compact('product','author','category','bill','user','customer','news','feedback'));
	}

	// product
	public function showListBook(){
		$posts = Product::paginate(5);
		return view('admin.post.list',compact('posts'));
	}

	public function showAddProduct()
	{
		$category = Category::all();
		$author = Author::all();
		return view('admin.post.add',compact('category','author'));
	}

	public function saveAddProduct(Request $request)
	{
		$post = new Product();

		$post->title = $request->input('title');
		$post->id_category = $request->input('id_cat');
		$post->id_author = $request->input('id_auth');
		$post->price = $request->input('price');

		$post->year = $request->input('year');
		$post->quantity = $request->input('quantity');
		$post->description = $request->input('post_content');

		$image = $request->file('image')->getClientOriginalName();
		$request->file('image')->move(public_path('/images'), $image);
		$post->image = $image;

		$post->save();
		return redirect()->back()->with('success', 'Thêm sách thành công !');
	}
	public function showEditProduct($id)
	{
		$post = Product::where('id', $id)->first();
		$category = Category::all();
		$author = Author::all();
		return view('admin.post.edit',compact('post','category','author'));
	}
	public function saveEditProduct(Request $request, $id)
	{
		$post = Product::where('id',$id)->first();

		$post->title = $request->input('title');
		$post->id_category = $request->input('id_cat');
		$post->id_author = $request->input('id_auth');
		$post->price = $request->input('price');

		$post->year = $request->input('year');
		$post->quantity = $request->input('quantity');
		$post->description = $request->input('post_content');

		$image = $request->file('image')->getClientOriginalName();
		$request->file('image')->move(public_path('/images'), $image);
		$post->image = $image;

		$post->save();
		return redirect()->back()->with('success', 'Sửa sách thành công !');
	}

	public function deleteProduct($id)
	{
		$post = Product::find($id)->delete();

		return redirect("/admin/product")->with('message', 'Xóa sách thành công !');
	}

// category
	public function showListCategory(){
		$cates = Category::paginate(5);
		return view('admin.category.list',compact('cates'));
	}
	public function showAddCategory(){
		return view('admin.category.add');
	}
	public function saveAddCategory(Request $request)
	{
		$post = new Category();

		$post->name = $request->input('name');
		$post->save();
		return redirect()->back()->with('success', 'Thêm thể loại thành công !');
	}
	public function showEditCategory($id){
		$cate = Category::where('id',$id)->first();
		return view('admin.category.edit',compact('cate'));
	}
	public function saveEditCategory(Request $request,$id){
		$cate = Category::where('id',$id)->first();

		$cate->name = $request->input('name');
		$cate->save();
		return redirect()->back()->with('success', 'Sửa thể loại thành công !');
	}
	public function deleteCategory($id)
	{
		$cate = Category::find($id)->delete();

		return redirect("/admin/category")->with('message', 'Xóa thể loại thành công !');
	}

	// author
	public function showListAuthor(){
		$auths = Author::paginate(5);
		return view('admin.author.list',compact('auths'));
	}
	public function showAddAuthor(){
		return view('admin.author.add');
	}
	public function saveAddAuthor(Request $request)
	{
		$auth = new Author();

		$auth->name = $request->input('name');
		$auth->save();
		return redirect()->back()->with('success', 'Thêm tác giả thành công !');
	}
	public function showEditAuthor($id){
		$auth = Author::where('id',$id)->first();
		return view('admin.author.edit',compact('auth'));
	}
	public function saveEditAuthor(Request $request,$id){
		$auth = Author::where('id',$id)->first();

		$auth->name = $request->input('name');
		$auth->save();
		return redirect()->back()->with('success', 'Sửa tên tác giả thành công !');
	}
	public function deleteAuthor($id)
	{
		$auth = Author::find($id)->delete();

		return redirect("/admin/author")->with('message', 'Xóa tác giả thành công !');
	}

	// bill
	public function showListBill(){
        $bills = Bill::orderBy('id','DESC')
            ->paginate('5');
		return view('admin.bill.list',compact('bills'));
	}
	public function showDetailBill($id){
		$bill = Bill::where('id',$id)->first();
        $id_cus = $bill->id_customer;
        $bill_details = BillDetail::where('id_bill',$id)->get();
        $customer = Customer::where('id',$id_cus)->first();
        return view('admin.bill.detail',compact('bill_details','customer','bill'));
	}
	public function exportBill($id){
		$bill = Bill::where('id',$id)->first();
        $id_cus = $bill->id_customer;
        $bill_details = BillDetail::where('id_bill',$id)->get();
        $customer = Customer::where('id',$id_cus)->first();
//		$pdf = PDF::loadView('admin.bill.invoice',  compact('bill_details','customer'));
//		return $pdf->download('invoice.pdf');

		$pdf = App::make('dompdf.wrapper');
		$pdf->loadHTML(view('admin.bill.invoice',compact('bill_details','customer','bill')))->setPaper('a4', 'landscape');
		return $pdf->stream();
	}
}
