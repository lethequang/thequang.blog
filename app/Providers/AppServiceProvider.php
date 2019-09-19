<?php

namespace App\Providers;

use App\Product;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\ServiceProvider;
use App\Category;
use App\Author;
use App\Cart;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('sidebar',function ($view){
        	$product_cat = Category::all();
			$product_author = Author::all();
        	$view->with('product_cat',$product_cat)
				->with('product_author',$product_author);
		});
//        view()->composer(['header','page/home'],function ($view){
//        	if (Session('cart')){
//        		$oldCart = Session::get('cart');
//        		$cart = new Cart($oldCart);
//        		$view->with(['cart'=>Session::get('cart'),'product_cart'=>$cart->items,'totalPrice'=>$cart->totalPrice,'totalQty'=>$cart->totalQty]);
//			}
//		});

    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
