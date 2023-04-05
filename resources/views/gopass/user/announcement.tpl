<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 网站公告 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github
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
                                    <h5>网站公告</h5>
                                </div>
                                <div class="col-6">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a>
                                        </li>
                                        <li class="breadcrumb-item">首页
                                        <li class="breadcrumb-item active">网站公告</li>
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div><!-- container-fluid -->



                    <!-- Container-fluid Start-->
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="list-group">
                                    {foreach $anns as $ann}
                                        <a class="list-group-item list-group-item-action flex-column align-items-start"
                                            href="javascript:void(0)">
                                            <div class="d-flex w-100 justify-content-between">
                                                <h5 class="mb-1">公告 #{$ann->id}</h5><small
                                                    class="text-muted">{$ann->date}</small>
                                            </div>
                                            <p class="mb-1">{$ann->content}</p>
                                        </a>
                                    {/foreach}
                                </div>
                            </div>
                        </div>
                    </div>


                </div><!-- Page Body End -->
                <!-- footer start-->
                {include file='user/components/footer.tpl'}
                {include file='user/components/footer-files.tpl'}
            </div><!-- page-body-wrapper End-->


</body>

</html>