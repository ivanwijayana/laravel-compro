<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>{{ $setting->title }}</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{ url('assets') }}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="{{ url('assets') }}/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="{{ url('assets') }}/vendor/aos/aos.css" rel="stylesheet">
    <link href="{{ url('assets') }}/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="{{ url('assets') }}/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="{{ url('assets') }}/css/main.css" rel="stylesheet">
</head>

<body>

    <header id="header" class="header d-flex align-items-center">

        <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
            <a href="/" class="logo d-flex align-items-center">
                <!-- Uncomment the line below if you also wish to use an image logo -->
                <!-- <img src="assets/img/logo.png" alt=""> -->
                <h1>{{ $setting->title }}<span>.</span></h1>
            </a>
            <nav id="navbar" class="navbar">
                <ul>
                    <li><a href="/">Beranda</a></li>
                    <li><a href="/about">Tentang Kami</a></li>
                    <li><a href="/projects">Projek</a></li>
                    <li><a href="/blogs">Blog</a></li>
                    <li><a href="/login">Login</a></li>
                </ul>
            </nav><!-- .navbar -->

            <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
            <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

        </div>
    </header><!-- End Header -->
    <!-- End Header -->

    @yield('content')

    <!-- ======= Footer ======= -->
    <footer id="footer" class="footer">

        <div class="container">
            <div class="row gy-4">
                <div class="col-lg-4 col-md-12 footer-info">
                    <a href="/" class="logo d-flex align-items-center">
                        <span>{{ $setting->title }}</span>
                    </a>
                    <div class="social-links d-flex mt-4">
                        @foreach($links as $row)
                            
                            <a href="{{ $row->link }}" target="_blank">
                                <img src="{{ url('file/'.$row->image) }}" class="w-100">
                            </a>
                        @endforeach
                        
                    </div>
                </div>

                <div class="col-lg-4 col-6 footer-links">
                    <h4>Menu</h4>
                    <ul>
                        <li><a href="/">Beranda</a></li>
                        <li><a href="/about">Tentang Kami</a></li>
                        <li><a href="/projects">Projek</a></li>
                        <li><a href="/blogs">Blog</a></li>
                    </ul>
                </div>

                <div class="col-lg-4 col-md-12 footer-contact text-center text-md-start">
                    <h4>Contact Us</h4>
                    {!! $footer->contact_detail !!}

                </div>

            </div>
        </div>

        <div class="container mt-4">
            <div class="copyright">
                &copy; Copyright <strong><span>{{ $setting->title }}</span></strong>. All Rights Reserved
            </div>
        </div>

    </footer><!-- End Footer -->
    <!-- End Footer -->

    <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <div id="preloader"></div>

    <!-- Vendor JS Files -->
    <script src="{{ url('assets') }}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="{{ url('assets') }}/vendor/aos/aos.js"></script>
    <script src="{{ url('assets') }}/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="{{ url('assets') }}/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="{{ url('assets') }}/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="{{ url('assets') }}/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="{{ url('assets') }}/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="{{ url('assets') }}/js/main.js"></script>

</body>

</html>
