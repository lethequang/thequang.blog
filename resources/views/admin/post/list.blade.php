@extends('admin.master')
@section('content')
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            @if(session()->has('message'))
                <div class="alert alert-success">
                    {{ session()->get('message') }}
                </div>
            @endif
            <div class="box-header with-border">
                <h3 class="box-title">Danh Sách Sản Phẩm</h3>
            </div>
            <div class="box-body">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <div>
                            <a class="btn-top pull-right" href="{{ route('product-add') }}"> <span
                                        class="glyphicon glyphicon-plus"></span> &nbsp Thêm sách mới</a>
                        </div>
                        <thead>
                        <tr class="row-name">
                            <th width="5%">STT</th>
                            <th width="15%">Tiêu đề sách</th>
                            <th width="15% ">Tác giả</th>
                            <th width="15%">Thể loại</th>
                            <th width="10%">Giá</th>
                            <th width="5%">Năm</th>
                            <th width="15%">Hình ảnh</th>
                            <th width="10%">Số lượng</th>
                            <th width="15%">Tùy chọn</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($posts as $post)
                            <tr class="row-content">
                                <td>{{ $post->id }}</td>
                                <td>{{ $post->title }}</td>
                                <td>{{ $post->author->name }}</td>
                                <td>{{ $post->category->name }}</td>
                                <td>{{ $post->price }}</td>
                                <td>{{ $post->year }}</td>
                                <td>
                                    <img src="{{ asset("images/$post->image") }}" style="max-width: 32px;"/>
                                </td>
                                <td>{{ $post->quantity }}</td>
                                <td>
                                    <!-- Single button -->
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Thao tác <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="/admin/post/{{ $post->id }}" aria-label="Settings">Xem</a>
                                            </li>
                                            <li><a href="{{ route('product-edit',$post->id) }}" aria-label="Settings">Sửa</a>
                                            </li>
                                            <li role="separator" class="divider"></li>
                                            <li>
                                                <a href="{{ route('product-delete',$post->id) }}"
                                                        onclick="return confirm('Xác nhận xóa sách này');">Xóa</a>
                                            </li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="box-footer">
                    <div class="text-center">{{ $posts->links() }}</div>
                </div>
            </div>
        </div>
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
    @endsection
