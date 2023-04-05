<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 下载和教程 | 邀请好友获奖励 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github
    </title>
    {include file='user/components/header-files.tpl'}
</head>

<body class="{if $GoPass_Config['layout_color_mode'] == 1}light-only
    {elseif $GoPass_Config['layout_color_mode'] == 2}dark-sidebar
    {elseif $GoPass_Config['layout_color_mode'] == 3}dark-only
    {/if}">
    <!-- tap on top starts-->
    <div class="tap-top"><i data-feather="chevrons-up"></i></div>
    <!-- tap on tap ends-->
    <!-- page-wrapper Start-->
    <div class="page-wrapper {if $GoPass_Config['layout_sidebar_mode'] == 1}compact-wrapper
    {elseif $GoPass_Config['layout_sidebar_mode'] == 2}horizontal-wrapper
    {elseif $GoPass_Config['layout_sidebar_mode'] == 3}compact-sidebar compact-small material-icon
    {elseif $GoPass_Config['layout_sidebar_mode'] == 4}page-wrapper compact-wrapper box-layout
    {/if}
        " id="pageWrapper">
    <!-- tap on top starts-->
    <div class="tap-top"><i data-feather="chevrons-up"></i></div>
    <!-- tap on tap ends-->
        <!-- Page Header Start-->
        {include file='user/components/header.tpl'}
        <!-- Page Header Ends                              -->
        <!-- Page Body Start-->
        <div class="page-body-wrapper horizontal-menu">
            <!-- Page Sidebar Start-->
            {include file='user/components/sidebar.tpl'}
            <!-- Page Sidebar Ends-->
            <div class="page-body">
                <div class="container-fluid">
                    <!--Nav Bar Start-->
                    <div class="page-title">
                        <div class="row">
                            <div class="col-6">
                                <h5>下载和教程</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a></li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">下载和教程</li>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div><!-- container-fluid -->

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="knowledgebase-bg"><img class="bg-img-cover bg-center"
                                    src="/theme/gopass/images/gopass/bg_1.jpg" alt="looginpage"></div>
                            <div class="knowledgebase-search">
                                <div>
                                    <h4>💁 欢迎来到下载与教程</h4>
                                    <p>在这里，您可查阅到我们提供配置方案的应用的使用文档。</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 xl-50 col-sm-6" style="cursor:pointer">
                            <div class="card bg-primary" style="cursor:pointer"
                                onclick="window.open('/user/tutorial?os=ios&client=quantumult')">
                                <div class="card-body">
                                    <div class="media faq-widgets">
                                        <div class="media-body">
                                            <h5>IOS 苹果系统</h5>
                                            <p>Quantumult 是在 iOS 平台上的客户端软件，支持 SS、SSR 以及 VMess 协议。</p>
                                        </div><i class="icofont icofont-brand-apple icofont-5x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 xl-50 col-sm-6" style="cursor:pointer">
                            <div class="card bg-primary"
                                onclick="window.open('/user/tutorial?os=android&client=v2rayng')">
                                <div class="card-body">
                                    <div class="media faq-widgets">
                                        <div class="media-body">
                                            <h5>Android 安卓系统</h5>
                                            <p>V2rayNG 是在 Android 平台上的客户端软件，支持 VMess 及 Shadowsocks 协议。</p>
                                        </div><i class="icofont icofont-brand-android-robot icofont-5x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 xl-50 col-sm-6" style="cursor:pointer">
                            <div class="card bg-primary" style="cursor:pointer"
                                onclick="window.open('/user/tutorial?os=windows&client=clash')">
                                <div class="card-body">
                                    <div class="media faq-widgets">
                                        <div class="media-body">
                                            <h5>Windows 系统</h5>
                                            <p>Clash for Win 是一个拥有 GUI 界面基于 Clash 可自定义规则的 Win 代理应用。
                                            </p>
                                        </div><i class="icofont icofont-brand-windows icofont-5x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 xl-50 col-sm-6" style="cursor:pointer">
                            <div class="card bg-primary" style="cursor:pointer"
                                onclick="window.open('/user/tutorial?os=mac&client=clashx')">
                                <div class="card-body">
                                    <div class="media faq-widgets">
                                        <div class="media-body">
                                            <h5>MacOS 系统</h5>
                                            <p>ClashX 是一个拥有 GUI 界面基于 Clash 可自定义规则的 macOS 代理应用。</p>
                                        </div><i class="icofont icofont-brand-mac-os icofont-5x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="header-faq">
                                <h5 class="mb-0">其它客户端下载</h5>
                            </div>
                            <div class="row">
                                <div class="col-lg-4" style="cursor:pointer"
                                    onclick="window.open('/client-download/v2rayn.zip')">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="media"><i
                                                    class="icofont icofont-brand-windows icofont-2x m-r-30"></i>
                                                <div class="media-body">
                                                    <h6 class="f-w-600">v2rayN</h6>
                                                    <p>V2RayW 是一个基于 V2Ray 内核的 <code>Windows</code> 客户端。用户通过界面生成配置文件，可以手动更新内核。</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4" style="cursor:pointer"
                                    onclick="window.open('/client-download/v2rayng.apk')">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="media"><i
                                                    class="icofont icofont-brand-android-robot icofont-2x m-r-30"></i>
                                                <div class="media-body">
                                                    <h6 class="f-w-600">v2rayNG</h6>
                                                    <p>v2rayNG是<code>Android</code>平台上的客户端软件，是一个基于 V2Ray 核心的移动平台应用。</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4" style="cursor:pointer"
                                    onclick="window.open('/client-download/ClashX.dmg')">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="media"><i
                                                    class="icofont icofont-brand-apple icofont-2x m-r-30"></i>
                                                <div class="media-body">
                                                    <h6 class="f-w-600">ClashX</h6>
                                                    <p>ClashX 是在<code>MAC</code>平台上的客户端软件，支持 Vmess, Shadowsocks, SOCKS5 协议。</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4" style="cursor:pointer"
                                    onclick="window.open('/client-download/clash-android.apk')">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="media"><i
                                                    class="icofont icofont-brand-android-robot icofont-2x m-r-30"></i>
                                                <div class="media-body">
                                                    <h6 class="f-w-600">Clash For Android</h6>
                                                    <p>Clash是在<code>Android</code>平台上的客户端软件，支持 Vmess, Shadowsocks,
                                                        SOCKS5 协议。</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4" style="cursor:pointer"
                                    onclick="window.open('/client-download/ssr-mac.dmg')">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="media"><i
                                                    class="icofont icofont-brand-apple icofont-2x m-r-30"></i>
                                                <div class="media-body">
                                                    <h6 class="f-w-600">ShadowsocksR</h6>
                                                    <p>ShadowsocksR 此版本可以在 <code>MacOS</code> 上运行, 它支持众多协议，如
                                                        SS、SSR 等。</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4" style="cursor:pointer"
                                    onclick="window.open('/client-download/Clash-Windows.7z')">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="media"><i
                                                    class="icofont icofont-brand-windows icofont-2x m-r-30"></i>
                                                <div class="media-body">
                                                    <h6 class="f-w-600">Clash For Win</h6>
                                                    <p>Clash是在<code>Windows</code>平台上的客户端软件，支持 Vmess, Shadowsocks,
                                                        SOCKS5 协议。</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- Container-fluid Ends-->

            </div><!-- Page Body End -->
            <!-- footer start-->
            {include file='user/components/footer.tpl'}
            {include file='user/components/footer-files.tpl'}
        </div><!-- page-body-wrapper End-->


</body>

</html>