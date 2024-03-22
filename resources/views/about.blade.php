@extends('app')

@section('content')
    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <div class="breadcrumbs">
            <div class="page-header d-flex align-items-center" style="background-image: url('{{ url('file/'.$setting->image_header) }}');">
                <div class="container position-relative">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-6 text-center">
                            <h2>Tentang Kami</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Breadcrumbs -->

        <!-- ======= About Us Section ======= -->
        <section id="about" class="about">
            <div class="container" data-aos="fade-up">

                <div class="row gy-4">
                    <div class="col-lg-6">

                        <img src="{{ url('file/' . $about->image) }}" class="img-fluid rounded-4 mb-4" alt="">
                    </div>
                    <div class="col-lg-6">
                        <div class="content ps-0 ps-lg-5">
                            <h3>Tentang Kami</h3>
                            <p>
                                {!! $about->description !!}
                            </p>
                        </div>
                    </div>
                </div>

                <div class="row gy-4">
                    <div class="col-md-6">
                        <div class="content ps-0 ps-lg-5">
                            <h3>Visi</h3>
                            <p>
                                {!! $about->visi !!}
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="content ps-0 ps-lg-5">
                            <h3>Misi</h3>
                            <p>
                                {!! $about->misi !!}
                            </p>
                        </div>
                    </div>
                </div>

            </div>
        </section><!-- End About Us Section -->
    </main>
@endsection
