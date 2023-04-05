<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 审计规则 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
                                    <h5>审计规则</h5>
                                </div>
                                <div class="col-6">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a>
                                        </li>
                                        <li class="breadcrumb-item">首页
                                        <li class="breadcrumb-item active">审计规则</li>
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card height-equal">
                                    <div class="card-header">
                                        <span
                                            class="p-t-10">为了爱与和平，也同时为了系统的正常运行，特制定了如下过滤规则，当您使用节点执行这些动作时，您的通信就会被截断。</span><span>关于隐私：注意，我们仅用以下规则进行实时匹配和记录匹配到的规则，您的通信方向和通信内容我们不会做任何记录，请您放心。也请您理解我们对于这些不当行为的管理，谢谢</span>
                                    </div>
                                    <div class="card-body">
                                        <ul class="nav nav-pills" id="pills-icontab" role="tablist">
                                            <li class="nav-item"><a class="nav-link active" id="pills-iconhome-tab"
                                                    data-bs-toggle="pill" href="#pills-iconhome" role="tab"
                                                    aria-controls="pills-iconhome" aria-selected="true"
                                                    data-bs-original-title="" title=""><i
                                                        class="icofont icofont-ui-home"></i>审计规则</a></li>
                                            <li class="nav-item"><a class="nav-link" id="pills-iconprofile-tab"
                                                    data-bs-toggle="pill" href="#pills-iconprofile" role="tab"
                                                    aria-controls="pills-iconprofile" aria-selected="false"
                                                    data-bs-original-title="" title=""><i
                                                        class="icofont icofont-man-in-glasses"></i>审计记录</a></li>
                                        </ul>
                                        <div class="tab-content" id="pills-icontabContent">
                                            <div class="tab-pane fade show active" id="pills-iconhome" role="tabpanel"
                                                aria-labelledby="pills-iconhome-tab">
                                                <div class="row m-t-20">
                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <thead class="table-primary">
                                                                <tr>
                                                                    <th scope="col" class="text-center">ID</th>
                                                                    <th scope="col" class="text-center">名称</th>
                                                                    <th scope="col" class="text-center">描述</th>
                                                                    <th scope="col" class="text-center">正则表达式</th>
                                                                    <th scope="col" class="text-center">类型</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                {if count($rules) == 0}
                                                                    <tr>
                                                                        <td colspan="5" class="text-center">
                                                                            <strong>暂无审计规则</strong>
                                                                        </td>
                                                                    </tr>
                                                                {else}
                                                                    {foreach $rules as $rule}
                                                                        <tr>
                                                                            <td class="text-center">#{$rule->id}</td>
                                                                            <td class="text-center">{$rule->name}</td>
                                                                            <td class="text-center">{$rule->text}</td>
                                                                            <td class="text-center">{$rule->regex}</td>
                                                                            {if $rule->type == 1}
                                                                                <td>数据包明文匹配</td>
                                                                            {/if}
                                                                            {if $rule->type == 2}
                                                                                <td class="text-center">数据包 hex 匹配</td>
                                                                            {/if}
                                                                        </tr>
                                                                    {/foreach}
                                                                {/if}
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="pagination-render float-right">
                                                        {$rules->render()}
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="pills-iconprofile" role="tabpanel"
                                                aria-labelledby="pills-iconprofile-tab">

                                                <div class="row m-t-20">
                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <thead class="table-primary">
                                                                <tr>
                                                                    <th class="text-center">审计编号</th>
                                                                    <th class="text-center">线路ID</th>
                                                                    <th class="text-center">线路名称</th>
                                                                    <th class="text-center">审计ID</th>
                                                                    <th class="text-center">审计名称</th>
                                                                    <th class="text-center">审计描述</th>
                                                                    <th class="text-center">正则表达式</th>
                                                                    <th class="text-center">类型</th>
                                                                    <th class="text-center">触发时间</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                {if count($rules) == 0}
                                                                    <tr>
                                                                        <td colspan="9" class="text-center">
                                                                            <strong>暂无审计记录</strong>
                                                                        </td>
                                                                    </tr>
                                                                {else}
                                                                    {foreach $logs as $log}
                                                                        {if $log->DetectRule() != null}
                                                                            <tr>
                                                                                <td class="text-center">#{$log->id}</td>
                                                                                <td class="text-center">{$log->node_id}</td>
                                                                                <td class="text-center">{$log->Node()->name}</td>
                                                                                <td class="text-center">{$log->list_id}</td>
                                                                                <td class="text-center">{$log->DetectRule()->name}</td>
                                                                                <td class="text-center">{$log->DetectRule()->text}</td>
                                                                                <td class="text-center">{$log->DetectRule()->regex}</td>
                                                                                {if $log->DetectRule()->type == 1}
                                                                                    <td class="text-center">数据包明文匹配</td>
                                                                                {/if}
                                                                                {if $log->DetectRule()->type == 2}
                                                                                    <td class="text-center">数据包 hex 匹配</td>
                                                                                {/if}
                                                                                <td class="text-center">{date('Y-m-d H:i:s',$log->datetime)}</td>
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