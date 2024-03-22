@extends('app')

@section('content')
    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <div class="breadcrumbs">
            <div class="page-header d-flex align-items-center"
                style="background-image: url('{{ url('file/' . $setting->image_header) }}');">
                <div class="container position-relative">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-6 text-center">
                            <h2>Blog Kami</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Breadcrumbs -->

        <!-- ======= Portfolio Section ======= -->
        <section id="portfolio" class="portfolio sections-bg">
            <div class="container" data-aos="fade-up">

                <div class="portfolio-isotope" data-portfolio-filter="*" data-portfolio-layout="masonry"
                    data-portfolio-sort="original-order" data-aos="fade-up" data-aos-delay="100">

                    <div class="row gy-4 portfolio-container">

                        @foreach($blogs as $row)
                            
                            <div class="col-xl-4 col-md-6 portfolio-item {{ strtolower(str_replace(' ', '-', $row->category_name)) }}">
                                <div class="portfolio-wrap">
                                    <a href="{{ url('file/'.$row->image) }}" data-gallery="portfolio-gallery-app" class="glightbox">
                                        <img src="{{ url('file/'.$row->image) }}" class="w-100" alt="">
                                    </a>
                                    <div class="portfolio-info">
                                        <span class="badge bg-info mb-3">{{ $row->category_name }}</span>
                                        <h4>{{ $row->title }}</h4>
                                        <a href="/blog/read/{{ $row->id }}" class="btn btn-primary d-block btn-block">Baca Sekarang</a>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->

                        @endforeach

                    </div><!-- End Portfolio Container -->

                </div>

            </div>
        </section><!-- End Portfolio Section -->

    </main>
@endsection
