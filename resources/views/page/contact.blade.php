@extends('master')
@section('content')
    <div class="content">
        <!---->
        <div class="contact">
            <div class="col-md-8">
                <form action="{{ route('contact') }}" class="form-horizontal" method="post">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Để Lại Tin Nhắn</h3>
                        </div>
                        <div class="panel-body">
                            @if(session()->has('message'))
                                <div class="alert alert-success text-center">
                                    {{ session()->get('message') }}
                                </div>
                            @endif
                            <div class="form-group">
                                <label id="name" class="control-label col-xs-3">Họ Tên*</label>
                                <div class="col-xs-8">
                                    <input id="name" type="text" name="name" class="input-lg form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="email" class="control-label col-xs-3">Email*</label>
                                <div class="col-xs-8">
                                    <input id="email" type="email" name="email" class="input-lg form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-xs-3">Nội Dung*</label>
                                <div class="col-xs-8">
                                    <textarea name="message" rows="10" class="input-lg form-control"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-offset-3 col-xs-3">
                                    <button type="submit" class="btn btn-success btn-lg"> Gửi
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-4 contact-bottom">
                <h3>Thông Tin Liên Hệ</h3>
                <!-- <ul class="social ">
                    <li><span>175/74 Hà Tôn Quyền - P4 - Q11 - Tp.HCM </span></li>
                    <li><span>+ 84 167 442 0257</span></li>
                    <li><a href="mailto:lethequang565@gmail.com">lethequang565@gmail.com</a></li>
                </ul> -->

                <div class="map">
                    <iframe src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ8-cENY0udTERzeaOkdFFA6s&key=AIzaSyD_88tY9OtN0LOUHBw8H6ewlY51auxUa4o" allowfullscreen></iframe>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>

    </div>
    <!---->
    <!---->
@endsection