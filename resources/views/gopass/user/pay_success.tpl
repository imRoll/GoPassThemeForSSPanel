<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 支付结果 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
    {include file='user/components/header-files.tpl'}
    <script>
        var isWeixin = function() {
            var ua = navigator.userAgent.toLowerCase();
            return ua.match(/MicroMessenger/i) == "micromessenger";
        };
        if (isWeixin() == true) {
            $('body').html('<h5 style="margin:20px">不支持在微信内访问<br>请点击右上角菜单<br>选择浏览器打开</h5>')
        }
    </script>
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
                                <h5>支付结果</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a>
                                    </li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">支付结果</li>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div><!-- container-fluid -->

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- BEGIN: Content-->
                            <div class="app-content content">
                                <div class="content-overlay"></div>
                                <div class="header-navbar-shadow"></div>
                                <div class="content-wrapper">
                                    <div class="content-header row">
                                    </div>
                                    <div class="content-body">
                                        <!-- maintenance -->
                                        <section class="row flexbox-container">
                                            <div class="col-12 d-flex justify-content-center">
                                                <div
                                                    class="card auth-card bg-transparent shadow-none rounded-0 mb-0 w-100">
                                                    <div class="card-content">
                                                        <div class="card-body text-center"><br />
                                                            {if ($success == 1)}
                                                                <h1 class="font-primary"><i class="icofont icofont-ui-check"></i></h1>
                                                                <h1 class="font-large-2 my-2">
                                                                    <trans oldtip="You are not authorized!" tyle="">
                                                                        已充值成功 ¥ {$money} 元</trans>
                                                                </h1>
                                                            {else}
                                                                <h2>正在处理您的支付，请您稍等。<br /><br />此页面会自动刷新，或者您可以选择关闭此页面，余额将自动到账
                                                                </h2>
                                                                <script>
                                                                    setTimeout('window.location.reload()', 5000);
                                                                </script>
                                                            {/if}
                                                            <a class="btn btn-primary btn-lg mt-2 waves-effect waves-light"
                                                                href="/user/code">
                                                                <trans oldtip="Back to Home" newtip="回到家" style="">
                                                                    返回我的钱包</trans>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                        <!-- maintenance end -->

                                    </div>
                                </div>
                            </div>
                            <!-- END: Content-->
                        </div>
                    </div>
                </div><!-- container-fluid -->
            </div><!-- Page Body End -->
            <!-- footer start-->
            {include file='user/components/footer.tpl'}
            {include file='user/components/footer-files.tpl'}
        </div><!-- page-body-wrapper End-->

        <script src="/theme/gopass/js/core/app-menu.js"></script>
        <script src="/theme/gopass/js/core/app.js"></script>
        <script src="/theme/gopass/js/scripts/components.js"></script>
</body>

</html>