<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 下载和教程 | 邀请好友获奖励 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github
    </title>
    {include file='user/components/header-files.tpl'}
    <link rel="stylesheet" type="text/css" href="/theme/gopass/css/viewer.css">
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
                                <h5>下载和教程</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a></li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">下载和教程</li>
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
                                <div class="card-body">
                                    <div class="media"><img class="img-50 img-fluid m-r-20"
                                            src="/theme/gopass/images/app/v2rayNG.png" alt="">
                                        <div class="media-body">
                                            <h6 class="f-w-600 font-primary">在安卓设备上使用
                                                V2rayNG</h6>
                                            <p>推荐 <span><i class="fa fa-star font-warning"></i><i
                                                        class="fa fa-star font-warning"></i><i
                                                        class="fa fa-star font-warning"></i><i
                                                        class="fa fa-star font-warning"></i><i
                                                        class="fa fa-star font-warning"></i></span></p>
                                        </div>
                                    </div>
                                    <p class="mt-2">V2rayNG 是在 Android 平台上的客户端软件，支持 VMess 及 Shadowsocks 协议。</p>
                                    <p> <a href="/client-download/v2rayng.apk"
                                            class="btn btn-icon icon-left btn-primary btn-app btn-sm btn-round"
                                            target="blank"><i class="icofont icofont-download-alt"></i> 下载客户端</a></p>
                                    <h5 class="f-w-600">订阅链接</h5>
                                    <p style="border-left: 4px solid #ecf3fa;padding-left: 15px;">
                                        {$subInfo['v2ray']}{if $malio_config['enable_sub_extend'] == true}&extend=1{/if}
                                    </p>
                                    <p>
                                        <a href="##"
                                            class="btn btn-icon icon-left btn-primary btn-app btn-sm btn-round copy-text"
                                            data-clipboard-text="{$subInfo['v2ray']}{if $malio_config['enable_sub_extend'] == true}&extend=1{/if}"><i
                                                class="gopass-v2rayng"></i> 复制 V2Ray 订阅链接</a>
                                    </p>
                                    <div id="galley">
                                        <div class="row">
                                            <div class="col-xl-3 col-md-4 col-6">
                                                <img class="img-thumbnail"
                                                    data-original="/theme/gopass/images/app/V2rayNG-1.png"
                                                    src="/theme/gopass/images/app/V2rayNG-1.png">
                                            </div>
                                            <div class="col-xl-9 col-md-8 col-6">
                                                <h5>配置 V2rayNG - 1</h5>
                                                <p>打开<b>V2rayNG</b>点击左上角的菜单图标打开侧边栏，随后点击<b>订阅设置</b>。</p>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xl-3 col-md-4 col-6">
                                                <img class="img-thumbnail"
                                                    data-original="/theme/gopass/images/app/V2rayNG-2.jpg"
                                                    src="/theme/gopass/images/app/V2rayNG-2.jpg">
                                            </div>
                                            <div class="col-xl-9 col-md-8 col-6">
                                                <h5>配置 V2rayNG - 2</h5>
                                                <p>点击右上角的加号按钮，在新页面的备注中填写本站名称，地址输入框中粘贴上方<b>获取订阅</b>中的订阅链接并点击右上角的<b>√</b>。</p>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xl-3 col-md-4 col-6">
                                                <img class="img-thumbnail"
                                                    data-original="/theme/gopass/images/app/V2rayNG-3.jpeg"
                                                    src="/theme/gopass/images/app/V2rayNG-3.jpeg">
                                            </div>
                                            <div class="col-xl-9 col-md-8 col-6">
                                                <h5>配置 V2rayNG - 3</h5>
                                                <p>再次从侧边栏进入<b>设置</b>页面，点击 路由模式 将其更改为<b>绕过局域网及大陆地址</b>。</p>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xl-3 col-md-4 col-6">
                                                <img class="img-thumbnail"
                                                    data-original="/theme/gopass/images/app/V2rayNG-4.png"
                                                    src="/theme/gopass/images/app/V2rayNG-4.png">
                                            </div>
                                            <div class="col-xl-9 col-md-8 col-6">
                                                <h5>配置 V2rayNG - 4</h5>
                                                <p>随后从侧边栏回到 <b>配置文件</b> 页面，点击右上角的省略号图标选择更新订阅。</p>
                                            </div>
                                        </div>
                                    </div>

                                    <h5 class="mt-3 f-w-600">开始使用</h5>
                                    <p>点击选择您中意的节点，点击右下角的按钮即可连接。如操作系统提示添加 VPN 配置，请点击<b>运行</b>并验证您的 密码、指纹等。
                                
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- container-fluid -->
            </div><!-- Page Body End -->


            <!-- footer start-->
            {include file='user/components/footer.tpl'}
            {include file='user/components/footer-files.tpl'}
            {include file='user/components/scripts.tpl'}
        </div><!-- page-body-wrapper End-->
        <script src="/theme/gopass/js/bootstrap/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/waypoints@4.0.0/lib/jquery.waypoints.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/d3@3.5.0/d3.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/c3@0.4.10/c3.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bowser@1.9.4/bowser.min.js"></script>
        <script src="/theme/gopass/js/viewer.min.js"></script>
        <script>
            function importSublink(client) {
                if (client == 'quantumult') {
                    oneclickImport('quantumult', '{if $GoPass_Config["quantumult_sub_type"]=="v2ray"}{$subInfo["quantumult_v2"]}{elseif $GoPass_Config["quantumult_sub_type"]=="ss"}{$subInfo["ss"]}{elseif $GoPass_Config["quantumult_sub_type"]=="ssr"}{$subInfo["ssr"]}{/if}');
                }
                if (client == 'shadowrocket') {
                    oneclickImport('shadowrocket','{$subInfo["shadowrocket"]}')
                };
                if (client == 'surfboard') {
                    oneclickImport('surfboard','{$subInfo["surfboard"]}')
                };
                if (client == 'surge2') {
                    oneclickImport('surge','{$subInfo["surge2"]}')
                };
                if (client == 'surge3') {
                    oneclickImport('surge3','{$subInfo["surge3"]}')
                };
                if (client == 'surge4') {
                    oneclickImport('surge3','{$subInfo["surge4"]}')
                };
                if (client == 'clash') {
                    oneclickImport('clash','{$subInfo["clash"]}')
                };
                if (client == 'ssr') {
                    oneclickImport('ssr','{$subInfo["ssr"]}')
                }
            }

            appName = "{$config['appName']}";

            setTimeout(loadTrafficChart(), 3000);
        </script>
        <script>
            function Copyconfig(url, id, jumpurl = "") {
                $.ajax({
                    url: url,
                    type: 'GET',
                    async: false,
                    success: function(res) {
                        if (res) {
                            $("#result").modal();
                            $("#msg").html("获取成功");
                            $(id).data('data', res);
                            console.log(res);
                        } else {
                            $("#result").modal();
                            $("#msg").html("获取失败，请稍后再试");
                        }
                    }
                });
                const clipboard = new ClipboardJS('.copy-config', {
                    text: function() {
                        return $(id).data('data');
                    }
                });
                clipboard.on('success', function(e) {
                    var title = '已复制到您的剪贴板';
                    if (jumpurl != '') {
                        title = '复制成功，即将跳转到 APP';
                    }
                    swal({
                        type: 'success',
                        title: title,
                        showConfirmButton: false,
                        timer: 1500,
                        onClose: () => {
                            if (jumpurl != "") {
                                window.setTimeout(function() {
                                    window.location.href = jumpurl;
                                }, 1000);
                            }
                        }
                    })
                });
                clipboard.on("error", function(e) {
                    console.error('Action:', e.action);
                    console.error('Trigger:', e.trigger);
                    console.error('Text:', e.text);
                });
            }
        </script>
        <script>
            window.addEventListener('DOMContentLoaded', function() {
                var galley = document.getElementById('galley');
                var viewer = new Viewer(galley, {
                    url: 'data-original',
                    title: function(image) {
                        return image.alt + ' (' + (this.index + 1) + '/' + this.length + ')';
                    },
                });
            });
        </script>
</body>

</html>