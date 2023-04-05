<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
    <title>{$config['appName']}</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.8.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@4.5.0/dist/css/swiper.min.css">
    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
<script async src="https://www.googletagmanager.com/gtag/js?id=G-GPNT8RQ8YJ"></script>
    <link rel="stylesheet" href="/theme/gopass/index/css/style.css">
    <link rel="stylesheet" href="/theme/gopass/index/css/bootstrap.min.css">
    <link rel="stylesheet" href="/theme/gopass/index/css/materialdesignicons.min.css">
            <style>
                .homepage_img {
                    background-image: url(/theme/gopass/images/homepage-bg.svg);
                    background-position: center center;
                    background-size: cover;
                    background-repeat: no-repeat;
                }

                .homepage_bg {
                 background: linear-gradient(26deg, #7366ff 0%, #5925ab 100%);
                }
            </style>

</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5B59SFG" height="0" width="0"
        style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
    <!--Navbar Start-->
    <nav class="navbar navbar-expand-lg fixed-top" id="navbar">
        <div class="container">
            <!-- LOGO -->
            <a class="navbar-brand logo" href="#">
                <img src="/theme/gopass/index/images/logo-b.svg" alt="" class="logo-dark" height="24" />
                <img src="/theme/gopass/index/images/logo-allw.svg" alt="" class="logo-light" height="24" />
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <i class="" data-feather="menu"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav ms-auto navbar-center" id="navbar-navlist">
                    <li class="nav-item"><a href="#home" class="nav-link active">首页</a></li>
                    <li class="nav-item"><a href="#services" class="nav-link">服务</a></li>
                    <li class="nav-item"><a href="#features" class="nav-link">特性</a></li>
                    <li class="nav-item"><a href="#pricing" class="nav-link">价格</a></li>
                    <li class="nav-item"><a href="#client" class="nav-link">客户</a></li>
                </ul>
                {if $user->isLogin}
                <a href="/user" class="btn btn-sm rounded-pill nav-btn ms-lg-3"><i class="fas fa-user-circle"></i> 用户中心</a>
                {else}
                <a href="/auth/login" class="btn btn-sm rounded-pill nav-btn ms-lg-3"><i class="fas fa-sign-in-alt"></i>
                    登陆</a>
                {/if}
            </div>
        </div>
        <!-- end container -->
    </nav>
    <!-- Navbar End -->

    <!-- Hero Start -->
    <div class="homepage_bg">
    <section class="hero-1 bg-center position-relative homepage_img " id="home">
    
        <div class="container">
            <div class="row align-items-center hero-content">
                <div class="col-lg-5">
                    <h1 class="text-white display-4 font-weight-bold mb-4 hero-1-title">全球网络中继服务，随时随处尽情使用</h1>
                    <p class="text-white-70 mb-4"> 智能分流系统，国内网站直连，增强用户体验；Apple服务加速；
                        国外常用网站加速 (Google/Youtube/Twitter/Instgram/Github等)；
                        在传输过程中使用最强的加密方式，保护用户数据和隐私；
                        与诸多平台上的优秀应用程序兼容；</p>
                    <a class="btn btn-lg btn-light rounded-pill mb-2" href="/auth/register"><strong>开始使用</strong> <i
                            class="fa fa-plane" aria-hidden="true"></i></a>
                </div>

                <div id="carouselExampleIndicators" class="col-lg-6 col-sm-12 mx-auto ms-lg-auto me-lg-0 carousel slide"
                    data-ride="carousel">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="/theme/gopass/index/images/banner-hbo-1.png" class="d-block w-100"></p></div>
            <div class="swiper-slide"><img src="/theme/gopass/index/images/banner-netflix-1.png" class="d-block w-100"></p></div>
            <div class="swiper-slide"><img src="/theme/gopass/index/images/banner-hulu-3.png" class="d-block w-100"></div>
        </div>
        <div class="swiper-pagination"></div> 
    </div>
                </div>


            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
        <div class="hero-bottom-shape">
            <img src="/theme/gopass/index/images/hero-1-bottom-shape.png" alt="" class="img-fluid d-block mx-auto" />
        </div>
        <!-- end hero shape -->
    
    </section>
    </div>
    <!-- Hero End -->


    <!-- Services start -->
    <section class="section" id="services">
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-lg-7 text-center">
                    <h2 class="fw-bold">海外追剧，跨境电商的利器</h2>
                    <p class="text-muted">专为您有海外需求而设计的服务，随时随地，全平台高速访问。可靠的基础设施，提供便捷的诸多功能</p>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <div class="service-box text-center px-4 py-5 position-relative mb-4">
                        <div class="service-box-content p-4">
                            <div class="icon-mono service-icon avatar-md mx-auto mb-4">
                                <i class="text-primary" data-feather="box"></i>
                            </div>
                            <h4 class="mb-3 font-size-22">高速稳定</h4>
                            <p class="text-muted mb-0">体验宛若身在海外的访问速度，适用于您的固网与移动网络。</p>
                        </div>
                    </div>
                </div>
                <!-- end col -->

                <div class="col-lg-4">
                    <div class="service-box text-center px-4 py-5 position-relative mb-4 active">
                        <div class="service-box-content p-4">
                            <div class="icon-mono service-icon avatar-md mx-auto mb-4">
                                <i class="text-primary" data-feather="layers"></i>
                            </div>
                            <h4 class="mb-3 font-size-22 text-white-90">跨平台兼容</h4>
                            <p class="text-white mb-0 text-white-90">我们的服务适用于 macOS、iOS、Android、Windows。</p>
                        </div>
                    </div>
                </div>
                <!-- end col -->

                <div class="col-lg-4">
                    <div class="service-box text-center px-4 py-5 position-relative mb-4">
                        <div class="service-box-content p-4">
                            <div class="icon-mono service-icon avatar-md mx-auto mb-4">
                                <i class="text-primary" data-feather="server"></i>
                            </div>
                            <h4 class="mb-3 font-size-22">全球互联</h4>
                            <p class="text-muted mb-0">通过 IXP 连接至全球内容提供商，更加快速。</p>
                        </div>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->

    </section>
    <!-- Services end -->

    <!-- Features start -->
    <section class="section bg-light" id="features">
        <div class="container">
            <div class="row align-items-center mb-5">
                <div class="col-md-5 order-2 order-md-1 mt-md-0 mt-5">
                    <span class="badge badge-pill badge-primary mb-4">CROSS DEVICES & PLATFORMS</span>
                    <h2 class="mb-4">在你心爱的电子设备中使用，无论是手机还是电脑，随时随处可用。</h2>
                    <p class="text-muted mb-5">{$config["appName"]}我们的服务适用于 macOS、iOS、Android、Windows 和
                        Linux，借助第三方客户端，可在手机、电脑、路由器、游戏机、电视盒子中使用。</p>
                    <a href="/auth/register" class="btn btn-primary">Find out more <i class="icon-xs ms-2"
                            data-feather="arrow-right"></i></a>
                </div>
                <div class="col-md-6 ms-md-auto order-1 order-md-2">
                    <div class="position-relative">
                        <div class="ms-5 features-img">
                            <img src="/theme/gopass/index/images/top-hbo-movies.jpg" alt=""
                                class="img-fluid d-block mx-auto" />
                        </div>
                        <img src="/theme/gopass/index/images/dot-img.png" alt="" class="dot-img-left" />
                    </div>
                </div>
            </div>
            <!-- end row -->
            <div class="row align-items-center section pb-0">
                <div class="col-md-6">
                    <div class="position-relative mb-md-0 mb-5">
                        <div class="me-5 features-img">
                            <img src="/theme/gopass/index/images/halloween-movies.jpg" alt=""
                                class="img-fluid d-block mx-auto rounded shadow" />
                        </div>
                        <img src="/theme/gopass/index/images/dot-img.png" alt="" class="dot-img-right" />
                    </div>
                </div>
                <div class="col-md-5 ms-md-auto">
                    <span class="badge badge-pill badge-primary mb-4">UNBLOCK STREAMING MEDIA</span>
                    <h2 class="mb-4">解锁流媒体，观赏和聆听优质的内容</h2>
                    <p class="text-muted mb-5">通过 {$config["appName"]} 的服务，可以观看包括 Netflix、Hulu、HBO、TVB、Happyon、AbemaTV
                        等在内的多种流媒体视频，聆听包括 Spotify、Pandora 等在内的流媒体音乐。</p>
                    <a href="/auth/register" class="btn btn-primary">Find out more <i class="icon-xs ms-2"
                            data-feather="arrow-right"></i></a>
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </section>
    <!-- Features end -->

    <!-- Ticket start -->
    <section class="section bg-gradient-primary">
        <div class="bg-overlay-img" style="background-image: url(/theme/gopass/index/images/demos.png);"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="text-center">
                        <h1 class="text-white mb-4">客户支持</h1>
                        <p class="text-white mb-5 font-size-16">
                            有任何关于会员计划的疑问？联系我们的售前咨询小组，马上为您解答。我们将在您的订阅周期内为您提供一定程度上的技术支持。</p>
                        <a href="#" class="btn btn-lg btn-light fw-bold">联系我们</a>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </section>
    <!-- Ticket end -->

    <!-- Pricing start -->
    <section class="section" id="pricing">
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-lg-7 text-center">
                    <h2 class="fw-bold">出色的体验，意想不到的价格</h2>
                    <p class="text-muted">
                        不要把宝贵的时间，浪费在等待上。即刻开启全球网络中继服务，在任何时间任何地点访问全球互联网。
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-center mb-4 pricing-tab">
                        <ul class="nav nav-pills rounded-pill justify-content-center d-inline-block shadow-sm"
                            id="pricingpills-tab" role="tablist">
                            <li class="nav-item d-inline-block">
                                <a class="nav-link rounded-pill active" id="pills-monthly-tab" data-bs-toggle="pill"
                                    href="#pills-monthly" role="tab" aria-controls="pills-monthly"
                                    aria-selected="true">月付</a>
                            </li>
                            <li class="nav-item d-inline-block">
                                <a class="nav-link rounded-pill" id="pills-yearly-tab" data-bs-toggle="pill"
                                    href="#pills-yearly" role="tab" aria-controls="pills-yearly"
                                    aria-selected="false">年付</a>
                            </li>
                        </ul>
                    </div>
<div class="tab-content" id="pricingpills-tabContent">
    <div class="tab-pane fade show active" id="pills-monthly" role="tabpanel" aria-labelledby="pills-monthly-tab">


        <div class="row mt-5">
            <div class="col-12 col-md-4 col-lg-4">
                <div class="pricing shadow rounded-lg">
                    <div class="pricing-title">
                        入门版
                    </div>
                    <div class="pricing-padding">
                        <div class="pricing-price">
                            <div>¥16.60</div>
                            <div>每月</div>
                        </div>
                        <div class="pricing-details">
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">100GB 使用流量</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">2个 在线客户端</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">工单技术支持</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">国际标准节点</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#6c757d;"><i
                                        class="fas fa-times-circle"></i></div>
                                <div class="pricing-item-label text-muted"><del>国内中转节点</del></div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#6c757d;"><i
                                        class="fas fa-times-circle"></i></div>
                                <div class="pricing-item-label text-muted"><del>IPLC专线节点</del></div>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-cta go-to-buy-page">
                        <a style="border-radius:0 0 14px 14px; background:#7746CB; color:#fff;" href="/user/shop">订阅</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 col-lg-4">
                <div class="pricing shadow rounded-lg">
                    <div class="pricing-title">
                        标准版
                    </div>
                    <div class="pricing-padding">
                        <div class="pricing-price">
                            <div>¥24.60</div>
                            <div>每月</div>
                        </div>
                        <div class="pricing-details">
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">200GB 使用流量</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">4个 在线客户端</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">24/7 在线技术支持</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">国际标准节点</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">国内中转节点</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#6c757d;"><i
                                        class="fas fa-times-circle"></i></div>
                                <div class="pricing-item-label text-muted"><del>IPLC专线节点</del></div>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-cta go-to-buy-page">
                        <a style="border-radius:0 0 14px 14px; background:#7746CB; color:#fff;" href="/user/shop">订阅</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 col-lg-4">
                <div class="pricing shadow rounded-lg">
                    <div class="pricing-title">
                        畅享版
                    </div>
                    <div class="pricing-padding">
                        <div class="pricing-price">
                            <div>¥35.80</div>
                            <div>每月</div>
                        </div>
                        <div class="pricing-details">
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">300GB 使用流量</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">8个 在线客户端</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">24/7 在线技术支持</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">国际标准节点</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">国内中转节点</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">IPLC专线节点</div>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-cta go-to-buy-page">
                        <a style="border-radius:0 0 14px 14px; background:#7746CB; color:#fff;" href="/user/shop">订阅</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end monthly tab pane -->

    <div class="tab-pane fade" id="pills-yearly" role="tabpanel" aria-labelledby="pills-yearly-tab">
        <div class="row mt-5">
            <div class="col-12 col-md-4 col-lg-4">
                <div class="pricing shadow rounded-lg">
                    <div class="pricing-title">
                        标准版
                    </div>
                    <div class="pricing-padding">
                        <div class="pricing-price">
                            <div>¥109.9</div>
                            <div>每年</div>
                        </div>
                        <div class="pricing-details">
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">100GB 使用流量</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">2个 在线客户端</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">工单技术支持</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">国际标准节点</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#6c757d;"><i
                                        class="fas fa-times-circle"></i></div>
                                <div class="pricing-item-label text-muted"><del>国内中转节点</del></div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#6c757d;"><i
                                        class="fas fa-times-circle"></i></div>
                                <div class="pricing-item-label text-muted"><del>IPLC专线节点</del></div>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-cta go-to-buy-page">
                        <a style="border-radius:0 0 14px 14px; background:#7746CB; color:#fff;" href="/user/shop">订阅</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 col-lg-4">
                <div class="pricing shadow rounded-lg">
                    <div class="pricing-title">
                        高级版
                    </div>
                    <div class="pricing-padding">
                        <div class="pricing-price">
                            <div>¥219.9</div>
                            <div>每年</div>
                        </div>
                        <div class="pricing-details">
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">200GB 使用流量</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">4个 在线客户端</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">24/7 在线技术支持</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">国际标准节点</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">国内中转节点</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#6c757d;"><i
                                        class="fas fa-times-circle"></i></div>
                                <div class="pricing-item-label text-muted"><del>IPLC专线节点</del></div>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-cta go-to-buy-page">
                        <a style="border-radius:0 0 14px 14px; background:#7746CB; color:#fff;" href="/user/shop">订阅</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 col-lg-4">
                <div class="pricing shadow rounded-lg">
                    <div class="pricing-title">
                        加强版
                    </div>
                    <div class="pricing-padding">
                        <div class="pricing-price">
                            <div>¥329.9</div>
                            <div>每年</div>
                        </div>
                        <div class="pricing-details">
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">300GB 使用流量</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">8个 在线客户端</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">24/7 在线技术支持</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">国际标准节点</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">国内中转节点</div>
                            </div>
                            <div class="pricing-item">
                                <div style="width:25px; height:25px;line-height: 20px;color:#7746CB;"><i
                                        class="fas fa-check-circle"></i></div>
                                <div class="pricing-item-label">IPLC专线节点</div>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-cta go-to-buy-page">
                        <a style="border-radius:0 0 14px 14px; background:#7746CB; color:#fff;" href="/user/shop">订阅</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                </div>
                <!-- end yearly tab pane -->
            </div>
            <!-- end tab content -->
        </div>
        <!-- end col -->
        </div>
        <!-- end row -->
        </div>
        <!-- end container -->
    </section>
    <!-- Pricing end -->


    <!-- client start -->
    <section class="section bg-gradient-primary " id="client">
        <div class="container">
            <div class="row justify-content-center mb-4">
                <div class="col-lg-7 text-center">
                    <h2 class="fw-bold text-white">客户的支持是我们的动力</h2>
                    <p class="text-white-80">感谢每一位客户的支持，我们将不断改善服务体验；及时更新技术，提高您的使用安全及体验感。</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="card mt-4 border-0 shadow">
                        <div class="card-body p-4">
                            <span class="badge badge-primary">Netflix</span> <span
                                class="badge badge-primary">Hulu</span> <span class="badge badge-primary">HBO</span>
                            <span class="badge badge-primary">Steam</span>
                            <h4 class="font-size-22 my-4"><strong><a
                                        href="javascript: void(0);">很快，看电影玩游戏都解决了！</a></strong></h4>
                            <p class="text-muted">人人倒下了，就跑到Netflix上看电影,这个很不错哦，周末打发时间的不二之选。</p>
                            <div class="d-flex align-items-center mt-4 pt-2">
                                <img src="/theme/gopass/index/images/user/img-1.jpg"
                                    class="rounded-circle avatar-sm me-3" alt="..." />
                                <div class="flex-body">
                                    <h5 class="font-size-17 mb-0">s***1</h5>
                                    <p class="text-muted mb-0 font-size-14">学生, 成都</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end col -->

                <div class="col-lg-4">
                    <div class="card mt-4 border-0 shadow">
                        <div class="card-body p-4">
                            <span class="badge badge-primary">Instgram</span> <span
                                class="badge badge-primary">YouTube</span> <span
                                class="badge badge-primary">Facebook</span>
                            <h4 class="font-size-22 my-4"><strong><a href="javascript: void(0);">陪伴我一起成长的平台</a></strong>
                            </h4>
                            <p class="text-muted">上传和下载速度都很快，问题解决及时。已经推荐了身边很多朋友。</p>
                            <div class="d-flex align-items-center mt-4 pt-2">
                                <img src="/theme/gopass/index/images/user/img-2.jpg"
                                    class="rounded-circle avatar-sm me-3" alt="..." />
                                <div class="flex-body">
                                    <h5 class="font-size-17 mb-0">A***y</h5>
                                    <p class="text-muted mb-0 font-size-14">网红, 北京</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end col -->

                <div class="col-lg-4">
                    <div class="card mt-4 border-0 shadow">
                        <div class="card-body p-4">
                            <span class="badge badge-primary">Amazon</span> <span
                                class="badge badge-primary">Lazada</span> <span class="badge badge-primary">Wish</span>
                            <span class="badge badge-primary">eBay</span>
                            <h4 class="font-size-22 my-4"><strong><a
                                        href="javascript: void(0);">非常适合做跨境电商的朋友们</a></strong></h4>
                            <p class="text-muted">节点多，速度快，美国和东南亚的平台上操作都没有问题。</p>
                            <div class="d-flex align-items-center mt-4 pt-2">
                                <img src="/theme/gopass/index/images/user/img-3.jpg"
                                    class="rounded-circle avatar-sm me-3" alt="..." />
                                <div class="flex-body">
                                    <h5 class="font-size-17 mb-0">雀***缘</h5>
                                    <p class="text-muted mb-0 font-size-14">跨境电商, 上海</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </section>
    <!-- client end -->



    <!-- Footer Start -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="bg-overlay-img" style="background-image: url(/theme/gopass/index/images/footer-bg.png);">
                </div>
                <div class="col-lg-5">
                    <div class="mb-4">
                        <a href="index-1.html"><img src="/theme/gopass/index/images/logo-w.svg" alt="" class=""
                                height="50" /></a>
                        <p class="text-white-50 mt-4 mb-1" style="font-size: 1rem;line-height: 1.6rem;">
                            致力于为用户提供高速稳定的高性价比网络中继服务; 体验宛若身在海外的访问速度，适用于您的任何设备及网络。</p>
                        <p style="font-size: 0.8rem;line-height: 1.2rem;color: rgba(255,255,255,.3)!important;">We dedicate to providing the finest network
                            proxy
                            service, Make you never feel a thing of the existance of the GFW again; We made easy for any
                            internet service subscriber to use our service.</span></p>
                        <p class="text-white-50 mb-0" style="font-size: 0.8rem!important;">
                            Powered by
                            <a href="/staff" target="_blank" data-bs-original-title="" title="">SSPanel</a>
                            © The theme by
                            <a href="https://t.me/imroll" target="_blank" data-bs-original-title="" title="">@imRoll</a>
                        </p>
                    </div>
                </div>
                <!-- end col -->

                <div class="col-lg-7 d-none d-sm-none d-md-none d-lg-block">
                    <div class="row">
                        <div class="col-lg-3 col-6"></div>
                        <div class="col-lg-3 col-6"></div>
                        <div class="col-lg-3 col-6">
                            <div class="mt-4 mt-lg-0">
                                <h4 class="text-white font-size-18 mb-3 text-end">首页</h4>
                                <ul class="list-unstyled footer-sub-menu">
                                    <li class="text-end"><a href="javascript: void(0);" class="footer-link">商店</a></li>
                                    <li class="text-end"><a href="javascript: void(0);" class="footer-link">节点列表</a>
                                    </li>
                                    <li class="text-end"><a href="javascript: void(0);" class="footer-link">邀请注册</a>
                                    </li>
                                    <li class="text-end"><a href="javascript: void(0);" class="footer-link">支付方式</a>
                                    </li>
                                    <li class="text-end"><a href="javascript: void(0);" class="footer-link">优惠码</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-6">
                            <div class="mt-4 mt-lg-0">
                                <h4 class="text-white font-size-18 mb-3 text-end">支持</h4>
                                <ul class="list-unstyled footer-sub-menu">
                                    <li class="text-end"><a href="javascript: void(0);" class="footer-link">联系我们</a>
                                    </li>
                                    <li class="text-end"><a href="javascript: void(0);" class="footer-link">工单系统</a>
                                    </li>
                                    <li class="text-end"><a href="javascript: void(0);" class="footer-link"> 常见问题</a>
                                    </li>
                                    <li class="text-end"><a href="javascript: void(0);" class="footer-link">工具下载</a>
                                    </li>
                                    <li class="text-end"><a href="javascript: void(0);" class="footer-link">教程说明</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->

            <!-- end row -->
        </div>
        <!-- end container -->
    </footer>
    <!-- Footer End -->

</body>

    <!-- javascript -->
    <script src="/theme/gopass/index/js/bootstrap.bundle.min.js"></script>
    <script src="/theme/gopass/index/js/smooth-scroll.polyfills.min.js"></script>
    <!-- feather-icons js -->
    <script src="https://unpkg.com/feather-icons"></script>
    <!-- App Js -->
    <script src="/theme/gopass/index/js/app.js"></script>
  <!--End mc_embed_signup-->
  <script src="https://cdn.jsdelivr.net/npm/swiper@4.5.0/dist/js/swiper.min.js"></script>
  <script>
    var mySwiper = new Swiper('.swiper-container', {
      direction: 'horizontal',
      loop: true,
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      autoplay: {
        delay: 5000,
        disableOnInteraction: true,
      },
    })
  </script>


</html>