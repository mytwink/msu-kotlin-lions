<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="RezuMate is a personal portfolio HTML template with clean and elegant design"/>
    <meta name="keywords" content="bootstrap,clean,cv,minimal,onepage particle,personal,portfolio,resume,vcard "/>
    <title>MSU Home</title>
    <!--css styles-->
    <link rel="stylesheet" href="/static/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="/static/css/lightbox.css"/>
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/>
    <link rel="stylesheet" href="/static/css/owl.carousel.css"/>
    <link rel="stylesheet" href="/static/css/owl.theme.css"/>
    <link rel="stylesheet" href="/static/css/slicknav.min.css"/>
    <link rel="stylesheet" href="/static/css/reset.css"/>
    <link rel="stylesheet" href="/static/css/style.css"/>
    <link rel="stylesheet" href="/static/css/responsive.css"/>
    <link rel="stylesheet" href="/static/css/animate.min.css"/>
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
                        <img src="/static/images/logo.png" alt="logo"/>
                    </a>
                </div>
            </div>
        </div>
    </header>
    <!--End Header-->

    <!--Start Welcome Section-->
    <section style="background: url(/static/images/main-img-bg.jpg); background-size: cover; background-position: 0 0;" class="welcome-area image-bg" id="welcome-area" data-stellar-background-ratio="0.6" data-stellar-vertical-offset="2500">
        <div class="welcome-text">
            <h6>Добро пожаловать на информационный портал о преподавателях МГУ ТФ</h6>
            <div class="element"></div>
            <a href="#client-testimonial" class="btn-style2 hire-btn">Отзывы студентов</a>
        </div>
    </section>
    <!--End Welcome Section-->

    <!--Start Services Section-->
    <section class="services padding-style1" id="services">
        <div class="services-header">
            <h4 class="section-title">Факультеты университета</h4>
        </div>
        <div class="services-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="service-item animation" data-animation="fadeInLeft">
                            <span><i class="fa fa-terminal" aria-hidden="true"></i></span>
                            <p class="content-title">Прикладная математика и информатика</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="service-item animation" data-animation="pulse">
                            <span><i class="fa fa-paint-brush" aria-hidden="true"></i></span>
                            <p class="content-title">Факультет психологии</p>
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
            <h4 class="section-title">Наши преподаватели</h4>
        </div>
        <div class="portfolio-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="portfolio-content-head">
                            <ul class="controls">
                                <li class="filter" data-filter="all">Все</li>
                                <li class="filter" data-filter=".design">Математики</li>
                                <li class="filter" data-filter=".development">Программисты</li>
                                <li class="filter" data-filter=".plugin">Гумунитарии</li>
                                <li class="filter" data-filter=".photography">Администрация</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs">
                        <div class="portfolio-content-items">
                            <div class="row">
                                <#list context.staff as staf>
                                    <div class="col-md-3 col-sm-4 col-xs-12 mix plugin">
                                        <div class="portfolio-item">
                                            <div class="portfolio-img">
                                                <img src="${staf.image}" alt="portfolio" class="img-responsive">
                                            </div>
                                            <div class="portfolio-overlay">
                                                <p class="category">${staf.firstname} ${staf.lastname}</p>
                                                <a href="/staff/${staf.id}">
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
                                </#list>
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
            <h4 class="section-title">ИСТОРИЯ НАШЕГО УНИВЕРСИТЕТА</h4>
        </div>
        <div class="container">
            <div class="experience-container">
                <div class="row">
                    <div class="col-md-6 left-item">
                        <div class="experience-item">
                            <div class="experience-circle"></div>
                            <div class="experience-content">
                                <h6>НАЧАЛО</h6>
                                <p class="range">1876</p>
                                <p>На воробьевых горах Царской России построили главное здание МГУ.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 right-item experience-top-margin">
                        <div class="experience-item">
                            <div class="experience-circle"></div>
                            <div class="experience-content">
                                <h6>ОТКРЫТИЕ ФИЛИАЛА В Г. ТАШКЕНТ</h6>
                                <p class="range">2006</p>
                                <p>По указу первого президента республики Узбекистан был заключен договор об открытии филиала МГУ напротив клиники Федоровича.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 left-item experience-top-margin">
                        <div class="experience-item">
                            <div class="experience-circle"></div>
                            <div class="experience-content">
                                <h6>ПЕРВЫЙ ВЫПУСК</h6>
                                <p class="range">2010</p>
                                <p>В Узбекистане появились первые выжившые после обучение в филиале МГУ.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 right-item last-item experience-top-margin">
                        <div class="experience-item">
                            <div class="experience-circle"></div>
                            <div class="experience-content">
                                <h6>ПОПУЛЯРНОСТЬ</h6>
                                <p class="range">2016</p>
                                <p>Больше 500 поступающих в наш университет.</p>
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
                            <h4 class="section-title">ОТЗЫВЫ СТУДЕНТОВ</h4>
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

    <!--Start Footer-->
    <footer id="ftr">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <p>Copyright © 2017 RezuMate | All rights reserved</p>
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