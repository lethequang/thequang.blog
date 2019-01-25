@extends('master')
@section('content')
    <div class="content">
        <div class="col-md-9">
            <div id="carousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel" data-slide-to="1"></li>
                    <li data-target="#carousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="source/images/banner2.jpg" alt="Los Angeles">
                    </div>

                    <div class="item">
                        <img src="source/images/bannernew02.png" alt="Chicago">
                    </div>

                    <div class="item">
                        <img src="source/images/bannernew04.jpg" alt="New York">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#carousel" data-slide="prev"> <span
                            class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span> </a>
                <a class="right carousel-control" href="#carousel" data-slide="next"> <span
                            class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span> </a>
            </div>
            <div class="content-bottom">
                <h3>Sách Mới Nhất</h3>
                <div class="row display-flex" style="padding-top: 30px;">
                    @foreach($product as $book)
                        <div class="col-md-4 col-sm-6">
                            <div class="product-grid4">
                                <div class="product-image4">
                                    <a href="book/{{ $book['slug'] }}">
                                        <img class="pic-1" src="images/{{ $book['image'] }}">
                                        <img class="pic-2" src="images/{{ $book['image'] }}">
                                    </a>
                                    <ul class="social">
                                        <li><a href="book/{{ $book['slug'] }}" data-tip="Chi tiết"><i class="fa fa-eye"></i></a></li>
                                        <li><a href="{{ route('addtocart',$book['id']) }}" data-tip="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                    <span class="product-new-label">New</span>
                                </div>
                                <div class="product-content">
                                    <h3 class="title"><a href="book/{{ $book['slug'] }}">{{ $book['title'] }}</a></h3>
                                    <div class="price">
                                        {{ number_format($book['price'], 0, '', '.') }} &#8363;
                                    </div>
                                    <a class="cart-an" id="add-to-cart-{{ $book['id'] }}" book="{{ $book['title'] }}" onclick="event.preventDefault(); addToCart({{ $book['id'] }})" href="#">Chọn mua</a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <ul class="start">
                {{ $product->links() }}
            </ul>
        </div>

        @include('sidebar')
        <div class="clearfix"></div>
    </div>
    <!---->

@endsection
@section('footer_js')
<script>
    function addToCart(id) {
    	var name = $('#add-to-cart-' + id).attr('book'),
            url = '{{ url('add-to-cart') }}/' + id;
        $.get(url).done(function (data) {
			Swal({
				title: 'Thành công',
				text: name + ' đã được thêm vào giỏ hàng',
				type: 'success',
				timer: 1300,
				showConfirmButton: false
			})
            var ids = Object.keys(data.items);
            loadCart(data,ids);
		})
    }
    function loadCart(data,ids) {
        var totalQty = data.totalQty,
            totalPrice = data.totalPrice;
        var cartContent =
            '    <h6 id="cart-menu">Giỏ Hàng: <span class="item"><span class="total-qty">'+ totalQty +'</span> sản phẩm</span>\n' +
			'        <span class="rate">'+ totalPrice.toLocaleString('it-IT', {style : 'currency', currency : 'VND'}) +'</span>\n' +
			'        <li><a href="" class="round"> </a>\n' +
			'            <ul class="sub-icon1 list">\n' +
			'                <h3></h3>\n' +
			'                <div class="shopping_cart">\n' +
			'                </div>\n' +
			'                <div class="check_button"><a href="">Chi Tiết Giỏ Hàng</a></div>\n' +
			'                <div class="clearfix"></div>\n' +
			'            </ul>\n' +
			'        </li>\n' +
			'    </h6>\n'
		$('#cart-bar').html(cartContent)

        $.map(ids,function (id) {
            var list = data.items[id];
        	var itemContent =
                '           <div class="cart_box" id="item-'+ id +'">\n' +
				'                            <div class="message">\n' +
				'                                <a class="alert-close" id="del-item-cart-'+ id +'" book="'+ list.item.title +'" onclick="event.preventDefault(); delItemCart('+ id +')"></a>\n' +
				'                                <div class="list_img">\n' +
				'                                    <a href="">\n' +
				'                                        <img title="'+ list.item.title +'" src="images/'+ list.item.image +'" class="img-responsive" alt="'+ list.item.title +'">\n' +
				'                                    </a>\n' +
				'                                </div>\n' +
				'                                <div class="list_desc">\n' +
				'                                    <h4>\n' +
				'                                        <a title="'+ list.item.title +'" href="">\n' + list.item.title +
				'                                        </a>\n' +
				'                                    </h4>\n' +
				'                                    <h5>Số lượng: <span id="qty-'+ id +'">'+ list.qty +'</span></h5>\n' +
				'                                    <h5>Đơn giá: '+ list.price.toLocaleString('it-IT', {style : 'currency', currency : 'VND'}) +'<span\n' +
				'                                                value=""></span>\n' +
				'                                    </h5>\n' +
				'                                </div>\n' +
				'                                <div class="clearfix"></div>\n' +
				'                            </div>\n' +
				'                        </div>\n'
            $('.shopping_cart').append(itemContent);
		})
	}

</script>
@endsection