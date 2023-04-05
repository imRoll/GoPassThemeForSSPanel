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
                                            src="/theme/gopass/images/app/clash.png" alt="">
                                        <div class="media-body">
                                            <h6 class="f-w-600 font-primary">在 Windows 上使用
                                                Clash</h6>
                                            <p>推荐 <span><i class="fa fa-star font-warning"></i><i
                                                        class="fa fa-star font-warning"></i><i
                                                        class="fa fa-star font-warning"></i><i
                                                        class="fa fa-star font-warning"></i><i
                                                        class="fa fa-star font-warning"></i></span></p>
                                        </div>
                                    </div>
                                    <p class="mt-2">Clash for Windows 是一个拥有 GUI 界面基于 Clash 可自定义规则的 Windows 代理应用。
                                    支持 Shadowsocks 协议和其 simple-obfs 插件、v2ray-plugin 插件以及 VMess 协议和其 TCP、WebSocket
                                        等传输方式。</p>
                                    <h5 class="f-w-600">应用下载</h5>
                                    <p>
                                        <a href="/client-download/Clash-Windows.7z"
                                            class="btn btn-icon icon-left btn-primary btn-app btn-sm btn-round"
                                            target="blank"><i class="icofont icofont-cloud-download"></i> 下载客户端</a>
                                            </p>
                                    <h5 class="f-w-600">获取订阅</h5>
                                    <p class="txt-secondary">此处将显示您的一键导入订阅链接，请注意! 需为登录状态：</p>
                                    <p>
                                                {if (in_array("ss",$GoPass_Config['support_sub_type'])) || (in_array("v2ray",$GoPass_Config['support_sub_type']))}
                                                    {if (!in_array("clash",$GoPass_Config['index_hidden_import_buttons']))}
                                                        <a href="##" class="btn btn-clash btn-sm btn-pill p-l-rem-1 p-r-rem-1"
                                                            onclick="importSublink('clash')"><i class="gopass-clash"></i>
                                                            一键导入Clash配置</a>
                                                    {/if}
                                                {/if}
                                    </p>
                                    <p><a class="txt-primary" href="#" data-toggle="modal"
                                            data-target="#manual-import">一键导入不成功？<u>试试手动导入</u>
                                            →</a></p>
                                    <div id="galley">
                                        <div class="row">
                                            <div class="col-xl-3 col-md-4 col-6">
                                                <img class="img-thumbnail"
                                                    data-original="/theme/gopass/images/app/clash-1.jpg"
                                                    src="/theme/gopass/images/app/clash-1.jpg">
                                            </div>
                                            <div class="col-xl-9 col-md-8 col-6">
                                                <h5>配置 Clash for Windows - 1</h5>
                                                <p>打开 Clash for Windows，从任务栏点击 Clash for Windows 图标以显示主页面。</p>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xl-3 col-md-4 col-6">
                                                <img class="img-thumbnail"
                                                    data-original="/theme/gopass/images/app/clash-2.jpg"
                                                    src="/theme/gopass/images/app/clash-2.jpg">
                                            </div>
                                            <div class="col-xl-9 col-md-8 col-6">
                                                <h5>配置 Clash for Windows - 2</h5>
                                                <p>随后按 1 -> 2 -> 3 的顺序从侧边栏进入配置管理页面，并在该输入框中粘贴上方 获取订阅 中的订阅链接并点击 Download。</p>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xl-3 col-md-4 col-6">
                                                <img class="img-thumbnail"
                                                    data-original="/theme/gopass/images/app/clash-3.jpg"
                                                    src="/theme/gopass/images/app/clash-3.jpg">
                                            </div>
                                            <div class="col-xl-9 col-md-8 col-6">
                                                <h5>配置 Clash for Windows - 3</h5>
                                                <p>待下载完成后单击刚刚下载的配置文件，它会变成橙色，表示当前正在使用。</p>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xl-3 col-md-4 col-6">
                                                <img class="img-thumbnail"
                                                    data-original="/theme/gopass/images/app/clash-4.jpg"
                                                    src="/theme/gopass/images/app/clash-4.jpg">
                                            </div>
                                            <div class="col-xl-9 col-md-8 col-6">
                                                <h5>配置 Clash for Windows - 4</h5>
                                                <p>随后从侧边栏回到 General，勾选下方的 System Proxy (设为系统代理) 以及 Auto Launch (开机自启)。</p>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xl-3 col-md-4">
                                            </div>
                                            <div class="col-xl-9 col-md-8">
                                    <h5 class="mt-3 f-w-600">开始使用</h5>
                                    <p>打开 Clash for Windows，从侧边栏进入 Proxies，上方选择 Rule，然后在下方的 Proxy 策略组 中选择 AUTO
                                        或者你中意的节点即可。
                                    </p>
                                            </div>
                                        </div>
                                    </div>



                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- container-fluid -->
            </div><!-- Page Body End -->


            <div class="modal fade" id="manual-import" tabindex="-1" role="dialog" aria-labelledby="manual-import"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered  modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">
                                Clash 订阅链接</h5>
                            <button class="btn-close" type="button" class="close" data-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body text-center">
                            <p class="mt-2 font-13">
                                复制链接以下连接关闭此弹窗,然后按照接下来的方法订阅节点</p>
                            <p id="vmess-link" rows="1" spellcheck="false">
                                <code>{$subInfo['v2ray']}{if $GoPass_Config['enable_sub_extend'] == true}&extend=1{/if}</code>
                            </p>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-primary copy-text" type="button" data-clipboard-action="copy"
                                data-clipboard-target="#vmess-link">复制订阅链接</button>
                            <button class="btn btn-light" type="button" class="close" data-dismiss="modal"
                                aria-label="Close">关闭</button>
                        </div>
                    </div>
                </div>
            </div>

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