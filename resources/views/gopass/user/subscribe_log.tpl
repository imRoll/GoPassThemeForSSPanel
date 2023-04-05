<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 订阅记录 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
                                    <h5>订阅记录</h5>
                                </div>
                                <div class="col-6">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a>
                                        </li>
                                        <li class="breadcrumb-item">首页
                                        <li class="breadcrumb-item active">订阅记录</li>
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                </div><!-- container-fluid -->

                <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5>订阅记录</h5><span>提示：您可在此查询您账户所有的订阅记录，确保您的账户没有被盗用</span>
                                    </div>
                                    <div class="card-block row">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="table-success">
                                                    <tr>
                                                        <th scope="col" class="text-center">ID</th>
                                                        <th scope="col" class="text-center">订阅类型</th>
                                                        <th scope="col" class="text-center">IP</th>
                                                        <th scope="col" class="text-center">归属地</th>
                                                        <th scope="col" class="text-center">时间</th>
                                                        <th scope="col" class="text-center">User-Agent</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    {if count($logs) == 0}
                                                        <tr>
                                                            <td class="text-center" colspan="6"><strong>暂无订阅记录</strong></td>
                                                        </tr>
                                                    {else}
                                                        {foreach $logs as $log}
                                                            <tr>
                                                                <td class="text-center">#{$log->id}</td>
                                                                <td class="text-center">{$log->subscribe_type}</td>
                                                                <td class="text-center">{$log->request_ip}</td>
                                                                {assign var="location" value=$iplocation->getlocation($log->request_ip)}
                                                                <td class="text-center">{iconv("gbk", "utf-8//IGNORE", $location.country)}
                                                                    {iconv("gbk", "utf-8//IGNORE", $location.area)}</td>
                                                                <td class="text-center">{$log->request_time}</td>
                                                                <td class="text-center">{$log->request_user_agent}</td>
                                                            </tr>
                                                        {/foreach}
                                                    {/if}
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- container-fluid -->
                </div><!-- Page Body End -->
                <!-- footer start-->
                {include file='user/components/footer.tpl'}
                {include file='user/components/footer-files.tpl'}
            </div><!-- page-body-wrapper End-->
</body>

</html>