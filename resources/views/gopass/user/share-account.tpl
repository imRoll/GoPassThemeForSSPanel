<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 共享帐号 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
                                    <h5>共享帐号</h5>
                                </div>
                                <div class="col-6">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a>
                                        </li>
                                        <li class="breadcrumb-item">首页
                                        <li class="breadcrumb-item active">共享帐号</li>
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid">
                        {if $GoPass_Config['show_share'] == true}
                            <div class="row">
                                {foreach $GoPass_Config['share_account'] as $class_name => $class}
                                    <div class="col-md-4">
                                        <div class="card">
                                            <div class="card-header card-no-border p-0 fadeIn animated"><img class="img-fluid"
                                                    src="/theme/gopass/images/gopass/{if $class_name == 'HBO'}hbo-660-1.png
                                                                                    {elseif $class_name == 'Apple ID'}apple.png
                                                                                    {elseif $class_name == 'Netflix'}netflix-660-1.png
                                                                                    {elseif $class_name == 'Hulu'}hulu-660-1.png
                                                                                {else}movies.png
                                                                                {/if}"></div>
                                            <div class="card-body text-center">
                                                <h3 class="f-w-600 p-b-10">{$class_name}</h3>
                                                {foreach $class as $account}
                                                    {if $user->class >= $account['class'] && $user->get_top_up()>=$display_ios_topup}
                                                        <div class="alert alert-primary m-b-10" role="alert">
                                                            <p>帐号：<a href="##" class="copy-text font-light"
                                                                    data-clipboard-text="{$account['account']}">{$account['account']}</a>
                                                            </p>
                                                            <hr>
                                                            <p class="mb-0">密码：<a href="##" class="copy-text font-light"
                                                                    data-clipboard-text="{$account['passwd']}">*********(点击复制)</a></p>
                                                        </div>
                                                    {else}
                                                        <div class="alert alert-primary">您目前订阅的会员计划无法查看此共享账号，请升级会员计划。</a>
                                                        </div>
                                                    {/if}
                                                {/foreach}
                                            </div>
                                        </div>
                                    </div>
                                {/foreach}
                            </div>
                        {else}
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card">
                                        <div class="card-header p-0 fadeIn animated"><img class="img-fluid"
                                                src="/theme/gopass/images/gopass/noshare.png"></div>
                                        <div class="card-body text-center">
                                            <h5 class="f-w-500">本站暂未开放共享账号,敬请期待</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/if}


                    </div><!-- container-fluid -->
                </div><!-- Page Body End -->
                <!-- footer start-->
                {include file='user/components/footer.tpl'}
                {include file='user/components/footer-files.tpl'}
            </div><!-- page-body-wrapper End-->

</body>

</html>