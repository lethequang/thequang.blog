<!DOCTYPE html>
<html>
<head>
    <title>Website bán sách trực tuyến - TheQuang.Blog</title>
    <base href="{{asset('')}}">
    <link href="source/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="source/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//theme-style-->
    <link rel="shortcut icon" type="image/png" href="source/images/favicon.ico"/>
    <meta HTTP-EQUIV="Content-Language" CONTENT="vi">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="bookstore,thequang.blog"/>
    <!--fonts-->
    <link href='http://fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
    <!--//fonts-->
    <!-- start menu -->
    <link href="source/css/megamenu.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="assets/sweetalert2/sweetalert2.min.css">


</head>
<body>
<!--header-->
<div class="container">
    @include('header')
    <div class="page">
        <h6><a href="#">TheQuang.Blog</a><b>|</b><span class="for">TheQuang Bookstore</span></h6>
    </div>
    @yield('content')
    @include('footer')
</div>
<script src="source/js/jquery.min.js"></script>
<script src="source/js/bootstrap.min.js"></script>
<!--//slider-script-->
<script type="text/javascript" src="source/js/move-top.js"></script>
<script type="text/javascript" src="source/js/easing.js"></script>
<script type="text/javascript" src="source/js/megamenu.js"></script>

<script src="assets/sweetalert2/sweetalert2.min.js"></script>

@yield('footer_js')


<!---->
<script type="application/x-javascript"> addEventListener("load", function () {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<script type="text/javascript">
	jQuery(document).ready(function ($) {
		$(".scroll").click(function (event) {
			event.preventDefault();
			$('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
		});
	});
</script>
<script>
	$(document).ready(function () {
		$(".megamenu").megamenu();
	});
</script>
<script>
	$(document).ready(function ($) {
		{{--$('.delheader').click(function () {--}}
			{{--var id = $(this).attr('value');--}}
			{{--var route = "{{ route('del-item-cart',':id_pro') }}";--}}
			{{--console.log(route)--}}
			{{--route = route.replace(':id_pro', id);--}}
			{{--var soluong = $(this).attr("soluong");--}}
			{{--var dongia = $('#dongia' + id).attr('value')--}}
			{{--var tongdongia = $('.rate').attr('value');--}}

			{{--$.ajax({--}}
				{{--url: route,--}}
				{{--type: 'get',--}}
				{{--data: {id: id},--}}
				{{--success: function () {--}}
					{{--var tongsl = $('#tongsl').html();--}}
					{{--$("#tongsl").html(parseInt(tongsl) - parseInt(soluong));--}}
					{{--$('.rate').html(parseInt(tongdongia) - (parseInt(soluong) * parseInt(dongia)) + ' VNĐ ');--}}
					{{--$('.rate').attr('value', parseInt(tongdongia) - (parseInt(soluong) * parseInt(dongia)));--}}
					{{--$('#hidecart' + id).hide();--}}
				{{--},--}}
				{{--error: function (data) {--}}
					{{--console.log(data)--}}
				{{--}--}}
			{{--})--}}
		{{--})--}}

	});

</script>
</body>
</html>