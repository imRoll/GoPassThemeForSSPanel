<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 审计记录 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
    <!-- page-wrapper Start-->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
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
                                <h5>审计记录</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a></li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">审计记录</li>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>审计记录</h5>
                                    <span
                                        class="p-t-10">系统中所有审计记录。</span><span>关于隐私：注意，我们仅用以下规则进行实时匹配和记录匹配到的规则，您的通信方向和通信内容我们不会做任何记录，请您放心。也请您理解我们对于这些不当行为的管理，谢谢</span>
                                </div>
                                <div class="card-block row">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class="table-primary">
                                                <tr>
                                                    <th>审计编号</th>
                                                    <th>线路ID</th>
                                                    <th>线路名称</th>
                                                    <th>审计ID</th>
                                                    <th>审计名称</th>
                                                    <th>审计描述</th>
                                                    <th>正则表达式</th>
                                                    <th>类型</th>
                                                    <th>触发时间</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {if count($logs) == 0}
                                                    <tr>
                                                        <td colspan="9" class="text-center"><strong>暂无审计记录</strong></td>
                                                    </tr>
                                                {else}
                                                    {foreach $logs as $log}
                                                        {if $log->DetectRule() != null}
                                                            <tr>
                                                                <td>#{$log->id}</td>
                                                                <td>{$log->node_id}</td>
                                                                <td>{$log->Node()->name}</td>
                                                                <td>{$log->list_id}</td>
                                                                <td>{$log->DetectRule()->name}</td>
                                                                <td>{$log->DetectRule()->text}</td>
                                                                <td>{$log->DetectRule()->regex}</td>
                                                                {if $log->DetectRule()->type == 1}
                                                                    <td>数据包明文匹配</td>
                                                                {/if}
                                                                {if $log->DetectRule()->type == 2}
                                                                    <td>数据包 hex 匹配</td>
                                                                {/if}
                                                                <td>{date('Y-m-d H:i:s',$log->datetime)}</td>
                                                            </tr>
                                                        {/if}
                                                    {/foreach}
                                                {/if}
                                            </tbody>
                                        </table>
                                    </div>
                                    {if $rules != null}
                                        <div class="pagination-render float-right">
                                            {$rules->render()}
                                        </div>
                                    {/if}
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
    </div><!-- page-wrapper End-->
    <script>

    </script>
</body>

</html>