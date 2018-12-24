@extends('master')
@section('content')
    <div class="content">
        <div class="col-md-9">
            <div class="col-md-4 single-top">
                <img class="etalage_thumb_image img-responsive" src="images/{{ $product->image }}" alt="">
            </div>
            <div class="col-md-8 single-top-in">
                <div class="single-para">
                    <h4>{{ $product->title }}</h4>
                    <div class="para-grid">
                        <span class="add-to">{{ number_format($product->price) }}</span>
                        <p>VNĐ</p>
                        <!--						<a href="#" class=" cart-to">Thêm vào giỏ hàng</a>-->
                        <div class="pull-right">
							<?php
							if ($product->quantity > 0) {
								echo "Còn " . $product->quantity . " quyển";
							} else {
								echo "Đã hết hàng";
							}
							?>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <h4>Tác Giả: <a href="author/{{ $product->id_author }}">{{ $author->name }}</a></h4>
                    <h4>Thể Loại: <a href="category/{{ $product->id_category }}">{{ $category->name }}</a></h4>
                    <h4>Xuất Bản: {{ $product->year }}</h4>
                    <div class="available">
                        <span><?php echo "$product->description"; ?></span>
                    </div>
                    <a href="{{ route('addtocart',$product->id) }}" class="cart-an">Thêm Vào Giỏ Hàng</a>
                    <div class="share">
                        <h4>Chia sẻ:</h4>
                        <ul class="share_nav">
                            <li><a href="#"><img src="source/images/facebook.png" title="facebook"></a></li>
                            <li><a href="#"><img src="source/images/gpluse.png" title="Google+"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="available">
                <h6>SÁCH CÙNG THỂ LOẠI</h6>
            </div>
            <ul id="flexiselDemo1">
                @foreach($type_product as $book)
                <li>
                    <div class="grid-flex">
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="images/{{ $book['image'] }}" class="img-responsive" alt="">
                                <div>
                                    <a href="book/{{ $book['slug'] }}" class="btn">Chi Tiết</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="author/{{ $book['id_author'] }}">{{ $book->author->name }}</a>
                    <p>{{ number_format($book['price']) }} VNĐ</p>
                </li>
                @endforeach
            </ul>
            <script type="text/javascript">
				$(window).load(function () {
					$("#flexiselDemo1").flexisel({
						visibleItems: 5,
						animationSpeed: 1000,
						autoPlay: true,
						autoPlaySpeed: 3000,
						pauseOnHover: true,
						enableResponsiveBreakpoints: true,
						responsiveBreakpoints: {
							portrait: {
								changePoint: 480,
								visibleItems: 1
							},
							landscape: {
								changePoint: 640,
								visibleItems: 2
							},
							tablet: {
								changePoint: 768,
								visibleItems: 3
							}
						}
					});
				});
            </script>
            <script type="text/javascript" src="source/js/jquery.flexisel.js"></script>
        </div>
        @include('sidebar')
        <div class="clearfix"></div>
    </div>
@endsection