<?php

/*
#
#   ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ 
#  ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
#  ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ 
#  ▐░▌          ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          ▐░▌          
#  ▐░▌ ▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ 
#  ▐░▌▐░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
#  ▐░▌ ▀▀▀▀▀▀█░▌▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌
#  ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌          ▐░▌          ▐░▌
#  ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░▌          ▐░▌       ▐░▌ ▄▄▄▄▄▄▄▄▄█░▌ ▄▄▄▄▄▄▄▄▄█░▌
#  ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌          ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
#   ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀            ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀ 
#
#                           https://t.me/JUSTGOTHEHE
*/

####### 主题版本 #######
$GoPass_Config['GoPass_js_version'] = 'v1';         // 可随便写，每次获得最新授权文件就改变这个值进行强制缓存刷新，避免旧的浏览器缓存继续生效
$GoPass_Config['layout_color_mode'] = '1';        // 1-light模式,2-边栏深色,3-深色模式
$GoPass_Config['layout_sidebar_mode'] = '1';      // 1-侧边栏置左,2-侧边栏置上,3-分栏,4-盒型
$GoPass_Config['hide_sidebar'] = false;          //收缩侧边栏,当[侧边栏置上]时无效
$GoPass_Config['dateusage_theme'] = '2';        // 流量使用情况展现方式 1和2
$GoPass_Config['slogan'] = '穿越一切阻碍，寻求知识的渴望!';        // 网站副标题
$GoPass_Config['google_analytics_code'] = 'GTM-5VKL84G';    // Google 统计代码，留空为不开启，code格式为 'UA-123456789-1'

####### 首页 #######
$GoPass_Config['index_show_alert_to_tutorial'] = true;   // 首页是否一直显示进入教程的横幅 （此项设置为false后，新用户的首页依旧会显示引导进入教程的横幅）
$GoPass_Config['enable_index_popup_ann'] = true;   //  是否在用户登录后弹出重要公告
$GoPass_Config['enable_index_popup_ann_time'] = false;   //  重要公告弹窗是否24小时只弹一次

$GoPass_Config['subscribe_type'] = ['ss', 'ssr', 'v2ray'];    // 'ss','ssr','v2ray' 选择网站支持的代理协议，会影响复制订阅链接和一键导入按钮的显示，若无ss，则不显示相关ss订阅

$GoPass_Config['lastest_update_title'] = '近期更新'; // 可以更改近期更新的标题
$GoPass_Config['lastest_update'] = [    // 这里可以继续添加或删除数组来更改您的信息
    '1' => [
        array(
            'title' => '限时开启新会员试用计划',    //标题
            'content' => '通过 Gopass 的服务，新用户可以免费试用2880分钟!',    //内容
        )
    ],
    '2' => [
        array(
            'title' => '解锁流媒体，观赏和聆听优质的内容',    //标题
            'content' => '通过 Gopass 的服务，可以观看包括 Netflix、Hulu、HBO、TVB、Happyon、AbemaTV 等在内的多种流媒体视频，聆听包括 Spotify、Pandora 等在内的流媒体音乐。',    //内容
        )
    ],
    '3' => [
        array(
            'title' => '海外追剧，跨境电商的利器',    //标题
            'content' => '专为您有海外需求而设计的服务，随时随地，全平台高速访问。可靠的基础设施，提供便捷的诸多功能',    //内容
        )
    ],
    '4' => [
        array(
            'title' => '在你心爱的电子设备中使用，无论是手机还是电脑，随时随处可用。',    //标题
            'content' => 'Gopass我们的服务适用于 macOS、iOS、Android、Windows 和 Linux，借助第三方客户端，可在手机、电脑、路由器、游戏机、电视盒子中使用。',    //内容	
        )
    ],
    '5' => [
        array(
            'title' => '出色的体验，意想不到的价格',    //标题
            'content' => '不要把宝贵的时间，浪费在等待上。即刻开启全球网络中继服务，在任何时间任何地点访问全球互联网。',    //内容
        )
    ],
];

$GoPass_Config['show_share'] = true;   // 是否显示共享账号
$GoPass_Config['share_account'] = [    // 一个array为一个共享账号
    'Netflix' => [
        array(
            'account' => 'Gopass_Netflix',    //帐号
            'passwd' => 'Gopass_password',    //密码
            'class' => 1            //用户等级要求		

        )
    ],
    'HBO' => [
        array(
            'account' => 'Gopass_Hbo',    //帐号
            'passwd' => 'Gopass_password',    //密码
            'class' => 2            //用户等级要求		

        )
    ],
    'Hulu' => [
        array(
            'account' => 'Gopass_Hulu',    //帐号
            'passwd' => 'Gopass_password',    //密码
            'class' => 3            //用户等级要求		

        )
    ],
    'Apple ID' => [
        array(
            'account' => 'Gopass_Hulu',    //帐号
            'passwd' => 'Gopass_password',    //密码
            'class' => 3            //用户等级要求		

        )
    ],
];
// 不在首页显示的一键导入按钮，clash | kitsunebi | quantumult | shadowrocket | v2ray | ss | ssr | ssd | surge | surfboard | copy-ss | copy-ssr | copy-vmess
$GoPass_Config['index_hidden_import_buttons'] = ['copy-ss', 'copy-ssr', 'ssd', 'ss', 'ssr'];


####### 订阅设置 #######
$GoPass_Config['force_user_to_bind_tg_when_join_group'] = true;   // 设置为true时，限制只有绑定了tg的用户才能加入群组，如未绑定将会被踢出群组。

$GoPass_Config['enable_index_subinfo'] = true;    // 是否在首页显示订阅链接复制或一键导入等按钮
$GoPass_Config['support_sub_type'] = ['v2ray', 'ss', 'ssr'];    // 选择网站支持的代理协议，会影响复制订阅链接和一键导入按钮的显示。比如删除这个参数里的ss，则 Surge 订阅按钮不会显示再首页上，教程里也不会显示Surge教程
$GoPass_Config['quantumult_mode'] = 'single';   // quantumult 一键导入按钮的模式，可选 "single"或"all"。选择single的话只能导入一种订阅（比如只能导入SSR订阅）。选择all的话可以一次性导入全部订阅类型（SS+SSR+V2RAY），但是导入后需要用户手动更新订阅才会出现节点。
$GoPass_Config['quantumult_sub_type'] = 'v2ray';    // quanmutult 的一键导入的订阅类型，可选 ss、ssr、v2ray (仅在quantumult_mode设置为single时生效)
$GoPass_Config['enable_copy_urls_to_clipboard'] = false;   // 设置为 true 时，首页会显示 批量复制XX链接到剪贴板 的按钮，不建议启用。
$GoPass_Config['enable_sub_extend'] = false;   //  设置为true时，订阅将包含等级过期时间和流量信息


####### 商店 #######
$GoPass_Config['activity_shop'] = true;     //是否显示活动卡片

$GoPass_Config['shop_mode'] = '2';  //商店模式 1卡片模式 2自由模式

$GoPass_Config['enable_shop_trail'] = true;   // 商店是否显示新用户试用计划,只有在用户等级小于等于0的情况下才会显示
$GoPass_Config['shop_trail_shopid'] = '10';   // 试用计划的商品ID

$GoPass_Config['plan_1_enable'] = true;    // 是否显示第一个商品计划
$GoPass_Config['plan_1_name'] = '入门版';    // 第一个商品计划的名字

$GoPass_Config['plan_2_enable'] = true;    // 是否显示第二个商品计划
$GoPass_Config['plan_2_name'] = '标准版';    // 第二个商品计划的名字

$GoPass_Config['plan_3_enable'] = true;    // 是否显示第三个商品计划
$GoPass_Config['plan_3_name'] = '畅享版';    // 第三个商品计划的名字

$GoPass_Config['plan_4_enable'] = false;    // 是否显示第四个商品计划
$GoPass_Config['plan_4_name'] = '定制';  // 第四个商品计划的名字

$GoPass_Config['shops_price'] = [            //最多可设置四个商品计划，在这里需要你设置对应的商品ID，每个商品计划可自行配置
    'plan_1' => [                //代表第一个商品计划，如果未开启第一个计划，请删除这段代码
        'p1_price_1' => '1',        //代表第一个商品计划中的商品id
        'p1_price_2' => '4',
        'p1_price_3' => '7'
    ],
    'plan_2' => [
        'p2_price_1' => '2',
        'p2_price_2' => '5',
        'p2_price_3' => '8'
    ],
    'plan_3' => [
        'p3_price_1' => '3',
        'p3_price_2' => '6',
        'p3_price_3' => '9'
    ]
];


$GoPass_Config['shops_free_price'] = [   // 在这里需要你设置对应的商品ID，每个商品计划可自行配置
    'plan_free' => [
        'd_price_1' => '12',        //代表商品id
        'd_price_2' => '13',
        'd_price_3' => '14',
        'd_price_4' => '',
        'd_price_5' => '',
        'd_price_6' => '',
        'd_price_7' => '',
        'd_price_8' => '',
        'd_price_9' => ''
    ]
];

$GoPass_Config['shop_enable_traffic_package'] = true;   // 商店是否显示流量叠加包的选项（仅在用户购买过商品后才会显示）
$GoPass_Config['shop_traffic_package'] = '0.8';        // 1G 流量多少元

$GoPass_Config['quantit_show'] = true;             // 商店是否显示按量付费的选项
$GoPass_Config['quantit_money'] = '0.8';             // 每使用1G流量扣多少元
$GoPass_Config['quantit_class'] = '1';             // 按量等级设置
$GoPass_Config['quantit_connector'] = '2';        // 按量设备数
$GoPass_Config['quantit_speedlimit'] = '100.00';     // 按量端口速率 格式100.00


####### 通用设置 #######
$GoPass_Config['enable_telegram_button'] = true;            // 是否显示侧边栏 Telegram 按钮
$GoPass_Config['telegram_group_link'] = '##';               // Telegram 按钮的链接
$GoPass_Config['enable_tencent_button'] = false;            // 是否显示侧边栏 QQ群 按钮
$GoPass_Config['tencent_group_link'] = '##';               // QQ 按钮的链接


####### 在线客服系统 #######
// Crisp客服 配置
$GoPass_Config['enable_crisp'] = false;   // 是否启用 Crisp 在线客服系统 https://crisp.chat
$GoPass_Config['enable_crisp_outside'] = false;   // 是否对未登录的用户也启用 Crisp，设置为 false 的话，着陆页和登录/注册等页面不会显示 Crisp，同时对 Chatra 也是生效的
$GoPass_Config['crisp_wesite_id'] = '';    // Crisp 的网站ID，格式为 '18b46e92-eb21-76d3-bfb7-8f2ae9adba64'

// Chatra客服 配置
$GoPass_Config['enable_chatra'] = false;    // 是否启用 Chatra 在线客服系统 https://chatra.io
$GoPass_Config['chatra_id'] = '';    // Chatra 的 ChatraID，可以在 Chatra 提供的网站代码里找到


####### 节点列表 #######
$GoPass_Config['show_node_load'] = true;          // 是否显示节点的负载
$GoPass_Config['show_online_user'] = true;        // 是否显示节点的在线人数
$GoPass_Config['show_node_traffic_rate'] = true;  // 是否显示节点的流量倍率
$GoPass_Config['show_node_speedlimit'] = true;    // 是否显示节点的限速

$GoPass_Config['show_welfare_nodes'] = false;  // 是否显示公益节点
$GoPass_Config['show_welfare_nodes_name'] = "试用节点";      // 是否显示VIP1 节点
$GoPass_Config['show_one_nodes'] = true;      // 是否显示VIP1 节点
$GoPass_Config['show_one_nodes_name'] = "试用节点";      // 是否显示VIP1 节点
$GoPass_Config['show_two_nodes'] = true;      // 是否显示VIP2 节点
$GoPass_Config['show_two_nodes_name'] = "VIP 节点";      // 是否显示VIP1 节点
$GoPass_Config['show_three_nodes'] = false;      // 是否显示VIP3 节点
$GoPass_Config['show_three_nodes_name'] = "VIP-3节点";      // 是否显示VIP3 节点


####### 节点设置 #######
$GoPass_Config['show_protocol'] = true;   // 是否允许用户自定义混淆和协议
$GoPass_Config['show_method'] = true;    // 是否允许用户自定义加密方式
$GoPass_Config['show_confound'] = true;   // 是否显示协议和混淆设置。
$GoPass_Config['show_reset_port'] = true;   // 是否允许用户重置端口设置，.config.php里的 port_price （重置端口价格）。
