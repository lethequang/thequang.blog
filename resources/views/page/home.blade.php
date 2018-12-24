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
                {{ $product->links() }}
            </ul>
        </div>

        @include('sidebar')
        <div class="clearfix"></div>
    </div>
    <!---->
@endsection