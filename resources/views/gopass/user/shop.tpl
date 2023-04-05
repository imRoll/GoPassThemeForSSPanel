<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 订阅节点 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
                                <h5>节点商店</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a></li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">节点商店</li>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!--Nav Bar End-->
                    {if $GoPass_Config['activity_shop'] == true}
                        <!--活动卡片 Start-->
                        <div class="row">
                            <div class="col-12">
                                <div class="card offer-box">
                                    <div class="card-body p-0">
                                        <div class="offer-slider">
                                            <div class="carousel slide" id="carouselExampleCaptions"
                                                data-bs-ride="carousel">
                                                <div class="selling-slide row">
                                                    <div class="col-xl-4 col-md-6">
                                                        <div class="d-flex">
                                                            <div class="left-content">
                                                                <p>邀请好友注册返现</p>
                                                                <h4 class="f-w-600">
                                                                    获得TA的充值<b>{$config["code_payback"]}%</b>的返利</h4>
                                                                <span
                                                                    class="badge badge-white rounded-pill">满100元</span><span
                                                                    class="badge badge-dotted rounded-pill ms-2">可提现
                                                                    💰</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-4 col-md-12">
                                                        <div class="center-img tada animated"><img class="img-fluid"
                                                                src="/theme/gopass/images/gopass/rocket.png"></div>
                                                    </div>
                                                    <div class="col-xl-4 col-md-6">
                                                        <div class="d-flex">
                                                            <div class="right-content">
                                                                <p>发送邀请链接给好友🏃</p>
                                                                <h4 class="f-w-600">
                                                                    您将一次性获得<b>{$config["invite_gift"]}GB</b>奖励</h4><span
                                                                    class="badge badge-white rounded-pill">TA将获得
                                                                    <b>{$config["invite_get_money"]}</b> 元奖励作为初始资金</span>
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
                        <!--活动卡片 end-->
                    {/if}
                    <!-- 第二部分 开始 -->
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <ul class="nav nav-tabs border-tab" id="top-tab" role="tablist">
                                    {if $GoPass_Config['enable_shop_trail'] == true && $user->class <= 0}
                                        <li class="nav-item"><a
                                                class="nav-link active" id="trial-top-tab" data-bs-toggle="tab"
                                                href="#top-trial" role="tab" aria-controls="top-trial"
                                                aria-selected="false"><i class="icofont icofont-gift"></i>试用计划</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="top-home-tab" data-bs-toggle="tab" href="#top-home" role="tab" aria-controls="top-home" aria-selected="true">
                                            <i class="icofont icofont-space-shuttle"></i>包月计划</a>
                                        </li>
                                    {else}
                                    <li class="nav-item">
                                    <a class="nav-link active" id="top-home-tab"
                                            data-bs-toggle="tab" href="#top-home" role="tab" aria-controls="top-home"
                                            aria-selected="true"><i class="icofont icofont-space-shuttle"></i>包月计划</a>
                                    </li>
                                    {/if}
                                    <li class="nav-item"><a class="nav-link" id="profile-top-tab" data-bs-toggle="tab"
                                            href="#top-profile" role="tab" aria-controls="top-profile"
                                            aria-selected="false"><i class="icofont icofont-database"></i>按量付费</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" id="contact-top-tab" data-bs-toggle="tab"
                                            href="#top-contact" role="tab" aria-controls="top-contact"
                                            aria-selected="false"><i class="icofont icofont-database-add"></i>流量包</a>
                                    </li>
                                </ul>
                                <!-- 选项卡内容 开始 -->
                                <div class="tab-content" id="top-tabContent">
                                    {if $GoPass_Config['enable_shop_trail'] == true && $user->class <= 0}
                                        <!-- 试用计划内容 开始 -->
                                    <div class="tab-pane fade show active" id="top-trial" role="tabpanel">
                                            {foreach $shops as $shop}
                                                {if $shop->id == $GoPass_Config['shop_trail_shopid']}
                                                    <div class="row justify-content-md-center">
                                                        <div class="col-xl-4 p-b-20">
                                                            <div class="pricing-card p-30 b-primary shadow shadow-showcase">
                                                                <span class="badge badge-primary">{$shop->name}</span>
                                                                <br>
                                                                <div class="price-value txt-primary">
                                                                    <span class="currency">¥</span>
                                                                    <span class="amount">{$shop->price}</span>
                                                                    <span class="duration">{$shop->class_expire()}
                                                                        天</span>
                                                                </div>
                                                                <p>
                                                                    {foreach $shop->content_extra() as $service}
                                                                        {$service[0]} /
                                                                        {$service[1]}
                                                                    {/foreach}
                                                                </p>
                                                                <ul class="pricing-content">
                                                                    <li>使用流量: <b>{$shop->bandwidth()}GB</b></li>
                                                                    <li>
                                                                        {if !$shop->expire()=='0'}等级时长:
                                                                            <b>{$shop->class_expire()}天</b>
                                                                        {else}等级时长: <b>无限期</b>
                                                                        {/if}
                                                                    </li>
                                                                    <li>会员等级:
                                                                        <b>[Lv.{$shop->user_class()}]会员</b>
                                                                    </li>

                                                                    {if {$shop->connector()}
                                                                        == '0' }
                                                                        <li>客户端数量: <b>无限制</b></li>
                                                                    {else}
                                                                        <li>客户端限制: <b>{$shop->connector()}
                                                                                个</b></li>
                                                                    {/if}
                                                                    {if {$shop->speedlimit()}
                                                                        == '0' }
                                                                        <li>端口速率: <b>无限制</b></li>
                                                                    {else}
                                                                        <li>端口限速: <b>{$shop->speedlimit()}
                                                                                Mbps</b></li>
                                                                    {/if}
                                                                    <li>账号有效期: <b>{$shop->expire()}
                                                                            天</b></li>
                                                                    {if {$shop->reset()} ==
                                                                        '0' }
                                                                        <li>重置周期: <b>不重置</b></li>
                                                                    {else}
                                                                        <li>重置周期:
                                                                            <b>{$shop->reset_exp()}天</b>
                                                                        </li>
                                                                        <li>重置频率:
                                                                            <b>{$shop->reset_value()}G/{$shop->reset()}天</b>
                                                                        </li>
                                                                    {/if}
                                                                </ul>
                                                                <div class="text-center mt-4">
                                                                    <button class="btn btn-primary" type="button"
                                                                        data-bs-toggle="modal"
                                                                        onclick="buy('{$shop->id}',{$shop->auto_renew})"
                                                                        data-bs-target="#coupon_modal">免费试用</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                {/if}
                                            {/foreach}
                                    </div>
                                    <!-- 试用计划内容 结束 -->
                                    {/if}
                                    <!-- 包月套餐选项卡内容 开始 -->
                                     {if $GoPass_Config['enable_shop_trail'] == true && $user->class <= 0}
                                    <div class="tab-pane fade show" id="top-home" role="tabpanel"
                                        aria-labelledby="top-home-tab">
                                        {else}
                                            <div class="tab-pane fade show active" id="top-home" role="tabpanel"
                                                aria-labelledby="top-home-tab">
                                        {/if}
                                        <div class="row">
                                            {if $GoPass_Config['shop_mode'] == '1'}
                                                <div class="col-sm-12">
                                                    <div class="text-center">
                                                        <ul class="nav nav-tabs pricing-panel" id="top-tab" role="tablist">
                                                        {if $GoPass_Config['plan_1_enable'] == true}
                                                            <li class="nav-item"><a class="nav-link active" id="all-link"
                                                                    data-bs-toggle="tab" href="#all-links" role="tab"
                                                                    aria-selected="true">入门版</a>
                                                            </li>
                                                        {/if}
                                                        {if $GoPass_Config['plan_2_enable'] == true}
                                                            <li class="nav-item"><a class="nav-link" id="image-link"
                                                                    data-bs-toggle="tab" href="#image-links" role="tab"
                                                                    aria-selected="false">标准版</a>
                                                            </li>
                                                        {/if}
                                                        {if $GoPass_Config['plan_3_enable'] == true}
                                                            <li class="nav-item"><a class="nav-link" id="video-link"
                                                                    data-bs-toggle="tab" href="#video-links" role="tab"
                                                                    aria-selected="false">畅享版</a>
                                                            </li>
                                                        {/if}
                                                        </ul>
                                                    </div>
                                                    <div class="tab-content" id="top-tabContent">
                                                    {if $GoPass_Config['plan_1_enable'] == true}
                                                        <div class="tab-pane fade show active" id="all-links"
                                                            role="tabpanel" aria-labelledby="all-link">
                                                            <div class="row justify-content-md-center">
                                                                {foreach $shops_p_c1 as $shop}
                                                                    <div class="col-md-4 p-b-20">
                                                                        <div
                                                                            class="pricing-card p-30 b-primary shadow shadow-showcase">
                                                                            <span
                                                                                class="badge badge-primary">{$shop->name}</span>
                                                                            <br>
                                                                            <div class="price-value txt-primary">
                                                                                <span class="currency">¥</span>
                                                                                <span class="amount">{$shop->price}</span>
                                                                                <span class="duration">{$shop->class_expire()}
                                                                                    天</span>
                                                                            </div>
                                                                            <p>
                                                                                {foreach $shop->content_extra() as $service}
                                                                                    {$service[0]} /
                                                                                    {$service[1]}
                                                                                {/foreach}
                                                                            </p>
                                                                            <ul class="pricing-content">
                                                                                <li>使用流量: <b>{$shop->bandwidth()}GB</b>
                                                                                </li>
                                                                                <li>
                                                                                    {if !$shop->expire()=='0'}等级时长:
                                                                                        <b>{$shop->class_expire()}天</b>
                                                                                    {else}等级时长: <b>无限期</b>
                                                                                    {/if}
                                                                                </li>
                                                                                <li>会员等级:
                                                                                    <b>[Lv.{$shop->user_class()}]会员</b>
                                                                                </li>

                                                                                {if {$shop->connector()}
                                                                                    == '0' }
                                                                                    <li>客户端数量: <b>无限制</b></li>
                                                                                {else}
                                                                                    <li>客户端限制: <b>{$shop->connector()}
                                                                                            个</b></li>
                                                                                {/if}
                                                                                {if {$shop->speedlimit()}
                                                                                    == '0' }
                                                                                    <li>端口速率: <b>无限制</b></li>
                                                                                {else}
                                                                                    <li>端口限速: <b>{$shop->speedlimit()}
                                                                                            Mbps</b></li>
                                                                                {/if}
                                                                                <li>账号有效期: <b>{$shop->expire()}
                                                                                        天</b></li>
                                                                                {if {$shop->reset()} ==
                                                                                    '0' }
                                                                                    <li>重置周期: <b>不重置</b></li>
                                                                                {else}
                                                                                    <li>重置周期:
                                                                                        <b>{$shop->reset_exp()}天</b>
                                                                                    </li>
                                                                                    <li>重置频率:
                                                                                        <b>{$shop->reset_value()}G/{$shop->reset()}天</b>
                                                                                    </li>
                                                                                {/if}
                                                                            </ul>
                                                                            <div class="text-center mt-4">
                                                                                <button class="btn btn-primary" type="button"
                                                                                    data-bs-toggle="modal"
                                                                                    onclick="{if $user->quantitypay == '1'}nobuy(){else}buy('{$shop->id}',{$shop->auto_renew}){/if}"
                                                                                    data-bs-target="#coupon_modal">立即订阅</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                {/foreach}
                                                            </div>
                                                        </div>
                                                        {/if}
                                                        {if $GoPass_Config['plan_2_enable'] == true}
                                                        <div class="tab-pane fade" id="image-links" role="tabpanel"
                                                            aria-labelledby="image-link">
                                                            <!--第二个选项卡 Start-->
                                                            {if count($shops_p_c2) != 0}
                                                                <div class="row justify-content-md-center">
                                                                    {foreach $shops_p_c2 as $shop}
                                                                        <div class="col-md-4 p-b-20">
                                                                            <div
                                                                                class="pricing-card p-30 b-primary shadow shadow-showcase">
                                                                                <span
                                                                                    class="badge badge-primary">{$shop->name}</span>
                                                                                <br>
                                                                                <div class="price-value txt-primary">
                                                                                    <span class="currency">¥</span>
                                                                                    <span class="amount">{$shop->price}</span>
                                                                                    <span class="duration">{$shop->class_expire()}
                                                                                        天</span>
                                                                                </div>
                                                                                <p>
                                                                                    {foreach $shop->content_extra() as $service}
                                                                                        {$service[0]} /
                                                                                        {$service[1]}
                                                                                    {/foreach}
                                                                                </p>
                                                                                <ul class="pricing-content">
                                                                                    <li>使用流量: <b>{$shop->bandwidth()}GB</b>
                                                                                    </li>
                                                                                    <li>
                                                                                        {if !$shop->expire()=='0'}等级时长:
                                                                                            <b>{$shop->class_expire()}天</b>
                                                                                        {else}等级时长: <b>无限期</b>
                                                                                        {/if}
                                                                                    </li>
                                                                                    <li>会员等级:
                                                                                        <b>[Lv.{$shop->user_class()}]会员</b>
                                                                                    </li>

                                                                                    {if {$shop->connector()}
                                                                                        == '0' }
                                                                                        <li>客户端数量: <b>无限制</b></li>
                                                                                    {else}
                                                                                        <li>客户端限制: <b>{$shop->connector()}
                                                                                                个</b></li>
                                                                                    {/if}
                                                                                    {if {$shop->speedlimit()}
                                                                                        == '0' }
                                                                                        <li>端口速率: <b>无限制</b></li>
                                                                                    {else}
                                                                                        <li>端口限速: <b>{$shop->speedlimit()}
                                                                                                Mbps</b></li>
                                                                                    {/if}
                                                                                    <li>账号有效期: <b>{$shop->expire()}
                                                                                            天</b></li>
                                                                                    {if {$shop->reset()} ==
                                                                                        '0' }
                                                                                        <li>重置周期: <b>不重置</b></li>
                                                                                    {else}
                                                                                        <li>重置周期:
                                                                                            <b>{$shop->reset_exp()}天</b>
                                                                                        </li>
                                                                                        <li>重置频率:
                                                                                            <b>{$shop->reset_value()}G/{$shop->reset()}天</b>
                                                                                        </li>
                                                                                    {/if}
                                                                                </ul>
                                                                                <div class="text-center mt-4">
                                                                                    <button class="btn btn-primary" type="button"
                                                                                        data-bs-toggle="modal"
                                                                                        onclick="{if $user->quantitypay == '1'}nobuy(){else}buy('{$shop->id}',{$shop->auto_renew}){/if}"
                                                                                        data-bs-target="#coupon_modal">立即订阅</button>

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    {/foreach}
                                                                </div>
                                                            {/if}
                                                            <!--第二个选项卡 END-->
                                                        </div>
                                                        {/if}
                                                        {if $GoPass_Config['plan_3_enable'] == true}
                                                        <div class="tab-pane fade" id="video-links" role="tabpanel"
                                                            aria-labelledby="video-link">
                                                            <!--第三个选项卡 Start-->
                                                            {if count($shops_p_c3) != 0}
                                                                <div class="row justify-content-md-center">
                                                                    {foreach $shops_p_c3 as $shop}
                                                                        <div class="col-md-4 p-b-20">
                                                                            <div
                                                                                class="pricing-card p-30 b-primary shadow shadow-showcase">
                                                                                <span
                                                                                    class="badge badge-primary">{$shop->name}</span>
                                                                                <br>
                                                                                <div class="price-value txt-primary">
                                                                                    <span class="currency">¥</span>
                                                                                    <span class="amount">{$shop->price}</span>
                                                                                    <span class="duration">{$shop->class_expire()}
                                                                                        天</span>
                                                                                </div>
                                                                                <p>
                                                                                    {foreach $shop->content_extra() as $service}
                                                                                        {$service[0]} /
                                                                                        {$service[1]}
                                                                                    {/foreach}
                                                                                </p>
                                                                                <ul class="pricing-content">
                                                                                    <li>使用流量: <b>{$shop->bandwidth()}GB</b>
                                                                                    </li>
                                                                                    <li>
                                                                                        {if !$shop->expire()=='0'}等级时长:
                                                                                            <b>{$shop->class_expire()}天</b>
                                                                                        {else}等级时长: <b>无限期</b>
                                                                                        {/if}
                                                                                    </li>
                                                                                    <li>会员等级:
                                                                                        <b>[Lv.{$shop->user_class()}]会员</b>
                                                                                    </li>

                                                                                    {if {$shop->connector()}
                                                                                        == '0' }
                                                                                        <li>客户端数量: <b>无限制</b></li>
                                                                                    {else}
                                                                                        <li>客户端限制: <b>{$shop->connector()}
                                                                                                个</b></li>
                                                                                    {/if}
                                                                                    {if {$shop->speedlimit()}
                                                                                        == '0' }
                                                                                        <li>端口速率: <b>无限制</b></li>
                                                                                    {else}
                                                                                        <li>端口限速: <b>{$shop->speedlimit()}
                                                                                                Mbps</b></li>
                                                                                    {/if}
                                                                                    <li>账号有效期: <b>{$shop->expire()}
                                                                                            天</b></li>
                                                                                    {if {$shop->reset()} ==
                                                                                        '0' }
                                                                                        <li>重置周期: <b>不重置</b></li>
                                                                                    {else}
                                                                                        <li>重置周期:
                                                                                            <b>{$shop->reset_exp()}天</b>
                                                                                        </li>
                                                                                        <li>重置频率:
                                                                                            <b>{$shop->reset_value()}G/{$shop->reset()}天</b>
                                                                                        </li>
                                                                                    {/if}
                                                                                </ul>
                                                                                <div class="text-center mt-4">
                                                                                    <button class="btn btn-primary" type="button"
                                                                                        data-bs-toggle="modal"
                                                                                        onclick="{if $user->quantitypay == '1'}nobuy(){else}buy('{$shop->id}',{$shop->auto_renew}){/if}"
                                                                                        data-bs-target="#coupon_modal">立即订阅</button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    {/foreach}
                                                                </div>
                                                            {/if}
                                                            <!--第三个选项卡 END-->
                                                        </div>
                                                        {/if}
                                                    </div>
                                                </div>
                                            {else $GoPass_Config['shop_mode'] == '2'}
                                                <div class="row justify-content-md-center">
                                                    {foreach $shops_free_price_diy as $shop}
                                                        <div class="col-md-4 p-b-20">
                                                            <div class="pricing-card p-30 b-primary shadow shadow-showcase">
                                                                <span class="badge badge-primary">{$shop->name}</span>
                                                                <br>
                                                                <div class="price-value txt-primary">
                                                                    <span class="currency">¥</span>
                                                                    <span class="amount">{$shop->price}</span>
                                                                    <span class="duration">{$shop->class_expire()}
                                                                        天</span>
                                                                </div>
                                                                <p>
                                                                    {foreach $shop->content_extra() as $service}
                                                                        {$service[0]} /
                                                                        {$service[1]}
                                                                    {/foreach}
                                                                </p>
                                                                <ul class="pricing-content">
                                                                    <li>使用流量: <b>{$shop->bandwidth()}GB</b>
                                                                    </li>
                                                                    <li>
                                                                        {if !$shop->expire()=='0'}等级时长:
                                                                            <b>{$shop->class_expire()}天</b>
                                                                        {else}等级时长: <b>无限期</b>
                                                                        {/if}
                                                                    </li>
                                                                    <li>会员等级:
                                                                        <b>[Lv.{$shop->user_class()}]会员</b>
                                                                    </li>

                                                                    {if {$shop->connector()}
                                                                        == '0' }
                                                                        <li>客户端数量: <b>无限制</b></li>
                                                                    {else}
                                                                        <li>客户端限制: <b>{$shop->connector()}
                                                                                个</b></li>
                                                                    {/if}
                                                                    {if {$shop->speedlimit()}
                                                                        == '0' }
                                                                        <li>端口速率: <b>无限制</b></li>
                                                                    {else}
                                                                        <li>端口限速: <b>{$shop->speedlimit()}
                                                                                Mbps</b></li>
                                                                    {/if}
                                                                    <li>账号有效期: <b>{$shop->expire()}
                                                                            天</b></li>
                                                                    {if {$shop->reset()} ==
                                                                        '0' }
                                                                        <li>重置周期: <b>不重置</b></li>
                                                                    {else}
                                                                        <li>重置周期:
                                                                            <b>{$shop->reset_exp()}天</b>
                                                                        </li>
                                                                        <li>重置频率:
                                                                            <b>{$shop->reset_value()}G/{$shop->reset()}天</b>
                                                                        </li>
                                                                    {/if}
                                                                </ul>
                                                                <div class="text-center mt-4">
                                                                    <button class="btn btn-primary" type="button"
                                                                        data-bs-toggle="modal"
                                                                        onclick="{if $user->quantitypay == '1'}nobuy(){else}buy('{$shop->id}',{$shop->auto_renew}){/if}"
                                                                        data-bs-target="#coupon_modal">立即订阅</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    {/foreach}
                                                </div>
                                            {/if}
                                        </div>
                                    </div>
                                    <!-- 包月套餐选项卡内容 结束 -->
                                    
                                    <!-- 按量付费选项卡内容 开始 -->
                                    <div class="tab-pane fade" id="top-profile" role="tabpanel">
                                        {if $GoPass_Config['quantit_show'] == true }
                                            <h5>
                                                <strong>{if $user->quantitypay == '0'}启用{else}关闭{/if}按量付费</strong>
                                            </h5>
                                            {if $user->quantitypay == '0'}
                                                <p>启用按量付费后，您可获得<code>VIP-
                                                        {$GoPass_Config['quantit_class']}</code>等级权限，按量付费价格为<code>{$GoPass_Config['quantit_money']}元=1GB</code>，速度限制为<code>{$GoPass_Config['quantit_speedlimit']}Mbps</code>，限制<code>{$GoPass_Config['quantit_connector']}个</code>设备同时在线，系统自动按您使用的流量在余额中扣费，请确保您有足够的余额。
                                                </p>
                                                <p>
                                                <div style="display:inline">
                                                    为了保障稳定性，按量付费需您购买过正常套餐（不包括试用套餐）后才可启用。按量付费启用后
                                                </div>
                                                <div style="color:red; display:inline">
                                                    您的当前套餐将会失效且流量将会被重置，且启用期间您的账户签到将不能获得流量
                                                </div>
                                                <div style="display:inline">，请您留意。</div>
                                                </p>
                                            {else}
                                                <p>关闭按量付费后，您的账号将被重置。</p>
                                            {/if}
                                            <button type="button" class="btn btn-primary waves-effect buyTrafficPackage"
                                                onclick="payasyougo()">确认{if $user->quantitypay == '0'}启用{else}关闭{/if}</button>
                                        {/if}
                                    </div>
                                    <!-- 按量付费选项卡内容 结束 -->

                                    <!-- 流量叠加包选项卡内容 开始 -->
                                    <div class="tab-pane fade" id="top-contact" role="tabpanel">
                                        <p>
                                        <h5 class="modal-title"><strong>购买流量包</strong></h5>
                                        </p>
                                        <p class="txt-secondary">
                                            *需先购买包月计划或启用按量付费</span><code>流量包在您套餐流量重置时会一起清零，请酌情购买</code>
                                            </h5>
                                        </p>
                                        <form class="theme-form form-label-align-right range-slider">
                                            <div class="form-group row">
                                                <span class="col-md-12 col-form-label sm-right-text mb-2"
                                                    for="u-range">流量
                                                    (1GB={$GoPass_Config['shop_traffic_package']}元):</span>
                                                <div class="col-md-12">
                                                    <input id="u-range" class="touchspin-step" type="number"
                                                        onchange="connectThat(this.value)">
                                                </div>
                                            </div>
                                        </form>
                                        <div class="form-group mt-1">
                                            <label class="form-control-label mb-2">购买价格:（元）</label>
                                            <input id="traffic_price_1" type="hidden"
                                                value="{$GoPass_Config['shop_traffic_package']}">
                                            <input id="traffic_price_2" class="form-control" type="number" disabled
                                                required>

                                            <div class="p-t-20">
                                                <input class="radio_animated" id="pay_code1" type="radio"
                                                    name="customRadio" class="custom-control-input" checked>
                                                <label class="form-check-label"> 余额支付:{$user->money}</label>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-info waves-effect buyTrafficPackage"
                                                onclick="buyTrafficPackage()">购买</button>
                                        </div>


                                    </div>
                                    <!-- 流量叠加包选项卡内容 结束 -->
                                </div><!-- 选项卡内容 结束 -->
                            </div>
                        </div>
                    </div><!-- 第二部分 结束 -->

                    <!--coupon modal-->
                    <div class="modal fade" id="coupon_modal" tabindex="-1" role="dialog">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 id="couponModalLabel">你有优惠码吗?</h5>
                                    <button class="btn-close" type="button" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div id="dailymail-modal-body-content">
                                        <div class="form-group">
                                            <label class="form-control-label">输入你的优惠码:</label>
                                            <input class="form-control" id="coupon" type="text"
                                                placeholder="请在这里输入您的优惠码，没有请直接确定">
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button id="coupon_input" type="button" data-bs-toggle="modal"
                                        data-bs-target="#order_modal" class="btn btn-primary">确认提交</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--优惠码 结束 -->
                    <div class="modal fade" id="order_modal" tabindex="-1" role="dialog">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title kt-font-primary">
                                        订单确认
                                    </h5>
                                    <button class="btn-close" type="button" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <span style="line-height:1.75rem">
                                        <font color="red">如更换套餐,那剩余流量和有效期将会重置。</font>
                                    </span><br>
                                    <span style="line-height:1.75rem" id="name">商品名称：</span><br>
                                    <span style="line-height:1.75rem" id="credit">优惠额度：</span><br>
                                    <span style="line-height:1.75rem" id="total">总金额：</span><br>
                                    <div class="col">
                                        <div class="m-t-15 m-checkbox-inline custom-radio-ml" id="disableo">
                                            <div class="form-check form-check-inline radio radio-primary">
                                                <input class="form-check-input" id="disableothers" type="radio"
                                                    name="radio1" value="option1" checked="">
                                                <label class="form-check-label mb-0"
                                                    for="disableothers">关闭旧套餐自动续费</label>
                                            </div>
                                            <div class="form-check form-check-inline radio radio-primary">
                                                <input class="form-check-input" id="autorenew" type="radio"
                                                    name="radio1" value="option1">
                                                <label class="form-check-label mb-0" for="autorenew">到期时自动续费</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button id="order_input" type="button" class="btn btn-primary"
                                        data-dismiss="modal">确认提交</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 自动续费 -->
                </div><!-- container-fluid -->
            </div><!-- Page Body End -->
            <!-- footer start-->
            {include file='user/components/footer.tpl'}
            {include file='user/components/footer-files.tpl'}
        </div><!-- page-body-wrapper End-->

        <!-- END: Theme JS-->
        <script src="/theme/gopass/js/range-slider/ion.rangeSlider.min.js"></script>
        <script src="/theme/gopass/js/range-slider/rangeslider-script.js"></script>

        <script>
            var pid = 0;

            function buy(id, auto) {
                shop = id;
                $("#coupon_modal").modal();
            }
        </script>

        <script>
            function nobuy() {
                Swal.fire({ type: "error", title: '请注意', html: '按量付费不允许购买套餐,如需购买请先关闭按量付费' });
            }

            {if $GoPass_Config['shop_enable_traffic_package'] == true && $user->class > 0}

                function connectThat(value) {
                    var a_1 = $('#traffic_price_1').val();
                    var b_1 = $('.touchspin-step').val();
                    document.getElementById("traffic_price_2").value = (b_1 * a_1).toFixed(2);
                }
            {/if}
        </script>

</body>

</html>