@extends('layouts.app')

@section('custom-style')
<style>
    [data-trix-button-group="file-tools"] {
        display: none!important;
    }
</style>
@endsection

@section('content')
<div class="container-fluid">
    @if(Session::has('message'))
    <div class="alert {{ Session::get('type') }} alert-dismissible fade show" role="alert">
    <strong>{{ Session::get('message') }}</strong>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    @endif

    <div class="row">
        <form action="{{ route('setting.update', $data->id) }}" method="POST" enctype="multipart/form-data">
            @CSRF
            @method('PUT')
            <div class="col-12">
                <div class="card w-100 bg-white">
                    <div class="bg-white card-header d-flex flex-row justify-content-between p-4">
                        <div class="title d-flex flex-column p-1">
                            <span style="font-weight: bold; font-size: 16px;">Setting Website Management</span>
                            <small>Menu manajemen konten di setting website.</small>
                        </div>
                        <button type="submit" class="button btn __bg-primary px-3 py-2 d-flex align-items-center" style="font-size: 14px;"><i data-feather="save" class="me-2"></i> Simpan Perubahan</button>
                    </div>
                    <div class="bg-white card-body p-0">
                        <div class="d-flex flex-row">
                            <div class="w-25 p-3 d-flex flex-column">
                                <img src="{{ asset('/file/'.$data->image_header) }}" alt="{{$data->image_header}}" class="card-image" style="width: 100%; height:100%; object-fit: cover; border-radius: 8px;">
                            </div>
                            <div class="form-group w-75 p-3">
                                <label class="mb-2">Image Header</label>
                                <input id="image" value="{{ $data->image_header }}" type="file" name="image" class="form-control">
                                <small>
                                    <code>This is the current image. Upload a new image if you want to replace this.</code>
                                </small>
                            </div>
                        </div>
                        <div class="form-group w-100 bg-light p-3">
                            <label class="mb-2">Title</label>
                            <input value="{{ $data->title }}" type="text" name="title" class="form-control">
                        </div>
                    </div>
                    <div class="bg-white card-footer"></div>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection
