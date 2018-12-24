@extends('master')
@section('content')
    <div class="content">

        <div class="col-md-9">
            <div class="content-bottom">
                <h4 class="pull-right">Tìm thấy {{ count($type_product) }} cuốn sách của thể loại này</h4>
                <h3>{{ $category->name }}</h3>
                {{--<div class="row display-flex">
                    @foreach($type_product as $book)
                        <div class="col-xs-12 col-md-4">
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="images/{{ $book['image'] }}" class="img-responsive" alt="">
                                    <div>
                                        <a href="book/{{ $book['slug'] }}" class="btn">Chi Tiết</a>
                                    </div>
                                </div>
                                <p><a href="">{{ $book['title'] }}</a></p>
                                <div class="pi-price">{{ number_format($book['price']) }}</div>
                                <p>VNĐ</p>
                                <a href="{{ route('addtocart',$book['id']) }}" class="btn add2cart">Thêm Vào Giỏ Hàng</a>
                                <div class="sticker sticker-new"></div>
                            </div>
                        </div>
                    @endforeach
                </div>--}}
                <div class="row display-flex" style="padding-top: 30px;">
                    @foreach($type_product as $book)
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
                                        {{ number_format($book['price']) }} VNĐ
                                    </div>
                                    <a class="cart-an" href="{{ route('addtocart',$book['id']) }}">Chọn mua</a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <ul class="start">
                {{ $type_product->links() }}
            </ul>
        </div>
        @include('sidebar')
        <div class="clearfix"></div>
    </div>
    <!---->
@endsection