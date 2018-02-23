<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="RezuMate is a personal portfolio HTML template with clean and elegant design">
    <meta name="keywords" content="bootstrap,clean,cv,minimal,onepage particle,personal,portfolio,resume,vcard ">
    <title>RezueMSU</title>
    <!--css styles-->
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="/static/css/lightbox.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link rel="stylesheet" href="/static/css/owl.carousel.css">
    <link rel="stylesheet" href="/static/css/owl.theme.css">
    <link rel="stylesheet" href="/static/css/slicknav.min.css">
    <link rel="stylesheet" href="/static/css/reset.css">
    <link rel="stylesheet" href="/static/css/style.css">
    <link rel="stylesheet" href="/static/css/responsive.css">
    <link rel="stylesheet" href="/static/css/animate.min.css">
    <!---title logo icon-->
    <link rel="shortcut icon" href="/static/images/favicon.ico" />
    <script type="text/javascript" src="/static/js/respond.js"></script>
</head>

<body>
    <!-- Start Preloader -->
    <div class="preloader">
        <div class="preloader-img"></div>
    </div>
    <!-- End Preloader -->

    <!-- Start scroll-top button -->
    <div id="scroll-top-area">
        <a href="#slider-portion"><i class="fa fa-angle-double-up" aria-hidden="true"></i></a>
    </div>
    <!-- End scroll-top button -->


    <!--Start Header-->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <a href="index.html" class="logo">
                        <img src="/static/images/logo.png" alt="logo">
                    </a>
                </div>
                <div class="col-md-9">
                    <nav class="menu single-page-nav" id="menu">
                        <ul>
                            <li><a class="home" href="#welcome-area">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#services">Services</a></li>
                            <li><a href="#portfolio">Work</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!--End Header-->

    <!--Start Welcome Section-->
    <section class="welcome-area image-bg" id="welcome-area" data-stellar-background-ratio="0.6" data-stellar-vertical-offset="2500">
        <div class="welcome-text">
            <h6>Я, ${context.staff.firstname} ${context.staff.middlename} ${context.staff.lastname}</h6>
            <div class="element"></div>
        </div>
    </section>
    <!--End Welcome Section-->

    <!--Start About Section-->
    <section class="about padding-style1" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-12 col-sm-12">
                    <div class="about-img">
                        <img src="${context.staff.image}" alt="" class="about-img img-responsive">
                        <div class="about-img-overlay">
                            <div class="social-icons">
                                <#list context.staff.contacts as contact>
                                    <a href="${contact.value}"><i class="${contact.icon}" aria-hidden="true"></i></a>
                                </#list>
                                </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="about-text">
                        <h4 class="section-title">
                            ОБО МНЕ
                        </h4>
                        <p>
                            ${context.staff.about}
                        </p>
                        <!--<a href="#" class="btn-style1">Download my CV</a>-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End About Section-->

    <!--Start Skills Section-->
    <section class="skills" id="skills" data-stellar-background-ratio="0.6" data-stellar-vertical-offset="1700">
        <div class="skill-container padding-style1">
            <div class="skill-overlay padding-style1"></div>
            <div class="skills-content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="skill-heading-area">
                                <h6>Мои способности</h6>
                                <h4>I provide the Best Quality</h4>
                                <p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Pellentesque in ipsum id orci porta dapibus. Nulla porttitor accumsan tincidunt</p>
                                <a href="#portfolio" class="btn-style2 skill-btn">SEE MY WORKS</a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="progressbar-area">
                                <p>Assembler</p>
                                <div class="progress">
                                    <div class="progress-bar prog-80" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:0%;">

                                        <span>120%</span>
                                    </div>
                                </div>
                                <p>Kotlin</p>
                                <div class="progress">
                                    <div class="progress-bar prog-90" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">

                                        <span>90%</span>
                                    </div>
                                </div>
                                <p>PLUGIN DEVELOPMENT</p>
                                <div class="progress">
                                    <div class="progress-bar prog-86" role="progressbar" aria-valuenow="86" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">

                                        <span>86%</span>
                                    </div>
                                </div>
                                <p>EMAIL MARKETING</p>
                                <div class="progress">
                                    <div class="progress-bar prog-94" role="progressbar" aria-valuenow="94" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">

                                        <span>94%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Skills Section-->

    <!--Start Services Section-->
    <section class="services padding-style1" id="services">
        <div class="services-header">
            <h4 class="section-title">SERVICES I OFFER</h4>
        </div>
        <div class="services-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="service-item animation" data-animation="fadeInLeft">
                            <span><i class="fa fa-leaf" aria-hidden="true"></i></span>
                            <p class="content-title">THEME DEVELOPMENT</p>
                            <p class="content-text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium sit voluptatem accusantium</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="service-item animation" data-animation="pulse">
                            <span><i class="fa fa-paint-brush" aria-hidden="true"></i></span>
                            <p class="content-title">GRAPHICS DESIGN</p>
                            <p class="content-text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium sit voluptatem accusantium</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="service-item animation" data-animation="fadeInRight">
                            <span><i class="fa fa-gears" aria-hidden="true"></i></span>
                            <p class="content-title">PLUGIN DEVELOPMENT</p>
                            <p class="content-text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium sit voluptatem accusantium</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--End Services Section-->

    <!--Start Portfolio Section-->
    <section class="portfolio padding-style1" id="portfolio">
        <div class="portfolio-header">
            <h4 class="section-title">MY WORKS</h4>
        </div>
        <div class="portfolio-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="portfolio-content-head">
                            <ul class="controls">
                                <li class="filter" data-filter="all">ALL</li>
                                <li class="filter" data-filter=".design">DESIGN</li>
                                <li class="filter" data-filter=".development">DEVELOPMENT</li>
                                <li class="filter" data-filter=".plugin">PLUGIN</li>
                                <li class="filter" data-filter=".photography">PHOTOGRAPHY</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs">
                        <div class="portfolio-content-items">
                            <div class="row">
                                <div class="col-md-3 col-sm-4 col-xs-12 mix design">
                                    <div class="portfolio-item">
                                        <div class="portfolio-img">
                                            <img src="/static/images/portfolio/img1.jpg" alt="portfolio" class="img-responsive">
                                        </div>
                                        <div class="portfolio-overlay">
                                            <p class="category">DESIGN</p>
                                            <a href="#">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-link" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                            <a href="/static/images/portfolio/img1.jpg" data-lightbox="image-1">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-search" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-12 mix plugin">
                                    <div class="portfolio-item">
                                        <div class="portfolio-img">
                                            <img src="/static/images/portfolio/img2.jpg" alt="portfolio" class="img-responsive">
                                        </div>
                                        <div class="portfolio-overlay">
                                            <p class="category">PLUGIN</p>
                                            <a href="#">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-link" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                            <a href="/static/images/portfolio/img2.jpg" data-lightbox="image-2">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-search" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-12 mix photography">
                                    <div class="portfolio-item">
                                        <div class="portfolio-img">
                                            <img src="/static/images/portfolio/img3.jpg" alt="portfolio" class="img-responsive">
                                        </div>
                                        <div class="portfolio-overlay">
                                            <p class="category">PHOTOGRAPHY</p>
                                            <a href="#">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-link" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                            <a href="/static/images/portfolio/img3.jpg" data-lightbox="image-3">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-search" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-12 mix plugin">
                                    <div class="portfolio-item">
                                        <div class="portfolio-img">
                                            <img src="/static/images/portfolio/img4.jpg" alt="portfolio" class="img-responsive">
                                        </div>
                                        <div class="portfolio-overlay">
                                            <p class="category">PLUGIN</p>
                                            <a href="#">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-link" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                            <a href="/static/images/portfolio/img4.jpg" data-lightbox="image-4">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-search" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-12 mix design">
                                    <div class="portfolio-item">
                                        <div class="portfolio-img">
                                            <img src="/static/images/portfolio/img5.jpg" alt="portfolio" class="img-responsive">
                                        </div>
                                        <div class="portfolio-overlay">
                                            <p class="category">DESIGN</p>
                                            <a href="#">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-link" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                            <a href="/static/images/portfolio/img5.jpg" data-lightbox="image-5">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-search" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-12 mix development">
                                    <div class="portfolio-item">
                                        <div class="portfolio-img">
                                            <img src="/static/images/portfolio/img6.jpg" alt="portfolio" class="img-responsive">
                                        </div>
                                        <div class="portfolio-overlay">
                                            <p class="category">DEVELOPMENT</p>
                                            <a href="#">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-link" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                            <a href="/static/images/portfolio/img6.jpg" data-lightbox="image-6">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-search" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-12 mix development">
                                    <div class="portfolio-item">
                                        <div class="portfolio-img">
                                            <img src="/static/images/portfolio/img7.jpg" alt="portfolio" class="img-responsive">
                                        </div>
                                        <div class="portfolio-overlay">
                                            <p class="category">DEVELOPMENT</p>
                                            <a href="#">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-link" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                            <a href="/static/images/portfolio/img7.jpg" data-lightbox="image-7">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-search" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-12 mix photography">
                                    <div class="portfolio-item">
                                        <div class="portfolio-img">
                                            <img src="/static/images/portfolio/img8.jpg" alt="portfolio" class="img-responsive">
                                        </div>
                                        <div class="portfolio-overlay">
                                            <p class="category">PHOTOGRAPHY</p>
                                            <a href="#">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-link" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                            <a href="/static/images/portfolio/img8.jpg" data-lightbox="image-8">
                                                <div class="magnify-icon">
                                                    <p><span><i class="fa fa-search" aria-hidden="true"></i></span></p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Portfolio Section-->

    <!--Start Experience Section-->
    <section class="experience padding-style1" id="experience">
        <div class="experience-header">
            <h4 class="section-title">MY EXPERIENCE</h4>
        </div>
        <div class="container">
            <div class="experience-container">
                <div class="row">
                    <div class="col-md-6 left-item">
                        <div class="experience-item">
                            <div class="experience-circle"></div>
                            <div class="experience-content">
                                <h6>GRAPHICS DESIGNER</h6>
                                <p class="range">2009-2011</p>
                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 right-item experience-top-margin">
                        <div class="experience-item">
                            <div class="experience-circle"></div>
                            <div class="experience-content">
                                <h6>UX/UI DESIGNER</h6>
                                <p class="range">2011-2012</p>
                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 left-item experience-top-margin">
                        <div class="experience-item">
                            <div class="experience-circle"></div>
                            <div class="experience-content">
                                <h6>JUNIOR WEB DEVELOPER</h6>
                                <p class="range">2012-2015</p>
                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 right-item last-item experience-top-margin">
                        <div class="experience-item">
                            <div class="experience-circle"></div>
                            <div class="experience-content">
                                <h6>SENIOR WEB DEVELPER</h6>
                                <p class="range">2015-present</p>
                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--End Experience Section-->

    <!--Start Client Testimonial Section Area-->
    <section class="client-testimonial" id="client-testimonial">
        <div class="client-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <!--Start testimonial title area-->
                        <div class="testimonial-title text-center">
                            <h4 class="section-title">WHAT OUR CLIENTS SAY</h4>
                        </div>
                        <!--End testimonial title area-->
                    </div>
                </div>
                <div class="row">
                    <div id="owl-demo-testimonial" class="owl-carousel owl-theme">
                        <!--Start Client Single design area-->
                        <div class="item">
                            <div class="client-img">
                                <img src="/static/images/client/img1.jpg" alt="client">
                            </div>
                            <div class="client-identity">
                                <p class="name">OLIVER GOMEZ</p>
                                <p class="profession">CEO of InkaSoft</p>
                            </div>
                            <div class="testimonial-content">
                                <div class="quote-text">
                                    <p><span>
                       <i class="fa fa-quote-left" aria-hidden="true"></i></span> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,totam rem aperiam, eaque ipsa quae ab illo inventore veritatis omnis.<span>
                        <i class="fa fa-quote-right" aria-hidden="true"></i></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--End Client Single design area-->
                        <!--Start Client Single design area-->
                        <div class="item">
                            <div class="client-img">
                                <img src="/static/images/client/img2.jpg" alt="client">
                            </div>
                            <div class="client-identity">
                                <p class="name">RITA WATSON</p>
                                <p class="profession">Graphics Designer</p>
                            </div>
                            <div class="testimonial-content">
                                <div class="quote-text">
                                    <p><span>
                       <i class="fa fa-quote-left" aria-hidden="true"></i></span> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,totam rem aperiam, eaque ipsa quae ab illo inventore veritatis omnis.<span>
                        <i class="fa fa-quote-right" aria-hidden="true"></i></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--End Client Single design area-->
                        <!--Start Client Single design area-->
                        <div class="item">
                            <div class="client-img">
                                <img src="/static/images/client/img3.jpg" alt="client">
                            </div>
                            <div class="client-identity">
                                <p class="name">DAN BROWN</p>
                                <p class="profession">CEO of MayaSoft</p>
                            </div>
                            <div class="testimonial-content">
                                <div class="quote-text">
                                    <p><span>
                       <i class="fa fa-quote-left" aria-hidden="true"></i></span> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,totam rem aperiam, eaque ipsa quae ab illo inventore veritatis omnis.<span>
                       <i class="fa fa-quote-right" aria-hidden="true"></i></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--End Client Single design area-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Client Testimonial Section Area-->

    <!--Start Blog-Section-->
    <section class="blog padding-style1" id="blog">
        <div class="blog-header">
            <h4 class="section-title">WATCH MY BLOG</h4>
        </div>
        <div class="blog-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <div class="blog-single-item animation" data-animation="fadeInLeft">
                            <div class="blog-img-area">
                                <img src="/static/images/blog/blog-img1.jpg" alt="blog" class="img-responsive">
                            </div>
                            <div class="blog-text-area">
                                <div class="blog-description">
                                    <div class="date-area primary-bg">
                                        <h4>10</h4>
                                        <p>February</p>
                                        <p>2017</p>
                                    </div>
                                    <div class="blog-text">
                                        <h6>Sed ut perspiciatis unde omnis</h6>
                                        <p><span><i class="fa fa-user" aria-hidden="true"></i></span>posted by <a href="#">admin</a></p>
                                        <p>Sed ut perspiciatis voluptatem accusantium unde omnis iste natus error sit voluptatem accusantium omnis iste natus error sit voluptatem doloremque laudantium ...</p>
                                        <a href="single-blog.html" class="btn-style3 read-btn">READ MORE</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="blog-single-item animation" data-animation="pulse">
                            <div class="blog-img-area">
                                <img src="/static/images/blog/blog-img2.jpg" alt="blog" class="img-responsive">
                            </div>
                            <div class="blog-text-area">
                                <div class="blog-description">
                                    <div class="date-area primary-bg">
                                        <h4>10</h4>
                                        <p>February</p>
                                        <p>2017</p>
                                    </div>
                                    <div class="blog-text">
                                        <h6>Sed ut perspiciatis unde omnis</h6>
                                        <p><span><i class="fa fa-user" aria-hidden="true"></i></span>posted by <a href="#">admin</a></p>
                                        <p>Sed ut perspiciatis voluptatem accusantium unde omnis iste natus error sit voluptatem accusantium omnis iste natus error sit voluptatem doloremque laudantium ...</p>
                                        <a href="single-blog.html" class="btn-style3 read-btn">READ MORE</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="blog-single-item animation" data-animation="fadeInRight">
                            <div class="blog-img-area">
                                <img src="/static/images/blog/blog-img3.jpg" alt="blog" class="img-responsive">
                            </div>
                            <div class="blog-text-area">
                                <div class="blog-description">
                                    <div class="date-area primary-bg">
                                        <h4>10</h4>
                                        <p>February</p>
                                        <p>2017</p>
                                    </div>
                                    <div class="blog-text">
                                        <h6>Sed ut perspiciatis unde omnis</h6>
                                        <p><span><i class="fa fa-user" aria-hidden="true"></i></span>posted by <a href="#">admin</a></p>
                                        <p>Sed ut perspiciatis voluptatem accusantium unde omnis iste natus error sit voluptatem accusantium omnis iste natus error sit voluptatem doloremque laudantium ...</p>
                                        <a href="single-blog.html" class="btn-style3 read-btn">READ MORE</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Blog-Section-->

    <!--Start Contact Section-->
    <section class="contact padding-style1" id="contact" data-stellar-background-ratio="0.6" data-stellar-vertical-offset="1500">
        <div class="contact-header">
            <h4 class="section-title">GET IN TOUCH</h4>
        </div>
        <div class="contact-content">
            <div class="container">
                <div class="row">

                    <div class="col-md-offset-2 col-md-8">

                        <div class="contact-details">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="contact-icon">
                                        <i class="fa fa-building" aria-hidden="true"></i>
                                    </div>
                                    <div class="contact-text">
                                        <p><span class="bold">Address</span></p>
                                        <p>101,Park street,London.</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="contact-icon">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                    </div>
                                    <div class="contact-text">
                                        <p><span class="bold">Phone:</span> 000-0000</p>
                                        <p><span class="bold">Mobile:</span> 00000000</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="contact-icon">
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                    </div>
                                    <div class="contact-text">
                                        <p><span class="bold">Email</span></p>
                                        <p>thembela@xyzw.com</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-offset-2 col-md-8">
                        <div class="col-md-12">
                            <div class="contact-form">
                                <form class="contact-form-area">
                                    <div class="col-md-6">
                                        <input type="text" placeholder="Name" id="name">
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" placeholder="Email" id="email">
                                    </div>
                                    <div class="col-md-12">
                                        <textarea placeholder="Type here" id="message"></textarea>
                                        <input type="submit" class="submit-btn btn-style2 clearfix" value="SUBMIT" id="contact-submit">
                                    </div>
                                </form>
                                <div class="result"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Contact Section-->

    <!--Start Footer-->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <p>Copyright © 2017 RezuMSU | All rights reserved</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--End Footer-->

    <!--javascript-->
    <script type="text/javascript" src="/static/js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="/static/js/particles.min.js"></script>
    <script type="text/javascript" src="/static/js/jquery.slicknav.min.js"></script>
    <script type="text/javascript" src="/static/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="/static/js/mixitup.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/js/typed.js"></script>
    <script type="text/javascript" src="/static/js/lightbox.js"></script>
    <script type="text/javascript" src="/static/js/particlesReset.js"></script>
    <script type="text/javascript" src="/static/js/jquery.waypoints.min.js"></script>
    <script type="text/javascript" src="/static/js/jquery.stellar.min.js"></script>
    <script type="text/javascript" src="/static/js/jquery.singlePageNav.min.js"></script>
    <script type="text/javascript" src="/static/js/main.js"></script>
</body>