<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 首页 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
    {include file='user/components/header-files.tpl'}
</head>

<body onload="startTime()" id="app" class="{if $GoPass_Config['layout_color_mode'] == 1}light-only
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

        <!-- Page Header Start-->
        {include file='user/components/header.tpl'}
        <!-- Page Header Ends                              -->
        <!-- Page Body Start-->
        <div class="page-body-wrapper horizontal-menu">
            <!-- Page Sidebar Start-->
            {include file='user/components/sidebar.tpl'}
            <!-- Page Sidebar Ends-->
            {if $user->class != -1}
                <div class="page-body">
                    <div class="container-fluid p-t-30">
                        <div class="row">
                            <div class="col-xl-12 xl-100 box-col-12">
                                {if ($user->lastSsTime() == '从未使用过') and $user->class>=0  and $user->quantitypay == '0'}
                                    <div class="alert alert-primary inverse alert-dismissible fade show m-b-30">
                                        <i class="icofont icofont-crown"></i>
                                        <p>新手上路？先看教程，轻松上手！</p>
                                        <button class="btn-close" type="button" data-bs-dismiss="alert"
                                            aria-label="Close"></button>
                                    </div>

                                {elseif  substr($user->unusedTraffic(),0,-2) <= 0 and $user->class != 0}
                                    <div class="alert alert-primary inverse alert-dismissible fade show m-b-30">
                                        <i class="icofont icofont-water-drop"></i>
                                        <p>您的流量已用尽，无法继续使用本站服务。请及时到商店续费或购买套餐。</p>
                                        <button class="btn-close" type="button" data-bs-dismiss="alert"
                                            aria-label="Close"></button>
                                    </div>

                                {elseif  $user->class == 0}
                                    <div class="alert alert-primary inverse alert-dismissible fade show m-b-30">
                                        <i class="icofont icofont-clock-time"></i>
                                        <p>您的会员计划已过期，请及时续费。</p>
                                        <button class="btn-close" type="button" data-bs-dismiss="alert"
                                            aria-label="Close"></button>
                                    </div>

                                {elseif  substr($user->unusedTraffic(),0,-2) <= 5 && substr($user->unusedTraffic(),0,-2) > 0 && {substr($user->unusedTraffic(),-2)}
                                    == 'GB'}
                                    <div class="alert alert-primary inverse alert-dismissible fade show m-b-30">
                                        <i class="icofont icofont-clock-time"></i>
                                        <p>您的可用流量不足5GB，如需更多流量，请及时到商店续费或购买套餐。</p>
                                        <button class="btn-close" type="button" data-bs-dismiss="alert"
                                            aria-label="Close"></button>
                                    </div>
                                {/if}
                            </div>
                            <div class="col-xl-12 xl-100 chart_data_left box-col-12">
                                <div class="card">
                                    <div class="card-body p-0">
                                        <div class="row m-0 chart-main">
                                            <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
                                                <div class="media align-items-center">
                                                    <div class="hospital-small-chart">
                                                        <div class="small-bar">
                                                            <div class="flot-chart-container"><i class="font-primary"
                                                                    data-feather="globe"></i></div>
                                                        </div>
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="right-chart-content"><span>会员时长</span>
                                                            {if $user->quantitypay == '1'}
                                                                <h4>按量付费</h4>
                                                                <span>按量付费启用中</span>
                                                            {else}
                                                                <h4>
                                                                    {if $user->class_expire!="1989-06-04 00:05:00" && $user->class >= 1}
                                                                        {$class_left_days}天
                                                                    {elseif $user->class <= 0}
                                                                        0 天
                                                                    {else}
                                                                        永久
                                                                    {/if}
                                                                </h4>
                                                                <span>
                                                                    {if $user->lastSsTime() == '从未使用过' and $user->class == 0}
                                                                        未订阅
                                                                    {elseif $user->class <= 0}已过期
                                                                    {elseif $user->class == 1}
                                                                        {$GoPass_Config['plan_1_name']}:
                                                                        {substr($user->class_expire, 0, 10)}
                                                                        到期
                                                                    {elseif $user->class == 2}
                                                                        {$GoPass_Config['plan_2_name']}:
                                                                        {substr($user->class_expire, 0, 10)}
                                                                        到期
                                                                    {elseif $user->class == 3}
                                                                        {$GoPass_Config['plan_3_name']}:
                                                                        {substr($user->class_expire, 0, 10)}
                                                                        到期
                                                                    {/if}
                                                                {/if}
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
                                                <div class="media align-items-center">
                                                    <div class="hospital-small-chart">
                                                        <div class="small-bar">
                                                            <div class="flot-chart-container"><i class="font-secondary"
                                                                    data-feather="dollar-sign"></i></div>
                                                        </div>
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="right-chart-content"><span>钱包余额</span>
                                                            <h4>{$user->money} CNY</h4>
                                                            <span>累计获得返利金额: ¥ {$paybacks_sum}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
                                                <div class="media align-items-center">
                                                    <div class="hospital-small-chart">
                                                        <div class="small-bar">
                                                            <div class="flot-chart-container"><i class="font-info"
                                                                    data-feather="wifi"></i></div>
                                                        </div>
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="right-chart-content"><span>在线设备</span>
                                                            {if $user->node_connector!=0}
                                                                <h4>{$user->online_ip_count()} / {$user->node_connector}</h4>
                                                            {else}
                                                                <h4>{$user->online_ip_count()} / ∞</h4>
                                                            {/if}
                                                            </h4>
                                                            {if $user->lastSsTime()!="从未使用过"}
                                                                <span>上次使用时间: {substr($user->lastSsTime(), 5,11)} </span>
                                                            {else}
                                                                <span>从未使用过</span>
                                                            {/if}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
                                                <div class="media border-none align-items-center">
                                                    <div class="hospital-small-chart">
                                                        <div class="small-bar">
                                                            <div class="flot-chart-container"><i class="font-primary"
                                                                    data-feather="zap"></i></div>
                                                        </div>
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="right-chart-content"><span>端口速率</span>
                                                            {if $user->node_speedlimit!=0}
                                                                <h4>{$user->node_speedlimit}Mbps</h4><span>账户最高下行网速</span>
                                                            {else}
                                                                <h4>无限制</h4><span>账户最高下行网速</span>
                                                            {/if}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xxl-4 col-xl-6 col-lg-6 col-md-12">
                                {if $GoPass_Config['enable_index_subinfo'] == true}
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-header card-no-border">
                                                <div class="media media-dashboard">
                                                    <div class="media-body">
                                                        <h5 class="mb-0">便捷导入</h5>
                                                    </div>
                                                    <div class="icon-box"><i data-feather="zap"></i></div>
                                                </div>
                                            </div>
                                            <div class="card-body btn-showcase dropdown-basic clearfix p-t-0">
                                                {if (in_array("ss",$GoPass_Config['support_sub_type'])) || (in_array("v2ray",$GoPass_Config['support_sub_type']))}
                                                    {if (!in_array("clash",$GoPass_Config['index_hidden_import_buttons']))}
                                                        <a href="##" class="btn btn-clash btn-sm btn-pill p-l-rem-1 p-r-rem-1"
                                                            onclick="importSublink('clash')"><i class="gopass-clash"></i>
                                                            一键导入ClashX/CFW/CFA配置</a>
                                                    {/if}
                                                {/if}

                                                {if (in_array("ss",$GoPass_Config['support_sub_type'])) || (in_array("v2ray",$GoPass_Config['support_sub_type']))}
                                                    {if (!in_array("kitsunebi",$GoPass_Config['index_hidden_import_buttons']))}
                                                        <a class="btn btn-kitsunebi btn-sm btn-pill copy-text p-l-rem-1 p-r-rem-1"
                                                            data-clipboard-text="{$subInfo['kitsunebi']}"><i
                                                                class="gopass-kitsunebi"></i> 复制Kitsunebi订阅链接</a>
                                                    {/if}
                                                {/if}


                                                {if (!in_array("quantumult",$GoPass_Config['index_hidden_import_buttons']))}
                                                    {if $GoPass_Config['quantumult_mode'] == 'single'}
                                                        <a id="quan_sub"
                                                            class="btn btn-dark btn-sm btn-pill copy-config p-l-rem-1 p-r-rem-1"
                                                            onclick="importSublink('quantumult')"><i class="gopass-quantumult"></i>
                                                            一键导入Quantumult配置</a>
                                                    {elseif $GoPass_Config['quantumult_mode'] == 'all'}
                                                        <a id="quan_sub"
                                                            class="btn btn-dark btn-sm btn-pill copy-config p-l-rem-1 p-r-rem-1"
                                                            onclick="Copyconfig(&quot;{$subInfo['quantumult_sub']}&quot;,&quot;#quan_sub&quot;,&quot;quantumult://settings?configuration=clipboard&quot;)"><i
                                                                class="gopass-quantumult"></i> 一键导入Quantumult配置</a>
                                                    {/if}
                                                {/if}

                                                {if (!in_array("shadowrocket",$GoPass_Config['index_hidden_import_buttons']))}
                                                    <a class="btn btn-outline-primary btn-sm btn-pill p-l-rem-1 p-r-rem-1"
                                                        onclick="importSublink('shadowrocket')"><i class="gopass-shadowrocket"></i>
                                                        一键导入Shadowrocket配置</a>
                                                {/if}




                                                {if (!in_array("surfboard",$GoPass_Config['index_hidden_import_buttons']))}
                                                    <a class="btn btn-outline-dark btn-sm btn-pill copy-text p-l-rem-1 p-r-rem-1"
                                                        onclick="importSublink('surfboard')"><i class="gopass-surfboard"></i>
                                                        一键导入Surfboard配置</a>
                                                {/if}

                                                {if (!in_array("ss",$GoPass_Config['index_hidden_import_buttons']))}
                                                    <a class="btn btn-outline-success btn-sm btn-pill copy-text p-l-rem-1 p-r-rem-1"
                                                        data-clipboard-text="{$subInfo['ss']}
                                                                                                                                                                                                            {if $GoPass_Config['enable_sub_extend'] == true}&extend=1{/if}"><i
                                                            class="gopass-ssr"></i> 复制SS订阅链接</a>
                                                {/if}
                                            {/if}

                                            {if (in_array("v2ray",$GoPass_Config['support_sub_type']))}
                                                {if (!in_array("v2ray",$GoPass_Config['index_hidden_import_buttons']))}
                                                    <a href="##"
                                                        class="btn btn-outline-info btn-sm btn-pill copy-text p-l-rem-1 p-r-rem-1"
                                                        data-clipboard-text="{$subInfo['v2ray']}{if $GoPass_Config['enable_sub_extend'] == true}&extend=1{/if}"><i
                                                            class="gopass-v2rayng"></i> 复制V2Ray订阅链接</a>
                                                {/if}
                                            {/if}


                                            {if (!in_array("ssd",$GoPass_Config['index_hidden_import_buttons']))}
                                                <a class="btn btn-outline-primary btn-sm btn-pill copy-text p-l-rem-1 p-r-rem-1"
                                                    data-clipboard-text="{$subInfo['ssd']}">复制SSD订阅链接</a>
                                            {/if}

                                            {if (in_array("ssr",$GoPass_Config['support_sub_type']))}
                                                {if (!in_array("ssr",$GoPass_Config['index_hidden_import_buttons']))}
                                                    <div class="dropdown mb-0">
                                                        <button
                                                            class="btn dropbtn btn-primary btn-outline-primary btn-sm btn-pill p-l-rem-1 p-r-rem-1"
                                                            type="button" style="padding: 0.375rem 1.75rem;" id="dropdownMenuButton"
                                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
                                                                class="gopass-ssr"></i> SSR
                                                            订阅链接<span> <i class="fa fa-chevron-down"></i></span></button>
                                                        <div class="dropdown-content" style="top:30px;">
                                                            <a class="f-12" href="#" onclick="importSublink('ssr')">
                                                                一键导入SSR订阅链接</a></a>
                                                            <a class="f-12 copy-text" href="#"
                                                                data-clipboard-text="{$subInfo['ssr']}{if $GoPass_Config['enable_sub_extend'] == true}&extend=1{/if}">复制SSR订阅链接</a>
                                                        </div>
                                                    </div>
                                                {/if}
                                            {/if}


                                            {if (in_array("ss",$GoPass_Config['support_sub_type']))}
                                                {if (!in_array("surge",$GoPass_Config['index_hidden_import_buttons']))}
                                                    <div class="dropdown mb-0">
                                                        <button
                                                            class="btn dropbtn btn-secondary btn-outline-secondary btn-sm
                                                                                                                                                                                                                btn-pill p-l-rem-1 p-r-rem-1"
                                                            type="button" style="padding: 0.375rem 1.75rem;"><i
                                                                class="gopass-surge"></i>
                                                            Surge托管配置<span> <i class="fa fa-chevron-down"></i></span></button>
                                                        <div class="dropdown-content" style="min-width: 190px;top:30px;">
                                                            <a class="f-12" href="##" onclick="importSublink('surge2')">
                                                                一键导入Surge 2托管配置</a>
                                                            <a class="f-12 copy-text" href="##"
                                                                data-clipboard-text="{$subInfo['surge']}">
                                                                复制Surge 2托管配置链接</a>
                                                            <a class="f-12" href="##" onclick="importSublink('surge3')">
                                                                一键导入Surge 3托管配置</a>
                                                            <a class="f-12 copy-text" href="##"
                                                                data-clipboard-text="{$subInfo['surge3']}">
                                                                复制Surge 3托管配置链接</a>
                                                            <a class="f-12" href="##" onclick="importSublink('surge4')">
                                                                一键导入Surge 4托管配置</a>
                                                            <a class="f-12 copy-text" href="##"
                                                                data-clipboard-text="{$subInfo['surge4']}">
                                                                复制Surge 4托管配置链接</a>
                                                        </div>
                                                    </div>
                                                {/if}


                                                {if (!in_array("copy-ss",$GoPass_Config['index_hidden_import_buttons']))}
                                                    <a id="ss-all-urls"
                                                        class="btn btn-outline-primary btn-sm btn-pill copy-config p-l-rem-1 p-r-rem-1"
                                                        onclick="Copyconfig('/user/getUserAllURL?type=ss','#ss-all-urls','')"><i
                                                            class="gopass-ssr"></i>
                                                        批量复制SS链接</a>
                                                {/if}

                                                {if (!in_array("copy-ssr",$GoPass_Config['index_hidden_import_buttons']))}
                                                    <a id="ssr-all-urls"
                                                        class="btn btn-outline-primary btn-sm btn-pill copy-config p-l-rem-1 p-r-rem-1"
                                                        onclick="Copyconfig('/user/getUserAllURL?type=ssr','#ssr-all-urls','')"><i
                                                            class="gopass-ssr"></i>
                                                        批量复制SSR链接</a>
                                                {/if}

                                                {if (!in_array("copy-vmess",$GoPass_Config['index_hidden_import_buttons']))}
                                                    <a id="v2ray-all-urls"
                                                        class="btn btn-outline-primary btn-sm btn-pill copy-config p-l-rem-1
                                                                                                                                                                                                            p-r-rem-1"
                                                        onclick="Copyconfig('/user/getUserAllURL?type=v2ray','#v2ray-all-urls','')"><i
                                                            class="gopass-v2rayng"></i> 批量复制Vmess链接</a>
                                                {/if}

                                            </div>
                                        </div>
                                    </div>
                                {/if}

                                {if $GoPass_Config['dateusage_theme'] == 1}
                                    <div class="col-12">
                                        <!-- Cod Box Copy begin -->
                                        <div class="card total-users">
                                            <div class="card-header card-no-border p-m-10">
                                                <div class="media media-dashboard">
                                                    <div class="media-body">
                                                        <h5 class="mb-0">流量使用情况</h5>
                                                    </div>
                                                    <div class="icon-box"><i data-feather="activity"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body pt-0">
                                                <div class="apex-chart-container goal-status text-center row">
                                                    <div class="rate-card col-xl-12">
                                                        <div class="goal-chart">
                                                            <div id="riskfactorchart"></div>
                                                        </div>
                                                        <div class="goal-end-point">
                                                            <ul>
                                                                <li class="mt-0 pt-0">
                                                                    <h6 class="font-primary">今日已用</h6>
                                                                    <h6 class="f-w-400">{$user->TodayusedTraffic()}</h6>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <ul class="col-xl-12">
                                                        <li>
                                                            <div class="goal-detail">
                                                                <h6 class="f-14">本月已用流量: {$user->usedTraffic()} </h6>
                                                                <div class="progress sm-progress-bar progress-animate">
                                                                    <div class="progress-gradient-primary" role="progressbar"
                                                                        style="width: {$user->trafficUsagePercent()}%"
                                                                        aria-valuenow="{$user->trafficUsagePercent()}"
                                                                        aria-valuemin="0" aria-valuemax="100"><span
                                                                            class="animate-circle"></span></div>
                                                                </div>
                                                            </div>
                                                            <div class="goal-detail mb-0">
                                                                <h6 class="f-14">本月剩于流量: {$user->unusedTraffic()}</h6>
                                                                <div class="progress sm-progress-bar progress-animate">
                                                                    <div class="progress-gradient-primary" role="progressbar"
                                                                        style="width: {$user->unusedTrafficPercent()}%"
                                                                        aria-valuenow="{$user->unusedTrafficPercent()}"
                                                                        aria-valuemin="0" aria-valuemax="100"><span
                                                                            class="animate-circle"></span></div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Cod Box Copy end -->
                                    </div>
                                {else}
                                    <div class="col-xl-12 box-col-12">
                                        <div class="card o-hidden">
                                            <div class="chart-widget-top">
                                                <div class="row card-body p-b-0">
                                                    <div class="col-8">
                                                        <h6 class="f-w-600 font-primary">已用流量统计</h6><span class="num">
                                                            <span>今日已用: {$user->TodayusedTraffic()}</span>
                                                    </div>
                                                    <div class="col-4 text-end">
                                                        <h4 class="num total-value">{$user->trafficUsagePercent()}%</h4>
                                                    </div>
                                                    <div class="chart-block chart-vertical-center">
                                                        <canvas id="myDoughnutGraph"></canvas>
                                                    </div>
                                                </div>
                                                <div class="row m-b-20 m-t-20">
                                                    <div class="col text-center b-r-light"><span>本月已用流量</span>
                                                        <h4 class="mb-0">{$user->usedTraffic()}</h4>
                                                    </div>
                                                    <div class="col text-center"><span>本月剩余流量</span>
                                                        <h4 class="mb-0">{$user->unusedTraffic()}</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                            </div>


                            <div class="col-xxl-4 col-xl-6 col-lg-6 col-md-12">
                                <div class="row">
                                    <div class="col-xl-12 alert-sec">
                                        <div class="card bg-img">
                                            <div class="card-header card-no-border p-m-10">
                                                <div class="media media-dashboard">
                                                    <div class="media-body">
                                                        <h5 class="mb-0">本站公告</h5>
                                                    </div>
                                                    <div class="icon-box">
                                                        <div class="notification-box"><i data-feather="volume-2"></i></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body p-t-0 gonggao">
                                                {$ann->content}
                                            </div>
                                        </div>
                                    </div>

                                    <a href="/user/share-account">
                                        <div class="col-12">
                                            <div class="card o-hidden">
                                                <div class="bg-info b-r-4 card-body">
                                                    <div class="media static-top-widget">
                                                        <div class="media-body"><span
                                                                class="m-0 form-inline o-hidden">Netflix
                                                                Hulu
                                                                HBO</span>
                                                            <h4 class="mb-0">共享帐号</h4><i class="icon-bg"
                                                                data-feather="youtube"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="/user/node">
                                        <div class="col-12">
                                            <div class="card o-hidden">
                                                <div class="bg-primary b-r-4 card-body">
                                                    <div class="media static-top-widget">
                                                        <div class="media-body p-l-0"><span class="m-0">全球节点</span>
                                                            <h4 class="mb-0">节点订阅</h4><i class="icon-bg"
                                                                data-feather="shopping-bag"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                </div>
                            </div>

                            <div class="col-xxl-4 col-xl-6 col-lg-12">
                                <div class="col-xl-12 xl-100 box-col-12">
                                    <div class="card">
                                        <div class="card-header card-no-border p-m-10">
                                            <div class="media media-dashboard">
                                                <div class="media-body">
                                                    <h5 class="mb-0">{$GoPass_Config['lastest_update_title']}</h5>
                                                </div>
                                                <div class="icon-box">
                                                    <div class="notification-box"><i data-feather="radio"></i></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body new-update pt-0">
                                            <div class="activity-timeline">
                                                {foreach $GoPass_Config['lastest_update'] as $class_name => $class}
                                                    {foreach $class as $update}
                                                        <div class="media"
                                                            style="-webkit-box-align: normal;-ms-flex-align: normal;align-items: normal;">
                                                            <div class="go-activity-dot"></div>
                                                            <div class="media-body"><span>{$update['title']}</span>
                                                                <p class="font-roboto">{$update['content']}</p>
                                                            </div>
                                                        </div>
                                                    {/foreach}
                                                {/foreach}
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                {include file='user/components/footer.tpl'}
                {include file='user/components/footer-files.tpl'}
            {/if}
        </div>
    </div>
    {include file='user/components/scripts.tpl'}

    <script src="/theme/gopass/js/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/waypoints@4.0.0/lib/jquery.waypoints.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/d3@3.5.0/d3.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/c3@0.4.10/c3.min.js"></script>
    <script src="/theme/gopass/js/jquery.counterup.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bowser@1.9.4/bowser.min.js"></script>

<script>
//首页
function importSublink(client) {
if (client == 'quantumult') {
oneclickImport('quantumult',
'{if $GoPass_Config["quantumult_sub_type"]=="v2ray"}{$subInfo["quantumult_v2"]}{elseif $GoPass_Config["quantumult_sub_type"]=="ss"}{$subInfo["ss"]}{elseif $GoPass_Config["quantumult_sub_type"]=="ssr"}{$subInfo["ssr"]}{/if}');
}
if (client == 'shadowrocket') {
oneclickImport('shadowrocket', '{$subInfo["shadowrocket"]}')
};
if (client == 'surfboard') {
oneclickImport('surfboard', '{$subInfo["surfboard"]}')
};
if (client == 'surge2') {
oneclickImport('surge', '{$subInfo["surge2"]}')
};
if (client == 'surge3') {
oneclickImport('surge3', '{$subInfo["surge3"]}')
};
if (client == 'surge4') {
oneclickImport('surge3', '{$subInfo["surge4"]}')
};
if (client == 'clash') {
oneclickImport('clash', '{$subInfo["clash"]}')
};
if (client == 'ssr') {
oneclickImport('ssr', '{$subInfo["ssr"]}')
}
}
</script>



    <script>
        trafficDountChat(
            '{$user->LastusedTraffic()}',
            '{$user->TodayusedTraffic()}',
            '{$user->unusedTraffic()}',
            '{number_format($user->last_day_t/$user->transfer_enable*100,2)}',
            '{number_format(($user->u+$user->d-$user->last_day_t)/$user->transfer_enable*100,2)}',
            '{number_format(($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100,2)}'
        )

        appName = "{$config['appName']}";
        setTimeout(loadTrafficChart(), 3000);
        
    </script>

    <script>
        var options4 = {
            series: [{$user->trafficUsagePercent()}],
            chart: {
                height: 350,
                type: 'radialBar',
                offsetY: -10,
            },

            plotOptions: {
                radialBar: {
                    startAngle: -135,
                    endAngle: 135,
                    inverseOrder: true,
                    hollow: {
                        margin: 5,
                        size: '60%',
                        image: '/theme/gopass/images/radial-image.png',
                        imageWidth: 140,
                        imageHeight: 140,
                        imageClipped: false,
                    },
                    track: {
                        opacity: 0.4,
                        colors: GopassAdminConfig.primary
                    },
                    dataLabels: {
                        enabled: false,
                        enabledOnSeries: undefined,
                        formatter: function(val, opts) {
                            return val + "%"
                        },
                        textAnchor: 'middle',
                        distributed: false,
                        offsetX: 0,
                        offsetY: 0,

                        style: {
                            fontSize: '14px',
                            fontFamily: 'Helvetica, Arial, sans-serif',
                            fill: ['#2b2b2b'],

                        },
                    },
                }
            },

            fill: {
                type: 'gradient',
                gradient: {
                    shade: 'light',
                    shadeIntensity: 0.15,
                    inverseColors: false,
                    opacityFrom: 1,
                    opacityTo: 1,
                    stops: [0, 100],
                    gradientToColors: ['#a927f9'],
                    type: 'horizontal'
                },
            },
            stroke: {
                dashArray: 15,
                strokecolor: ['#ffffff']
            },

            labels: ['流量使用率'],
            colors: [GopassAdminConfig.primary],
        };
        var chart4 = new ApexCharts(document.querySelector("#riskfactorchart"),
            options4
        );

        chart4.render();
    </script>
</body>

</html>