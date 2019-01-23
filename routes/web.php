<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


// List Page
Route::get('/',[
	'as'=>'home',
	'uses'=>'PageController@getIndex'
]);
Route::get('contact',[
	'as'=>'contact',
	'uses'=>'PageController@getContact'
]);
Route::post('contact',[
	'as'=>'contact',
	'uses'=>'PageController@postContact'
]);
Route::get('news',[
	'as'=>'news',
	'uses'=>'PageController@getNews'
]);
Route::get('category/{id}',[
	'as'=>'category',
	'uses'=>'PageController@getType'
]);
Route::get('author/{id}',[
	'as'=>'author',
	'uses'=>'PageController@getAuthor'
]);
Route::get('book/{slug}',[
	'as'=>'detail',
	'uses'=>'PageController@getDetail'
]);
Route::get('search',[
	'as'=>'search',
	'uses'=>'PageController@getSearch'
]);

// End List Page

// Auth Session
Route::get('register',[
	'as'=>'register',
	'uses'=>'AuthController@getRegister'
]);
Route::post('register',[
	'as'=>'register',
	'uses'=>'AuthController@postRegister'
]);
Route::get('login',[
	'as'=>'login',
	'uses'=>'AuthController@getLogin'
]);
Route::post('login',[
	'as'=>'login',
	'uses'=>'AuthController@postLogin'
]);
Route::get('changepass',[
	'as'=>'changepass',
	'uses'=>'AuthController@showChangePassForm',
	'middleware'=>'auth'
]);
Route::post('changepass',[
	'as'=>'changepass',
	'uses'=>'AuthController@doChangePass'
]);
Route::get('logout',[
	'as'=>'logout',
	'uses'=>'AuthController@getLogout'
]);
// End Auth Session

// Cart
Route::get('add-to-cart/{id}',[
	'as'=>'addtocart',
	'uses'=>'CartController@getAddToCart'
]);
Route::get('reduce-item-cart/{id}',[
	'as'=>'reduce-item-cart',
	'uses'=>'CartController@getReduceCart'
]);
Route::get('del-item-cart/{id}',[
	'as'=>'del-item-cart',
	'uses'=>'CartController@getDelItemCart'
]);
Route::get('cart',[
	'as'=>'cart',
	'uses'=>'CartController@getCart'
]);
Route::get('checkout',[
	'as'=>'checkout',
	'uses'=>'CartController@getCheckout'
]);
Route::post('checkout',[
	'as'=>'checkout',
	'uses'=>'CartController@postCheckout'
]);
// End Cart

/* Start Admin */

	Route::get('admin', 'AdminController@showIndex')->name('admin-index');
	Route::get('admin/login', 'AuthController@getAdminLogin');
	Route::post('admin/login', 'AuthController@postAdminLogin')->name('admin-login');
	Route::get('admin/logout', 'AuthController@getAdminLogout')->name('admin-logout');
//product
	Route::get('admin/product', 'AdminController@showListBook')->name('product-list');
	Route::get('admin/product/add', 'AdminController@showAddProduct');
	Route::post('admin/product/add', 'AdminController@saveAddProduct')->name('product-add');
	Route::get('admin/product/edit/{id}', 'AdminController@showEditProduct');
	Route::post('admin/product/edit/{id}', 'AdminController@saveEditProduct')->name('product-edit');
	Route::get('admin/product/delete/{id}', 'AdminController@deleteProduct')->name('product-delete');

//category
	Route::get('admin/category', 'AdminController@showListCategory')->name('category-list');
	Route::get('admin/category/add', 'AdminController@showAddCategory');
	Route::post('admin/category/add', 'AdminController@saveAddCategory')->name('category-add');
	Route::get('admin/category/edit/{id}', 'AdminController@showEditCategory');
	Route::post('admin/category/edit/{id}', 'AdminController@saveEditCategory')->name('category-edit');
	Route::get('admin/category/delete/{id}', 'AdminController@deleteCategory')->name('category-delete');

//author
	Route::get('admin/author', 'AdminController@showListAuthor')->name('author-list');
	Route::get('admin/author/add', 'AdminController@showAddAuthor');
	Route::post('admin/author/add', 'AdminController@saveAddAuthor')->name('author-add');
	Route::get('admin/author/edit/{id}', 'AdminController@showEditCategory');
	Route::post('admin/author/edit/{id}', 'AdminController@saveEditAuthor')->name('author-edit');
	Route::get('admin/author/delete/{id}', 'AdminController@deleteAuthor')->name('author-delete');

//bill
	Route::get('admin/bill', 'AdminController@showListBill')->name('bill-list');
	Route::get('admin/bill/{id}', 'AdminController@showDetailBill')->name('bill-detail');
	Route::get('admin/bill/export/{id}', 'AdminController@exportBill')->name('export-bill');

//customer
	Route::get('admin/customer', 'AdminController@showListCustomer')->name('customer-list');

//user
	Route::get('admin/user', 'AdminController@showListUser')->name('user-list');

//news
	Route::get('admin/news', 'AdminController@showListNews')->name('news-list');
	Route::get('admin/news/add', 'AdminController@showAddNews');
	Route::post('admin/news/add', 'AdminController@saveAddNews')->name('news-add');

//feedback
	Route::get('admin/feedback', 'AdminController@showListFeedback')->name('feedback-list');


/*End Admin*/

