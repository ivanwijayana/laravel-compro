@extends('app')

@section('content')

<!-- ======= Hero Section ======= -->
<section id="hero" class="hero">
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">

            @foreach($hero as $key => $row)
            
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="{{ $key }}" class="active"
                    aria-current="true" aria-label="{{ $row->title }}"></button>
            
            @endforeach

        </div>
        <div class="carousel-inner">

            @foreach($hero as $key => $row)
                
                <div class="carousel-item @if($key==0) active @endif">
                    <img src="{{ url('file/'.$row->image) }}" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-flex flex-column justify-content-center h-100">
                        <h2>{{ $row->title }}</h2>
                        <p>{{ $row->subtitle }}</p>
                    </div>
                </div>

            @endforeach
            
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</section>
<!-- End Hero Section -->

<main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
        <div class="container" data-aos="fade-up">

            <div class="row gy-4">
                <div class="col-lg-6">

                    <img src="{{ url('file/'.$alasan->image) }}" class="img-fluid rounded-4 mb-4" alt="">
                </div>
                <div class="col-lg-6">
                    <div class="content ps-0 ps-lg-5">
                        <h3>{{ $alasan->title }}</h3>
                        <p>
                            {{ $alasan->description }}
                        </p>
                    </div>
                </div>
            </div>

        </div>
    </section><!-- End About Us Section -->

    <!-- ======= Our Services Section ======= -->
    <section id="services" class="services sections-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-header">
                <h2>Layanan</h2>
            </div>

            <div class="row gy-4" data-aos="fade-up" data-aos-delay="100">

                @foreach($layanan as $row)
                    
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item position-relative">
                            <div class="icon">
                                <img src="{{ url('file/'.$row->image) }}" alt="">
                            </div>
                            <h3>{{ $row->title }}</h3>
                            <p>{{ $row->description }}</p>
                        </div>
                    </div><!-- End Service Item -->

                @endforeach

            </div>

        </div>
    </section><!-- End Our Services Section -->

    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients">
        <div class="container" data-aos="zoom-out">

            <div class="section-header">
                <h2>Klien</h2>
            </div>

            <div class="clients-slider swiper">
                <div class="swiper-wrapper align-items-center">

                    @foreach($client as $row)
                        
                        <div class="swiper-slide">
                            <img src="{{ url('file/'.$row->image) }}" class="img-fluid" alt="">
                        </div>

                    @endforeach

                </div>
            </div>

        </div>
    </section><!-- End Clients Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio sections-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-header">
                <h2>Galeri</h2>
            </div>

            <div class="portfolio-isotope" data-portfolio-filter="*" data-portfolio-layout="masonry"
                data-portfolio-sort="original-order" data-aos="fade-up" data-aos-delay="100">

                <div class="row gy-4 portfolio-container">

                    @foreach($gallery as $row)
                        
                        <div class="col-xl-4 col-md-6 portfolio-item">
                            <div class="portfolio-wrap">
                                <a href="{{ url('file/'.$row->image) }}" data-gallery="portfolio-gallery-app" class="glightbox">
                                    <img src="{{ url('file/'.$row->image) }}" class="w-100" alt="">
                                </a>
                                <div class="portfolio-info">
                                    <h4>{{ $row->title }}</h4>
                                </div>
                            </div>
                        </div><!-- End Portfolio Item -->

                    @endforeach

                </div><!-- End Portfolio Container -->

            </div>

        </div>
    </section><!-- End Portfolio Section -->

    <section>
        <div class="container" data-aos="fade-up">
            <iframe width="100%" height="300px" src="{{ $map->link }}" frameborder="0"></iframe>
        </div>
    </section>

</main><!-- End #main -->

@endsection