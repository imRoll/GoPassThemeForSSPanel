<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 节点设置 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
                                    <h5>节点设置</h5>
                                </div>
                                <div class="col-6">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a>
                                        </li>
                                        <li class="breadcrumb-item">首页
                                        <li class="breadcrumb-item active">节点设置</li>
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5>节点设置</h5>
                                        <span>修改设置后您可能需要在客户端更新节点列表才能恢复使用<code>如无特殊需求不建议更改</code></span>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-3 col-xs-12">
                                                <div class="nav flex-column nav-pills" id="v-nodesetting-tab"
                                                    role="tablist" aria-orientation="vertical">
                                                    {if $GoPass_Config['show_protocol'] == true}
                                                    <a class="nav-link active" id="password-tab"
                                                        data-bs-toggle="pill" href="#password" role="tab"
                                                        aria-controls="password" aria-selected="true">连接密码</a>
                                                    {/if}
                                                    {if $GoPass_Config['show_method'] == true}
                                                    <a class="nav-link" id="codpath-tab" data-bs-toggle="pill"
                                                        href="#method" role="tab" aria-controls="codpath"
                                                        aria-selected="false">加密方式</a>
                                                    {/if}
                                                    {if $GoPass_Config['show_confound'] == true}
                                                    <a class="nav-link"
                                                        id="agreementandconfusion-tab" data-bs-toggle="pill"
                                                        href="#agreementandconfusion" role="tab"
                                                        aria-controls="agreementandconfusion"
                                                        aria-selected="false">协议和混淆</a>
                                                    {/if}
                                                    {if $GoPass_Config['show_reset_port'] == true}
                                                    <a class="nav-link"
                                                        id="resetSubscribedLinks-tab" data-bs-toggle="pill"
                                                        href="#resetSubscribedLinks" role="tab"
                                                        aria-controls="resetSubscribedLinks"
                                                        aria-selected="false">重置端口</a>
                                                    {/if}
                                                        </div>
                                            </div>
                                            <div class="col-sm-9 col-xs-12">
                                                <div class="tab-content" id="v-pills-tabContent">
                                                 {if $GoPass_Config['show_protocol'] == true}
                                                    <div class="tab-pane fade show active" id="password"
                                                        role="tabpanel" aria-labelledby="password-tab">
                                                        <div class="card">
                                                            <div class="card-header">
                                                                <h5>连接密码</h5>
                                                            </div>
                                                            <div class="card-body form theme-form">
                                                                <p>您需要了解的是，修改此密码同时也会变更您 V2Ray 节点的 UUID，请注意及时更新托管订阅。</p>
                                                                <p>
                                                                    当前连接密码: <code>{$user->passwd}</code></p>
                                                                <div class="form-group mb-3">
                                                                    <div class="input-group">
                                                                        <input id="ss-password" type="text"
                                                                            class="form-control" placeholder="请输入新密码"
                                                                            aria-label="">
                                                                        <div class="input-group-append">
                                                                            <button id="ss-random-password"
                                                                                class="btn btn-secondary"
                                                                                type="button">随机生成</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <button class="btn btn-primary"
                                                                    id="ss-pwd-update">提交更改</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    {/if}
                                                    {if $GoPass_Config['show_method'] == true}
                                                    <div class="tab-pane fade" id="method" role="tabpanel"
                                                        aria-labelledby="codpath-tab">
                                                        <div class="card">
                                                            <div class="card-header">
                                                                <h5>加密方式</h5>
                                                            </div>
                                                            <div class="card-body form theme-form">
                                                                <p>SS/SSD/SSR 支持的加密方式有所不同，请根据实际情况来进行选择</p>
                                                                <p>
                                                                    当前加密方式: <code>[{if URL::CanMethodConnect($user->method) == 2}SS/SSD{else}SS/SSR{/if} 可连接] {$user->method}</code></p>
                                                                <div class="form-group mb-3">
                                                                    <select id="method-select" class="form-control">
                                                                        {$method_list = $config_service->getSupportParam('method')}
                                                                        {foreach $method_list as $method}
                                                                            <option value="{$method}">
                                                                                [{if URL::CanMethodConnect($method) == 2}SS/SSD{else}SS/SSR{/if}
                                                                                可连接] {$method}</option>
                                                                        {/foreach}
                                                                    </select>
                                                                </div>
                                                                <button class="btn btn-primary"
                                                                    id="method-confirm">提交更改</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    {/if}
                                                    {if $GoPass_Config['show_confound'] == true}
                                                    <div class="tab-pane fade" id="agreementandconfusion"
                                                        role="tabpanel" aria-labelledby="agreementandconfusion">
                                                        <div class="card">
                                                            <div class="card-header">
                                                                <h5>协议和混淆</h5>
                                                            </div>
                                                            <div class="card-body form theme-form">
                                                                <p>如果需要兼容 SS/SSD 请设置为 origin 或选择带_compatible的兼容选项</p>
                                                                <p>auth_chain 系为实验性协议，可能造成不稳定或无法使用，开启前请询问是否支持</p>
                                                                <p>
                                                                    当前协议:<code>[{if URL::CanProtocolConnect($user->protocol) == 3}SS/SSD/SSR{else}SSR{/if}
                                                                        可连接] {$user->protocol}</code></p>
                                                                <div class="form-group">
                                                                    <select id="protocol-selection"
                                                                        class="form-select digits m-b-10">
                                                                        {$protocol_list = $config_service->getSupportParam('protocol')}
                                                                        {foreach $protocol_list as $protocol}
                                                                            <option value="{$protocol}">
                                                                                [{if URL::CanProtocolConnect($protocol) == 3}SS/SSD/SSR{else}SSR{/if}
                                                                                可连接] {$protocol}</option>
                                                                        {/foreach}
                                                                    </select>
                                                                    <p>如果需要兼容 SS/SSD 请设置为 plain 或选择带_compatible的兼容选项</p>
                                                                    <p>SS/SSD 和 SSR 支持的混淆类型有所不同，simple_obfs_* 为 SS/SSD
                                                                        的混淆方式，其他为 SSR 的混淆方式
                                                                    </p>
                                                                    <p>如果使用 SS/SSD 作为客户端，请确保自己知道如何下载并使用混淆插件</p>
                                                                    <p>当前混淆方式:
                                                                        [{if URL::CanObfsConnect($user->obfs) >= 3}SS/SSD/SSR{elseif URL::CanObfsConnect($user->obfs) == 1}SSR{else}SS/SSD{/if}
                                                                        可连接] {$user->obfs}</p>
                                                                    <select id="obfs" class="form-select digits m-b-10">
                                                                        {$obfs_list = $config_service->getSupportParam('obfs')}
                                                                        {foreach $obfs_list as $obfs}
                                                                            <option value="{$obfs}">
                                                                                [{if URL::CanObfsConnect($obfs) >= 3}SS/SSD/SSR{else}{if URL::CanObfsConnect($obfs) == 1}SSR{else}SS/SSD{/if}{/if}
                                                                                可连接] {$obfs}</option>
                                                                        {/foreach}
                                                                    </select>
                                                                </div>
                                                                <p>当前混淆参数: <code
                                                                        id="current-obfs-param">{$user->obfs_param}</code>
                                                                </p>
                                                                <input id="obfs-param" class="form-control" type="text"
                                                                    placeholder="输入您的混淆参数">
                                                            </div>
                                                            <div class="card-footer">
                                                                <button class="btn btn-primary"
                                                                    id="protocol-obfs-confirm">提交更改</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    {/if}
                                                    {if $GoPass_Config['show_reset_port'] == true}
                                                    <div class="tab-pane fade" id="resetSubscribedLinks" role="tabpanel"
                                                        aria-labelledby="resetSubscribedLinks">
                                                        <div class="card">
                                                            <div class="card-header">
                                                                <h5>重置端口</h5>
                                                            </div>
                                                            <form class="form theme-form" id="port-body">
                                                                <div class="card-body" id="reset-port-modal-body-re">
                                                                    <p>点击会重置您的订阅链接，此操作不可逆，请谨慎操作。</p>
                                                                    <p>随机更换一个端口使用，价格：<code>{$config['port_price']}</code>元/次
                                                                    </p>
                                                                    <p>重置后1分钟内生效</p>
                                                                    <p>当前端口：<code id="current-port">{$user->port}</code>
                                                                    </p>
                                                                     <button id="reset-port"
                                                                         class="btn btn-primary">重置链接</button>
                                                                </div>
                                                               
                                                            </form>
                                                        </div>
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