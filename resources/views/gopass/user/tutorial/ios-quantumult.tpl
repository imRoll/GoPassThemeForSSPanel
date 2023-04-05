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
                                            src="/theme/gopass/images/app/quantumult.png" alt="">
                                        <div class="media-body">
                                            <h6 class="f-w-600 font-primary">在 iPhone 上使用
                                                Quantumult</h6>
                                            <p>推荐 <span><i class="fa fa-star font-warning"></i><i
                                                        class="fa fa-star font-warning"></i><i
                                                        class="fa fa-star font-warning"></i><i
                                                        class="fa fa-star font-warning"></i><i
                                                        class="fa fa-star font-warning"></i></span></p>
                                        </div>
                                    </div>
                                    <p class="mt-2">Quantumult 是在 iOS 平台上的客户端软件，支持 Shadowsocks、ShadowsocksR 以及
                                        VMess 协议。<br>目前 Quantumult 已经被 Apple 根据政府要求从中国大陆区的 App
                                        Store移除，之前在中国大陆商店购买此软件的用户将不能获得更新或重新下载。</p>
                                    <p class="txt-secondary">* 这是一个付费软件，你需要购买才能使用。 *</p>
                                    <p>如果您有大陆在地区以外的App Store帐号,可以点击右侧链接购买下载 <a class="txt-primary" target=_blank
                                            href="https://itunes.apple.com/us/app/quantumult/id1252015438?ls=1&mt=8"><b>APP
                                                STORE</b></a></p>
                                    <h5 class="f-w-600">获取订阅</h5>
                                    <p class="txt-secondary">此处将显示您的一键导入订阅链接，请注意! 需为登录状态：</p>
                                    <p>
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
                                    </p>
                                    <p><a class="txt-primary" href="#" data-toggle="modal"
                                            data-target="#manual-import">一键导入不成功？<u>试试手动导入</u>
                                            →</a></p>
                                    <div id="galley">
                                        <div class="row">
                                            <div class="col-xl-3 col-md-4 col-6">
                                                <img class="img-thumbnail"
                                                    data-original="/theme/gopass/images/app/Quantumult-1.jpeg"
                                                    src="/theme/gopass/images/app/Quantumult-1.jpeg">
                                            </div>
                                            <div class="col-xl-9 col-md-8 col-6">
                                                <h5>配置 Quantumult - 1</h5>
                                                <p>打开 Quantumult，点击底部导航栏的「设置」进入设置页面。</p>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xl-3 col-md-4 col-6">
                                                <img class="img-thumbnail"
                                                    data-original="/theme/gopass/images/app/Quantumult-2.png"
                                                    src="/theme/gopass/images/app/Quantumult-2.png">
                                            </div>
                                            <div class="col-xl-9 col-md-8 col-6">
                                                <h5>配置 Quantumult - 2</h5>
                                                <p>在「名称」中输入本站名称并保存，随后在「链接」中粘贴上方 获取订阅
                                                    中您需要使用的订阅类型并保存。<br>随后点击右上角保存，此时会自动更新获取服务器。</p>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xl-3 col-md-4 col-6">
                                                <img class="img-thumbnail"
                                                    data-original="/theme/gopass/images/app/Quantumult-3.jpeg"
                                                    src="/theme/gopass/images/app/Quantumult-3.jpeg">
                                            </div>
                                            <div class="col-xl-9 col-md-8 col-6">
                                                <h5>配置 Quantumult - 3</h5>
                                                <p>进入「订阅」子页面并点击右上角的加号，从弹出菜单中选择第一个「服务器」。</p>
                                            </div>
                                        </div>
                                    </div>

                                    <h5 class="mt-3 f-w-600">开始使用</h5>
                                    <p>回到 Quantumult 主页，点击底部导航栏的 圆 logo 图标，选择您需要的节点，随后打开右上角开关即可。
                                        <br>如提示添加 VPN 配置，请点击 Allow 并验证您的 密码、Touch ID、Face ID 。
                                    </p>

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
                                Quantumult 订阅链接</h5>
                            <button class="btn-close" type="button" class="close" data-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                                                                                    <p class="mb-0">订阅链接: </p>
                                                                                    <p id="vmess-link" rows="1"
                                                                                        spellcheck="false">
                                                                                        <code>{$subInfo['v2ray']}{if $GoPass_Config['enable_sub_extend'] == true}&extend=1{/if}
                                                                                        </code>
                                                                                    </p>
                            <p class="mt-2 font-13">
                                打开Quantumult，轻点底栏的<span class="font-primary">设置</span>，轻点<span
                                        class="font-primary">订阅</span>，轻点右上角的<span class="font-primary">+</span>，选择<span
                                                class="font-primary">服务器</span>，名称填入
                                <span class="font-primary">{$config['appName']}</span> ，粘贴<span class="font-primary">订阅链接</span>，最后保存即可。
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