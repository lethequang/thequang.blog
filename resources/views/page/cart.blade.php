@extends('master')
@section('content')
    <div class="content" id="cart-page-content">
        @if(session()->has('message'))
            <div class="alert alert-success">
                <h3 class="text-center">
                    {{ session()->get('message') }}
                </h3>
            </div>
        @endif
        @if(!Session::has('cart'))
            <div class="alert alert-danger"><h4 class="text-center">Bạn không có sản phẩm nào trong giỏ hàng. Vui lòng
                    quay lại <a href="{{ route('home') }}"> Trang Chủ</a> để đặt mua </h4></div>
        @else
            <h4 class="title">Chi Tiết Giỏ Hàng</h4>
            <div class="row">
                <div class="col-sm-12 col-md-10 col-md-offset-1">
                    <table id="cart" class="table table-hover table-condensed">
                        <thead>
                        <tr>
                            <th style="width:45%">Sách</th>
                            <th style="width:10%">Đơn Giá</th>
                            <th style="width:20%" class="text-center">Số Lượng</th>
                            <th style="width:15%" class="text-center">Thành Tiền</th>
                            <th style="width:10%" class="text-center"></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($product_cart as $product)
                            <tr class="tr-product" id="tr-product-{{ $product['item']['id'] }}">
                                <td data-th="Sách">
                                    <div class="row">
                                        <div class="col-sm-2 hidden-xs"><img
                                                    src="images/{{ $product['item']['image'] }}" alt="..."
                                                    class="img-responsive"/></div>
                                        <div class="col-sm-10">
                                            <a href="{{ route('detail',$product['item']['id']) }}"><h4
                                                        class="nomargin">{{ $product['item']['title'] }}</h4></a>
                                            <p></p>
                                        </div>
                                    </div>
                                </td>
                                <td data-th="Đơn giá">{{ number_format($product['item']['price'], 0, '', '.') }} &#8363;
                                </td>
                                <td data-th="Số lượng" class="qty-number text-center">
                                    {{--<input type="number" class="form-control text-center" value="{{ $product['qty'] }}">--}}
                                        <span class="minus bg-dark" onclick="event.preventDefault(); decreaseItem({{ $product['item']['id'] }})">-</span>
                                        <input type="number" class="count" id="change-qty-{{ $product['item']['id'] }}" name="qty" value="{{ $product['qty'] }}">
                                        <span class="plus bg-dark" onclick="event.preventDefault(); increaseItem({{ $product['item']['id'] }})">+</span>
                                </td>
                                <td data-th="Thành tiền" class="text-center" id="subtotal-{{ $product['item']['id'] }}">{{ number_format($product['price'], 0, '', '.') }} &#8363;
                                </td>
                                <td class="actions" data-th="">
                                    <a class="del btn btn-danger btn-sm" id="del-item-page-{{ $product['item']['id'] }}" book="{{ $product['item']['title'] }}"
                                            onclick="event.preventDefault(); delItemPage({{ $product['item']['id'] }})"><i class="fa fa-trash-o"></i></a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                        <tfoot>
                        <tr class="visible-xs">
                            <td class="text-center"><strong class="rate"><span> Tổng:</span><span class="total-price"> {{ number_format($totalPrice, 0, '', '.') }} &#8363;</span></strong></td>
                        </tr>
                        <tr>
                            <td><a href="{{ route('home') }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp Tục Mua Hàng</a></td>
                            <td colspan="2" class="hidden-xs"></td>
                            <td class="hidden-xs text-center"><strong class="rate"><span> Tổng:</span>
                                    <span class="total-price">{{ number_format($totalPrice, 0, '', '.') }} &#8363;</span></strong></td>
                            <td><a href="{{ route('checkout') }}" class="btn btn-success btn-block"> Đặt Hàng <i class="fa fa-angle-right"></i></a></td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        @endif
        <div class="check-out"></div>
    </div>
    <!---->
    <script src="source/js/jquery.min.js"></script>
    <script>

		$(document).ready(function(){
			var $count = $('.count');
			$count.prop('disabled', true);
		});

		// increase item up 1 unit
		function increaseItem(id) {
            var currentQty = $('#change-qty-' + id).val(),
                url = '{{ url('add-to-cart') }}/' + id;

			$('#change-qty-' + id).val(parseInt(currentQty) + 1);

			updateCart(url,id)
		}

		// decrease item down 1 unit
		function decreaseItem(id) {
            var currentQty = $('#change-qty-' + id).val(),
				url = '{{ url('reduce-item-cart') }}/' + id;

			$('#change-qty-' + id).val(parseInt(currentQty) - 1);

			if ($('#change-qty-' + id).val() == 0) {
				$('#change-qty-' + id).val(1);
				return false;
			}
            updateCart(url,id);
		}

		// reload cart
		function updateCart(url,id) {
			$.get(url).done(function (data) {
				console.log(data)
				Swal({
					title: 'Thành công',
					type: 'success',
					timer: 1000,
					showConfirmButton: false
				})
                var totalQty = data.totalQty,
                    totalPrice = data.totalPrice,
                    item = data.items[id],
                    subQty = item.qty,
                    subTotal = item.price;

                // uppdate cart page
                $('#subtotal-' + id).html(subTotal.toLocaleString('it-IT', {style : 'currency', currency : 'VND'}));
                $('.total-price').html(totalPrice.toLocaleString('it-IT', {style : 'currency', currency : 'VND'}));

                //update cart bar
                $('.total-qty').html(totalQty);
				$('.rate').html(totalPrice.toLocaleString('it-IT', {style : 'currency', currency : 'VND'}));
				$('#qty-' + id).html(subQty);
			})
		}

		// delete item
		function delItemPage(id) {
			var url = '{{ url('del-item-cart') }}/' + id,
                bookTitle = $('#del-item-page-' + id).attr('book');
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
					removeItemPage(url,id);
				}
			})
        }

        // remove item and reload cart
        function removeItemPage(url,id) {
			$.get(url).done(function (data) {
				Swal({
					title: 'Thành công',
					text: 'Xóa sản phẩm thành công',
					type: 'success',
					timer: 1000,
					showConfirmButton: false
				})
				if (Object.keys(data).length == 0) {
					loadEmptyPage();
					return false;
				}
				var totalQty = data.totalQty,
					totalPrice = data.totalPrice;

				// update cart page
				$('#tr-product-' + id).hide();
				$('.total-price').html(totalPrice.toLocaleString('it-IT', {style : 'currency', currency : 'VND'}));

				// update cart bar
				$('#item-' + id).hide();
				$('.total-qty').html(totalQty)
				$('.rate').html(totalPrice.toLocaleString('it-IT', {style : 'currency', currency : 'VND'}));
			})
		}

		// load empty cart
		function loadEmptyPage() {
            var pageContent = '<div class="alert alert-danger"><h4 class="text-center">Bạn không có sản phẩm nào trong giỏ hàng. Vui lòng quay lại ' +
                '<a href="/"> Trang Chủ</a> để đặt mua </h4></div>\n' +
                '<div class="check-out"></div>',
                barContent = '<h6 id="cart-menu">Giỏ Hàng: <span class="item"><span></span> Trống</span>\n';

            $('#cart-page-content').html(pageContent);
			$('#cart-menu').html(barContent);

		}
    </script>
@endsection