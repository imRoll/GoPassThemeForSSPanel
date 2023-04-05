<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 全球节点列表 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
                                <h5>全球节点</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a></li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">全球节点</li>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!--Nav Bar End-->
                    {assign var=flags value=['美国'=>'us','香港'=>'hk','新加'=>'sg','日本'=>'jp','回国'=>'cn','中国'=>'cn','台湾'=> 'tw','菲律'=>'ph','俄罗'=>'ru','韩国'=>'kr','德国'=>'de','英国'=>'gb','法国'=>'fr','越南'=>'vn','印度'=>'in','印尼'=>'id','澳门'=>'mo','马来'=>'my','荷兰'=>'nl','罗马'=>'ro','澳大'=>'au']}
                    <!-- 公益节点 开始-->
                    {if $GoPass_Config['show_welfare_nodes'] == true }
                        <div class="row">
                            <div class="col-xl-12 box-col-12">
                                <div class="card">
                                    <div class="card-header card-no-border o-hidden">
                                        <h5>{$GoPass_Config['show_welfare_nodes_name']}</h5><span>流量倍率 -> 如果你使用 0.2 倍率的节点，消耗 1G 流量，则统计为 0.2G；速率 ->
                                            标示速率为最高速率，但会受限于您本地网络、目标网络等；等级 -> 与会员套餐匹配；在线、负载 -> 表示节点当前使用人数，过载可能会影响线路体验
                                        </span>
                                    </div>
                                    <div class="card-body p-t-0">
                                        <div class="row">
                                            {foreach $nodes as $node}
                                                {if $node['class'] == 0}
                                                    <!-- 单节点 开始-->
                                                    <div class="col-md-6 col-sm-12">
                                                        {if $node['mu_only'] != 1 && ($node['sort'] != 11 || $node['sort']!=12)}
                                                            <div class="card browser-widget"
                                                                {if $user->class >= 0}onclick="urlChange('{$node['id']}',0,{if $relay_rule != null}{$relay_rule->id}{else}0{/if})"
                                                            {else}onclick="UserClassinsufficient()" 
                                                            {/if}>

                                                        {elseif $node['sort'] == 11}
                                                            <div class="card browser-widget" {if $user->class>0} data-toggle="modal"
                                                                data-target="#node-modal-{$node['id']}" {/if}>

                                                            {elseif ($node['sort'] == 0 || $node['sort'] == 10) && $node['mu_only'] != -1}
                                                                {foreach $nodes_muport as $single_muport}
                                                                    {$relay_rule = null}
                                                                    {if $node['sort'] == 10 && $single_muport['user']['is_multi_user'] != 2}
                                                                        {$relay_rule = $tools->pick_out_relay_rule($node['id'], $single_muport['server']->server, $relay_rules)}
                                                                    {/if}
                                                                    <div class="card browser-widget"
                                                                        onclick="urlChange('{$node['id']}',{$single_muport['server']->server},{if $relay_rule != null}{$relay_rule->id}{else}0{/if})">
                                                                    {/foreach}
                                                                {/if}
                                                                <div class="media card-body">
                                                                    <div class="media-img">
                                                                        {$region = substr($node['name'],0,6)}
                                                                        <i class="flag-icon
                                                                                                    flag-icon-{if $flags[$region] != ''}{$flags[$region]}{else}un{/if}
                                                                                                    nation-88
                                                                                                    {if $node['online']=='1'}nation
                                                                                                    {elseif $node['online']=='0'}nation-gray-suspended
                                                                                                    {else}nation-gray
                                                                                                    {/if}"></i>
                                                                    </div>
                                                                    <div class="media-body align-self-center">
                                                                        <div>
                                                                            {if $GoPass_Config['show_online_user'] == true}
                                                                                <p>在线</p>
                                                                                <h4>{if $user->isAdmin()}{$node['online_user']}
                                                                                    {else}
                                                                                        {if $node['online_user'] == -1}
                                                                                        N/A{else}
                                                                                            {if $node['online_user'] > '10'}多{elseif $node['online_user'] < 5}少{else}中{/if}{/if}{/if}
                                                                                        </h4>
                                                                                    </div>
                                                                                {/if}
                                                                                {if $GoPass_Config['show_node_traffic_rate'] == true}
                                                                                    <div>
                                                                                        <p>倍率 </p>
                                                                                        <h4>x{$node['traffic_rate']}</h4>
                                                                                    </div>
                                                                                {/if}
                                                                                {if $GoPass_Config['show_node_load'] == true}
                                                                                    <div>
                                                                                        <p>负载 </p>
                                                                                        <h4>{if $node['latest_load'] == -1}N/A{else}{$node['latest_load']}%{/if}
                                                                                        </h4>
                                                                                    </div>
                                                                                {/if}
                                                                                {if $GoPass_Config['show_node_speedlimit'] == true}
                                                                                    <div>
                                                                                        <p>限速 </p>
                                                                                        <h4>{if {$node['bandwidth']}==0}N/A{else}{$node['bandwidth']}{/if}
                                                                                        </h4>
                                                                                    </div>
                                                                                {/if}
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- 单节点 结束-->
                                                            {/if}
                                                        {/foreach}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                                <!-- 公益节点 结束-->


                                <!-- VIP1节点 开始-->
                                {if $GoPass_Config['show_one_nodes'] == true }
                                    <div class="row">
                                        <div class="col-xl-12 box-col-12">
                                            <div class="card">
                                                <div class="card-header card-no-border o-hidden">
                                                    <h5>{$GoPass_Config['show_one_nodes_name']}</h5><span>流量倍率 -> 如果你使用 2 倍率的节点，消耗
                                                        1G 流量，则统计为 2G；速率 ->
                                                        标示速率为最高速率，但会受限于您本地网络、目标网络等；等级 -> 与会员套餐匹配；在线、负载 -> 表示节点当前使用人数，过载可能会影响线路体验
                                                    </span>
                                                </div>
                                                <div class="card-body p-t-0">
                                                    <div class="row">
                                                        {foreach $nodes as $node}
                                                            {if $node['class'] == 1}
                                                                <!-- 单节点 开始-->
                                                                <div class="col-md-6 col-sm-12">
                                                                    {if $node['mu_only'] != 1 && ($node['sort'] != 11 || $node['sort']!=12)}
                                                                        <div class="card browser-widget"
                                                                            {if $user->class >= 0}onclick="urlChange('{$node['id']}',0,{if $relay_rule != null}{$relay_rule->id}{else}0{/if})"
                                                                        {else}onclick="UserClassinsufficient()" 
                                                                        {/if}>

                                                                    {elseif $node['sort'] == 11}
                                                                        <div class="card browser-widget" {if $user->class>0}
                                                                                data-toggle="modal" data-target="#node-modal-{$node['id']}"
                                                                            {else}onclick="UserClassinsufficient()" 
                                                                            {/if}>
                                                                        {elseif $node['sort'] == 12}
                                                                            <div class="card browser-widget" {if $user->class>0}
                                                                                    data-toggle="modal"
                                                                                    data-target="#node-modal-{$node['id']}"
                                                                                {else}onclick="UserClassinsufficient()" 
                                                                                {/if}>

                                                                            {elseif ($node['sort'] == 0 || $node['sort'] == 10) && $node['mu_only'] != -1}
                                                                                {foreach $nodes_muport as $single_muport}
                                                                                    {$relay_rule = null}
                                                                                    {if $node['sort'] == 10 && $single_muport['user']['is_multi_user'] != 2}
                                                                                        {$relay_rule = $tools->pick_out_relay_rule($node['id'], $single_muport['server']->server, $relay_rules)}
                                                                                    {/if}
                                                                                    <div class="card browser-widget"
                                                                                        {if $user->class >= 1}onclick="urlChange('{$node['id']}',{$single_muport['server']->server},{if $relay_rule != null}{$relay_rule->id}{else}0{/if})"
                                                                                    {else}onclick="UserClassinsufficient()" 
                                                                                    {/if}>
                                                                                {/foreach}
                                                                            {/if}
                                                                            <div class="media card-body">
                                                                                <div class="media-img">
                                                                                    {$region = substr($node['name'],0,6)}
                                                                                    <i class="flag-icon
                                                                                                    flag-icon-{if $flags[$region] != ''}{$flags[$region]}{else}un{/if}
                                                                                                    nation-88
                                                                                                    {if $node['online']=='1'}nation
                                                                                                    {elseif $node['online']=='0'}nation-gray-suspended
                                                                                                    {else}nation-gray
                                                                                                    {/if}"></i>
                                                                                </div>
                                                                                <div class="media-body align-self-center">
                                                                                    <div>
                                                                                        {if $GoPass_Config['show_online_user'] == true}
                                                                                            <p>在线</p>
                                                                                            <h4>{if $user->isAdmin()}{$node['online_user']}
                                                                                                {else}
                                                                                                    {if $node['online_user'] == -1}
                                                                                                    N/A{else}
                                                                                                        {if $node['online_user'] > '10'}多{elseif $node['online_user'] < 5}少{else}中{/if}{/if}{/if}
                                                                                                    </h4>
                                                                                                </div>
                                                                                            {/if}
                                                                                            {if $GoPass_Config['show_node_traffic_rate'] == true}
                                                                                                <div>
                                                                                                    <p>倍率 </p>
                                                                                                    <h4>x{$node['traffic_rate']}</h4>
                                                                                                </div>
                                                                                            {/if}
                                                                                            {if $GoPass_Config['show_node_load'] == true}
                                                                                                <div>
                                                                                                    <p>负载 </p>
                                                                                                    <h4>{if $node['latest_load'] == -1}N/A{else}{$node['latest_load']}%{/if}
                                                                                                    </h4>
                                                                                                </div>
                                                                                            {/if}
                                                                                            {if $GoPass_Config['show_node_speedlimit'] == true}
                                                                                                <div>
                                                                                                    <p>限速 </p>
                                                                                                    <h4>{if {$node['bandwidth']}==0}∞{else}{$node['bandwidth']}{/if}
                                                                                                    </h4>
                                                                                                </div>
                                                                                            {/if}
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!-- 单节点 结束-->
                                                                        {/if}
                                                                    {/foreach}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            {/if}
                                            <!-- VIP1节点 结束-->


                                            <!-- VIP2节点 开始-->
                                            {if $GoPass_Config['show_two_nodes'] == true }
                                                <div class="row">
                                                    <div class="col-xl-12 box-col-12">
                                                        <div class="card">
                                                            <div class="card-header card-no-border o-hidden">
                                                                <h5>{$GoPass_Config['show_two_nodes_name']}</h5><span>流量倍率 ->
                                                                    如果你使用 0.2 倍率的节点，消耗 1G 流量，则统计为 0.2G；速率 ->
                                                                    标示速率为最高速率，但会受限于您本地网络、目标网络等；等级 -> 与会员套餐匹配；在线、负载 ->
                                                                    表示节点当前使用人数，过载可能会影响线路体验
                                                                </span>
                                                            </div>

                                                            <div class="card-body p-t-0">
                                                                <div class="row">
                                                                    {foreach $nodes as $node}
                                                                        {if $node['class'] == 2}
                                                                            <!-- 单节点 开始-->
                                                                            <div class="col-md-6 col-sm-12">
                                                                                {if $node['mu_only'] != 1 && ($node['sort'] != 11 || $node['sort']!=12)}
                                                                                    <div class="card browser-widget"
                                                                                        {if $user->class >= 2}onclick="urlChange('{$node['id']}',0,{if $relay_rule != null}{$relay_rule->id}{else}0{/if})"
                                                                                    {else}onclick="UserClassinsufficient()" 
                                                                                    {/if}>

                                                                                {elseif $node['sort'] == 11}
                                                                                    <div class="card browser-widget"
                                                                                        {if $user->class >= 2} data-toggle="modal"
                                                                                            data-target="#node-modal-{$node['id']}"
                                                                                        {else}onclick="UserClassinsufficient()" 
                                                                                        {/if}>

                                                                                    {elseif ($node['sort'] == 0 || $node['sort'] == 10) && $node['mu_only'] != -1}
                                                                                        {foreach $nodes_muport as $single_muport}
                                                                                            {$relay_rule = null}
                                                                                            {if $node['sort'] == 10 && $single_muport['user']['is_multi_user'] != 2}
                                                                                                {$relay_rule = $tools->pick_out_relay_rule($node['id'], $single_muport['server']->server, $relay_rules)}
                                                                                            {/if}
                                                                                            <div class="card browser-widget"
                                                                                                {if $user->class >= 2}onclick="urlChange('{$node['id']}',{$single_muport['server']->server},{if $relay_rule != null}{$relay_rule->id}{else}0{/if})"
                                                                                            {else}onclick="UserClassinsufficient()"
                                                                                            {/if}>
                                                                                        {/foreach}
                                                                                    {/if}
                                                                                    <div class="media card-body">
                                                                                        <div class="media-img">
                                                                                            {$region = substr($node['name'],0,6)}
                                                                                            <i class="flag-icon
                                                                                                    flag-icon-{if $flags[$region] != ''}{$flags[$region]}{else}un{/if}
                                                                                                    nation-88
                                                                                                    {if $node['online']=='1'}nation
                                                                                                    {elseif $node['online']=='0'}nation-gray-suspended
                                                                                                    {else}nation-gray
                                                                                                    {/if}"></i>
                                                                                        </div>
                                                                                        <div
                                                                                            class="media-body align-self-center">
                                                                                            <div>
                                                                                                {if $GoPass_Config['show_online_user'] == true}
                                                                                                    <p>在线</p>
                                                                                                    <h4>{if $user->isAdmin()}{$node['online_user']}
                                                                                                        {else}
                                                                                                            {if $node['online_user'] == -1}
                                                                                                            N/A{else}
                                                                                                                {if $node['online_user'] > '10'}多{elseif $node['online_user'] < 5}少{else}中{/if}{/if}{/if}
                                                                                                            </h4>
                                                                                                        </div>
                                                                                                    {/if}
                                                                                                    {if $GoPass_Config['show_node_traffic_rate'] == true}
                                                                                                        <div>
                                                                                                            <p>倍率 </p>
                                                                                                            <h4>x{$node['traffic_rate']}
                                                                                                            </h4>
                                                                                                        </div>
                                                                                                    {/if}
                                                                                                    {if $GoPass_Config['show_node_load'] == true}
                                                                                                        <div>
                                                                                                            <p>负载 </p>
                                                                                                            <h4>{if $node['latest_load'] == -1}N/A{else}{$node['latest_load']}%{/if}
                                                                                                            </h4>
                                                                                                        </div>
                                                                                                    {/if}
                                                                                                    {if $GoPass_Config['show_node_speedlimit'] == true}
                                                                                                        <div>
                                                                                                            <p>限速 </p>
                                                                                                            <h4>{if {$node['bandwidth']}==0}∞{else}{$node['bandwidth']}{/if}
                                                                                                            </h4>
                                                                                                        </div>
                                                                                                    {/if}
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <!-- 单节点 结束-->
                                                                                {/if}
                                                                            {/foreach}
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    {/if}
                                                    <!-- VIP2节点 结束-->

                                                    <!-- VIP3节点 开始-->
                                                    {if $GoPass_Config['show_three_nodes'] == true }
                                                        <div class="row">
                                                            <div class="col-xl-12 box-col-12">
                                                                <div class="card">
                                                                    <div class="card-header card-no-border o-hidden">
                                                                        <h5>{$GoPass_Config['show_three_nodes_name']}</h5>
                                                                        <span>流量倍率 -> 如果你使用 0.2 倍率的节点，消耗 1G 流量，则统计为
                                                                            0.2G；速率 ->
                                                                            标示速率为最高速率，但会受限于您本地网络、目标网络等；等级 -> 与会员套餐匹配；在线、负载 ->
                                                                            表示节点当前使用人数，过载可能会影响线路体验
                                                                        </span>
                                                                    </div>

                                                                    <div class="card-body p-t-0">
                                                                        <div class="row">
                                                                            {foreach $nodes as $node}
                                                                                {if $node['class'] == 3}
                                                                                    <!-- 单节点 开始-->
                                                                                    <div class="col-md-6 col-sm-12">
                                                                                        {if $node['mu_only'] != 1 && ($node['sort'] != 11 || $node['sort']!=12)}
                                                                                            <div class="card browser-widget"
                                                                                                {if $user->class >= 3}onclick="urlChange('{$node['id']}',0,{if $relay_rule != null}{$relay_rule->id}{else}0{/if})"
                                                                                            {else}onclick="UserClassinsufficient()"
                                                                                            {/if}>

                                                                                        {elseif $node['sort'] == 11}
                                                                                            <div class="card browser-widget"
                                                                                                {if $user->class >= 3}
                                                                                                    data-toggle="modal"
                                                                                                    data-target="#node-modal-{$node['id']}"
                                                                                                {else}onclick="UserClassinsufficient()"
                                                                                                {/if}>

                                                                                            {elseif ($node['sort'] == 0 || $node['sort'] == 10) && $node['mu_only'] != -1}
                                                                                                {foreach $nodes_muport as $single_muport}
                                                                                                    {$relay_rule = null}
                                                                                                    {if $node['sort'] == 10 && $single_muport['user']['is_multi_user'] != 3}
                                                                                                        {$relay_rule = $tools->pick_out_relay_rule($node['id'], $single_muport['server']->server, $relay_rules)}
                                                                                                    {/if}
                                                                                                    <div class="card browser-widget"
                                                                                                        {if $user->class >= 3}onclick="urlChange('{$node['id']}',{$single_muport['server']->server},{if $relay_rule != null}{$relay_rule->id}{else}0{/if})"
                                                                                                    {else}onclick="UserClassinsufficient()"
                                                                                                    {/if}>
                                                                                                {/foreach}
                                                                                            {/if}
                                                                                            <div class="media card-body">
                                                                                                <div class="media-img">
                                                                                                    {$region = substr($node['name'],0,6)}
                                                                                                    <i class="flag-icon
                                                                                                    flag-icon-{if $flags[$region] != ''}{$flags[$region]}{else}un{/if}
                                                                                                    nation-88
                                                                                                    {if $node['online']=='1'}nation
                                                                                                    {elseif $node['online']=='0'}nation-gray-suspended
                                                                                                    {else}nation-gray
                                                                                                    {/if}"></i>
                                                                                                </div>
                                                                                                <div
                                                                                                    class="media-body align-self-center">
                                                                                                    <div>
                                                                                                        {if $GoPass_Config['show_online_user'] == true}
                                                                                                            <p>在线</p>
                                                                                                            <h4>{if $user->isAdmin()}{$node['online_user']}
                                                                                                                {else}
                                                                                                                    {if $node['online_user'] == -1}
                                                                                                                    N/A{else}
                                                                                                                        {if $node['online_user'] > '10'}多{elseif $node['online_user'] < 5}少{else}中{/if}{/if}{/if}
                                                                                                                    </h4>
                                                                                                                </div>
                                                                                                            {/if}
                                                                                                            {if $GoPass_Config['show_node_traffic_rate'] == true}
                                                                                                                <div>
                                                                                                                    <p>倍率 </p>
                                                                                                                    <h4>x{$node['traffic_rate']}
                                                                                                                    </h4>
                                                                                                                </div>
                                                                                                            {/if}
                                                                                                            {if $GoPass_Config['show_node_load'] == true}
                                                                                                                <div>
                                                                                                                    <p>负载 </p>
                                                                                                                    <h4>{if $node['latest_load'] == -1}N/A{else}{$node['latest_load']}%{/if}
                                                                                                                    </h4>
                                                                                                                </div>
                                                                                                            {/if}
                                                                                                            {if $GoPass_Config['show_node_speedlimit'] == true}
                                                                                                                <div>
                                                                                                                    <p>限速 </p>
                                                                                                                    <h4>{if {$node['bandwidth']}==0}∞{else}{$node['bandwidth']}{/if}
                                                                                                                    </h4>
                                                                                                                </div>
                                                                                                            {/if}
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <!-- 单节点 结束-->
                                                                                        {/if}
                                                                                    {/foreach}
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            {/if}
                                                            <!-- VIP3节点 结束-->

                                                            <!-- v2ray配置信息 开始 -->
                                                            {foreach $nodes as $node}
                                                                {if $user->class >= $node['class']}
                                                                    {if $node['sort'] == 11}
                                                                        {$v2server=URL::getV2Url($user, $node['raw_node'], 1)}
                                                                        <div class="modal fade bounceIn animated" id="node-modal-{$node['id']}"
                                                                            tabindex="-1" role="dialog"
                                                                            aria-labelledby="node-modal-{$node['id']}"
                                                                            aria-hidden="true">
                                                                            <div class="modal-dialog modal-dialog-centered"
                                                                                role="document">
                                                                                <div class="modal-content">
                                                                                    <div class="modal-header">
                                                                                        <h5 class="modal-title">{$node['name']}</h5>
                                                                                        <button class="btn-close" type="button"
                                                                                            class="close" data-dismiss="modal"
                                                                                            aria-label="Close"></button>
                                                                                    </div>
                                                                                    <div class="modal-body">
                                                                                        <p>地址: {$v2server['add']}</p>
                                                                                        <p>端口: {$v2server['port']}</p>
                                                                                        <p>AlterId: {$v2server['aid']}</p>
                                                                                        <p>UUID: {$user->getUuid()}</p>
                                                                                        <p>传输协议:{if $v2server['net']=="tls"}tcp{else}{$v2server['net']}{/if}
                                                                                        </p>
                                                                                        {if $v2server['net']=="ws"}
                                                                                            <p>路径: {$v2server['path']}</p>
                                                                                        {/if}
                                                                                        {if ($v2server['net']=="ws" && $v2server['tls']=="tls")||$v2server['net']=="tls"||($v2server['net']=="tcp" && $v2server['tls']=="tls")}
                                                                                            <p>TLS:TLS
                                                                                            </p>
                                                                                        {/if}
                                                                                        <p class="mb-0"> VMess链接: </p>
                                                                                        <p id="vmess-link-{$node['id']}" rows="1"
                                                                                            spellcheck="false">
                                                                                            <code>{URL::getV2Url($user, $node['raw_node'])}
                                                                                            </code>
                                                                                        </p>

                                                                                    </div>
                                                                                    <div class="modal-footer">
                                                                                        <button class="btn btn-primary copy-text"
                                                                                            type="button" data-clipboard-action="copy"
                                                                                            data-clipboard-target="#vmess-link-{$node['id']}">复制VMess链接</button>
                                                                                        <button class="btn btn-light" type="button"
                                                                                            class="close" data-dismiss="modal"
                                                                                            aria-label="Close">关闭</button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    {elseif $node['sort'] == 12}
                                                                        {$v2server=URL::getV2Url($user, $node['raw_node'], 1)}
                                                                        <div class="modal fade" id="node-modal-{$node['id']}"
                                                                            tabindex="-1" role="dialog"
                                                                            aria-labelledby="node-modal-{$node['id']}"
                                                                            aria-hidden="true">
                                                                            <div class="modal-dialog modal-dialog-centered"
                                                                                role="document">
                                                                                <div class="modal-content">
                                                                                    <div class="modal-header">
                                                                                        <h5 class="modal-title">{$node['name']}</h5>
                                                                                        <button class="btn-close" type="button"
                                                                                            class="close" data-dismiss="modal"
                                                                                            aria-label="Close"></button>
                                                                                    </div>
                                                                                    <div class="modal-body">
                                                                                        <p>地址: {$v2server['add']}</p>
                                                                                        <p>端口: {$v2server['port']}</p>
                                                                                        <p>AlterId: {$v2server['aid']}</p>
                                                                                        <p>UUID: {$user->getUuid()}</p>
                                                                                        <p>传输协议:{if $v2server['net']=="tls"}tcp{else}{$v2server['net']}{/if}
                                                                                        </p>
                                                                                        {if $v2server['net']=="ws"}
                                                                                            <p>路径: {$v2server['path']}</p>
                                                                                        {/if}
                                                                                        {if ($v2server['net']=="ws" && $v2server['tls']=="tls")||$v2server['net']=="tls"||($v2server['net']=="tcp" && $v2server['tls']=="tls")}
                                                                                            <p>TLS:TLS
                                                                                            </p>
                                                                                        {/if}
                                                                                        <p class="mb-0"> VMess链接: </p>
                                                                                        <p id="vmess-link-{$node['id']}" rows="1"
                                                                                            spellcheck="false">
                                                                                            <code>{URL::getV2Url($user, $node['raw_node'])}
                                                                                            </code>
                                                                                        </p>

                                                                                    </div>
                                                                                    <div class="modal-footer">
                                                                                        <button class="btn btn-primary copy-text"
                                                                                            type="button" data-clipboard-action="copy"
                                                                                            data-clipboard-target="#vmess-link-{$node['id']}">复制VMess链接</button>
                                                                                        <button class="btn btn-light" type="button"
                                                                                            class="close" data-dismiss="modal"
                                                                                            aria-label="Close">关闭</button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    {/if}
                                                                {/if}
                                                            {/foreach}
                                                            <!-- v2ray配置信息 结束 -->

                                                        </div><!-- container-fluid -->
                                                    </div><!-- Page Body End -->
                                                    <!-- footer start-->
                                                    {include file='user/components/footer.tpl'}
                                                    {include file='user/components/footer-files.tpl'}
                                                </div><!-- page-body-wrapper End-->

    </body>

    </html>