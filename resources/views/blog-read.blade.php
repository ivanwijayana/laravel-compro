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

        <section id="blog" class="blog">
            <div class="container" data-aos="fade-up">

                <div class="row g-5">

                    <div class="col-lg-12">

                        <article class="blog-details">

                            <div class="post-img" style="background-image: url('{{ url('file/'.$blog->image) }}')">
                            </div>

                            <h2 class="title">
                                {{ $blog->title }}
                            </h2>

                            <div class="meta-top">
                                <ul>
                                    <li class="d-flex align-items-center">
                                        <span class="badge bg-info">
                                            <i class="bi bi-tags"></i>
                                            {{ $blog->category_name }}
                                        </span>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <span class="badge bg-warning">
                                            <i class="bi bi-calendar"></i>
                                            {{ \Carbon\Carbon::parse($blog->created_at)->format('d M Y') }}
                                        </span>
                                    </li>
                                </ul>
                            </div><!-- End meta top -->

                            <div class="content">
                                <p>
                                    {!! $blog->description !!}
                                </p>                                

                            </div><!-- End post content -->
                            
                        </article><!-- End blog post -->

                    </div>
                    
                </div>

            </div>
        </section>

    </main>
@endsection
