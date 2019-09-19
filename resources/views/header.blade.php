
    <div class="header" id="home">
        <div class="header-para">
            <p><span></span></p>
        </div>
        <ul class="header-in">
            @if(Auth::check())
                <li>Chào:</li>
                <li><p>{{ Auth::user()->name .' '}}</p></li>
                <li>
                    <div class="dropdown">
                        <button class="btn btn-default btn-sm dropdown-toggle" type="button" id="dropdownMenu1"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                            <span class="glyphicon glyphicon-user"></span>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li><a href="#"> Hồ sơ</a></li>
                            <li><a href="{{ route('changepass') }}"> Đổi mật khẩu</a></li>
                            <li class="divider"></li>
                            <li><a href="{{ route('logout') }}"> Đăng xuất</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="{{ route('contact') }}"> LIÊN HỆ</a></li>
            @else
                <li><a href="{{ route('register') }}"> ĐĂNG KÝ</a></li>
                <li><a href="{{ route('login') }}"> ĐĂNG NHẬP</a></li>
                <li><a href="{{ route('contact') }}"> LIÊN HỆ</a></li>
            @endif
        </ul>
        <div class="clearfix"></div>
    </div><!---->
    <div class="header-top">
        <div class="logo">
            <a href="#"><img src="source/images/shopsachhay.png" alt="" style="width: 60%"></a>
        </div>
        <div class="header-top-on">
           <form action="{{ route('search') }}" method="get">
            <input type="text" class="search1" name="key" placeholder="Tìm kiếm..">
           </form>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="header-bottom">
        <div class="top-nav">
            <ul class="megamenu skyblue">
                <li class="active grid"><a href="{{ route('home') }}">TRANG CHỦ</a></li>
                <li class="grid"><a href="#">DANH MỤC</a>
                    {{--<div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <ul>
                                        <li><a href="store.html">SÁCH NỔI BẬT</a></li>
                                        <li><a href="store.html">SÁCH MỚI NHẤT</a></li>
                                        <li><a href="store.html">SÁCH GIẢM GIÁ</a></li>
                                        <li><a href="store.html">SÁCH BÁN CHẠY</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>--}}
                </li>
                <li><a class="pink" href="{{ route('cart') }}">GIỎ HÀNG</a></li>
                <li><a class="pink" href="{{ route('news') }}">TIN TỨC</a></li>
            </ul>
        </div>
        <div class="cart icon1 sub-icon1" id="cart-bar">
            @if(Session::has('cart'))
            <?php $cart = session()->get('cart'); ?>
            <h6 id="cart-menu">Giỏ Hàng: <span class="item"><span class="total-qty">{{ $cart->totalQty }}</span> sản phẩm</span>
                <span class="rate">{{ number_format($cart->totalPrice, 0, '', '.') }} &#8363;</span>
                <li><a class="round"> </a>
                    <ul class="sub-icon1 list">
                        <h3></h3>
                        <div class="shopping_cart">
                            @foreach($cart->items as $product)
                                <div class="cart_box" id="item-{{ $product['item']['id'] }}">
                                    <div class="message">
                                        <a class="alert-close" id="del-item-cart-{{ $product['item']['id'] }}"
                                                book="{{ $product['item']['title'] }}" onclick="event.preventDefault(); delItemCart({{ $product['item']['id'] }})"></a>
                                        <div class="list_img">
                                            <a href="book/{{ $product['item']['slug'] }}">
                                                <img title="{{ $product['item']['title'] }}" src="images/{{ $product['item']['image'] }}" class="img-responsive" alt="{{ $product['item']['title'] }}">
                                            </a>
                                        </div>
                                        <div class="list_desc">
                                            <h4>
                                                <a title="{{ $product['item']['title'] }}" href="book/{{ $product['item']['slug'] }}" style="">
                                                    {{--{{ substr_replace($product['item']['title'],'...',25) }}--}}
                                                    {{ $product['item']['title'] }}
                                                </a>
                                            </h4>
                                            <h5>Số lượng: <span id="qty-{{ $product['item']['id'] }}"> {{ $product['qty'] }}</span></h5>
                                            <h5>Đơn giá: <span>{{ number_format($product['item']['price'], 0, '', '.') }} &#8363;</span>
                                            </h5>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <div class="check_button"><a href="{{ route('cart') }}">Chi Tiết Giỏ Hàng</a></div>
                        <div class="clearfix"></div>
                    </ul>
                </li>
            </h6>
            @endif
        </div>
        <div class="clearfix"></div>
    </div>
    <script>
        // delete item
		function delItemCart(id) {
			var url = '{{ url('del-item-cart') }}/' + id,
                bookTitle = $('#del-item-cart-' + id).attr('book');
			Swal.fire({
				title: 'Xác nhận',
				html: "Bạn có chắc muốn xóa " + "<h6>" + bookTitle + "</h6>",
				type: 'warning',
				showCancelButton: true,
				confirmButtonColor: '#3085d6',
				cancelButtonColor: '#d33',
				confirmButtonText: 'Đồng ý',
				cancelButtonText: 'Hủy'
			}).then(function(result) {
				if (result.value) {
					removeItemCart(url,id);
				}
			})
		}

		// load empty cart
		function loadEmptyCart() {
			var barContent = '<h6 id="cart-menu">Giỏ Hàng: <span class="item"><span></span> Trống</span>\n',
				cartPageContent = '<div class="alert alert-danger"><h4 class="text-center">Bạn không có sản phẩm nào trong giỏ hàng. Vui lòng quay lại ' +
					'<a href="/"> Trang Chủ</a> để đặt mua </h4></div>\n' +
					'<div class="check-out"></div>';

			$('#cart-page-content').html(cartPageContent);
			$('#cart-menu').html(barContent);
		}

		// remove item and update cart
		function removeItemCart(url,id) {
			$.get(url).done(function (data) {

				Swal({
					title: 'Thành công',
					text: 'Xóa sản phẩm thành công',
					type: 'success',
					timer: 1000,
					showConfirmButton: false
				})

				if (Object.keys(data).length == 0) {
					loadEmptyCart();
					return false;
				}
                var totalQty = data.totalQty,
                    totalPrice = data.totalPrice;

                // update cart bar
                $('#item-' + id).hide();
                $('.total-qty').html(totalQty)
                $('.rate').html(totalPrice.toLocaleString('it-IT', {style : 'currency', currency : 'VND'}));

                // update cart page
                $('#tr-product-' + id).hide();
                $('.total-price').html(totalPrice.toLocaleString('it-IT', {style : 'currency', currency : 'VND'}));
			})
		}
    </script>

