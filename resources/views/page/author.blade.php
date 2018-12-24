@extends('master')
@section('content')
    <div class="content">

        <div class="col-md-9">
            <div class="content-bottom">
                <h4 class="pull-right">Tìm thấy {{ count($author_product) }} cuốn sách của tác giả này</h4>
                <h3>{{ $author['name'] }}</h3>
                <div class="row display-flex" style="padding-top: 30px;">
                    @foreach($author_product as $book)
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
                {{ $author_product->links() }}
            </ul>
        </div>
        @include('sidebar')
        <div class="clearfix"></div>
    </div>
    <!---->
@endsection