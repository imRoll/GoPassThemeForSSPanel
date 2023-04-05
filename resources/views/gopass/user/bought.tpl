<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 我的钱包 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
                                <h5>购买记录</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a></li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">购买记录</li>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>

                    <div class="content-body">
                        <div class="row">
                               
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header b-t-success">
                                        <h5>购买记录</h5><span>以下内容显示每次订阅的套餐</span>
                                    </div>
                                    <div class="card-block row">
                                        <div class="col-sm-12 col-lg-12 col-xl-12">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead class="table-success">
                                                        <tr>
                                                            <th class="text-center">ID</th>
                                                            <th class="text-center">商品名称</th>
                                                            <th class="text-center">价格</th>
                                                            <th class="text-center">购买时间</th>
                                                            <th class="text-center">续费时间</th>
                                                            <th class="text-center">续费时重置流量</th>
                                                            <th class="text-center">操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        {if count($shops) == 0}
                                                            <tr>
                                                                <td colspan="7"><strong>无购买记录</strong></td>
                                                            </tr>
                                                        {else}
                                                            {foreach $shops as $shop}
                                                                <tr>
                                                                    <th scope="row" class="text-center"><i
                                                                            class="bg-warning"></i>{$shop->id}</td>
                                                                        {if $shop->shop()->id == 0}
                                                                        <td class="text-center">{$shop->coupon}</td>
                                                                    {else}
                                                                        <td class="text-center">{$shop->shop()->name}</td>
                                                                    {/if}
                                                                    <td class="text-center">¥{$shop->price}</td>
                                                                    <td class="text-center">
                                                                        {date('Y-m-d H:i:s', $shop->datetime)}</td>
                                                                    {if $shop->renew==0}
                                                                        <td class="text-center">不自动续费</td>
                                                                    {else}
                                                                        <td class="text-center">在 {$shop->renew_date()} 续费</td>
                                                                    {/if}

                                                                    {if $shop->shop()->auto_reset_bandwidth==0}
                                                                        <td class="text-center">不自动重置</td>
                                                                    {else}
                                                                        <td class="text-center">自动重置</td>
                                                                    {/if}
                                                                    <td class="text-center">
                                                                        {if $shop->renew==0}
                                                                            无操作
                                                                        {else}
                                                                            <a href="javascript:void(0);"
                                                                                onClick="delete_modal_show('{$shop->id}')"
                                                                                class="btn btn-sm btn-primary">关闭自动续费</a>
                                                                        {/if}
                                                                    </td>
                                                                </tr>
                                                            {/foreach}
                                                        {/if}
                                                    </tbody>
                                                </table>
                                                <div class="pagination-render float-right">
                                                    {$codes->render()}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>








                </div><!-- container-fluid -->
                <!-- footer start-->
                {include file='user/components/footer.tpl'}
                {include file='user/components/footer-files.tpl'}
            </div><!-- Page Body End -->
        </div><!-- page-body-wrapper End-->

        <script>
            $(document).ready(function(e) {
                $("#top-up").click(function(e) {
                    $(".content-body").toggle();
                    $(".main-content").toggle();
                });
                $("#back-to-main").click(function(e) {
                    $(".content-body").toggle();
                    $(".main-content").toggle();
                });
            });
        </script>
</body>

</html>