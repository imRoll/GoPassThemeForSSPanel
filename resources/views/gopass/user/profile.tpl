<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 我的帐号 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
                                <h5>我的帐号</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a></li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">我的帐号</li>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-xl-4">
                            <div class="card profile">
                                <div class="card-header self o-hidden">
                                    <div class="row">
                                        <div class="col-auto profile-vector"><img
                                                class="img-60 rounded-circle img-fluid" alt=""
                                                src="../assets/images/user/user.png"></div>
                                        <div class="col-8">
                                            <h4 class="mb-1">{$user->user_name}</h4>
                                            <p class="font-light mb-1">{$user->email}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row my-3 m-b-30">
                                        <div class="col-auto"><i class="icofont icofont-key icofont-3x"></i></div>
                                        <div class="col profile">
                                            <h5 data-bs-toggle="modal" data-bs-target="#pwd-up">
                                                修改密码
                                                <i class="fa fa-gear"></i>
                                            </h5>
                                            <p class="mb-1">定期修改为高强度密码以保护您的账号</p>
                                        </div>
                                        <div class="form-footer">
                                            <div class="modal fade" id="pwd-up" tabindex="-1" role="dialog"
                                                aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <form class="form-horizontal" id="user_profile_password_update">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" >修改密码
                                                                </h5>
                                                                <button class="btn-close" type="button"
                                                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="mb-3">
                                                                    <label class="col-form-label"
                                                                        for="recipient-name">当前密码:</label>
                                                                    <input id="oldpwd" class="form-control" type="text"
                                                                        value="">
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label class="col-form-label"
                                                                        for="recipient-name">新密码:</label>
                                                                    <input id="pwd" class="form-control" type="text"
                                                                        value="">
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label class="col-form-label"
                                                                        for="recipient-name">确认新密码:</label>
                                                                    <input id="repwd" class="form-control" type="text"
                                                                        value="">
                                                                </div>

                                                            </div>
                                                            <div class="modal-footer">
                                                                <button id="pwd-update" class="btn btn-primary"
                                                                    type="button">确定修改</button>
                                                                <button class="btn btn-light" type="button"
                                                                    data-bs-dismiss="modal">取消</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row my-3 m-b-30">
                                        <div class="col-auto"><i class="icofont icofont-social-telegram icofont-3x"></i>
                                        </div>
                                        <div class="col profile">
                                            <h5 data-bs-toggle="modal" data-bs-target="#telegram">
                                                绑定 Telegram 账号
                                                <i class="fa fa-gear"></i>
                                            </h5>
                                            <p class="mb-1">绑定后可使用 Telegram 快速登录网站和机器人</p>
                                        </div>
                                        <div class="form-footer">
                                            <div class="modal fade" id="telegram" tabindex="-1" role="dialog"
                                                aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" >Telegram
                                                            </h5>
                                                            <button class="btn-close" type="button"
                                                                data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>


                                                        {if $config['enable_telegram'] == 'true'}
                                                            {if $user->telegram_id == null}
                                                                <div class="modal-body">
                                                                    <span>
                                                                        <h4 class="card-title">
                                                                            <span>1</span>&nbsp;&nbsp;使用快捷命令绑定
                                                                        </h4>
                                                                    </span>
                                                                    <span>- 在 Telegram 添加机器人账号 <a
                                                                            href="https://t.me/{$telegram_bot}"
                                                                            target="_blank">@{$telegram_bot}</a></span>
                                                                    <br /><br />
                                                                    <span>- 发送命令 <code class="cursor_onclick copy-modal"
                                                                            data-clipboard-text="/start {$bind_token}">/start
                                                                            {$bind_token}</code> 给机器人</span>
                                                                    <br /><br />
                                                                    <span>
                                                                        <h4 class="card-title">
                                                                            <span>2</span>&nbsp;&nbsp;当前设备一键绑定
                                                                        </h4>
                                                                    </span>
                                                                    <div class="col-12 kt-align-center p-2">
                                                                        <a href="https://t.me/{$telegram_bot}?start={$bind_token}"
                                                                            target="_blank" class="btn btn-info"><i
                                                                                class="fa fa-telegram"></i> 一键绑定 Telegram</a>
                                                                    </div>
                                                                    <p class="f-14"><code>- 请注意: Telegram 需要翻墙才能使用</code></p>

                                                                    <p class="f-14">- 使用以上其中一种方式进行绑定 Telegram 账号</p>

                                                                    <p class="f-14">- 绑定成功后机器人将回复您当前绑定的账号。</p>

                                                                    <p class="f-14">- 在聊天输入框发送 <code>/start</code></p>

                                                                    <p class="f-14">- 开始使用 Telegram 功能</p>
                                                                </div>
                                                            {else}
                                                                <div class="modal-body">
                                                                    <span>
                                                                        <h4 class="card-title">Telegram 设置</h4>
                                                                    </span>
                                                                    <span>- <code>请注意: 解绑账号后对应的TG账号将被群组封禁</code> </span>
                                                                    <br /><br />
                                                                    <div class="col-12 kt-align-center">
                                                                        <a href="/user/telegram_reset"
                                                                            class="btn btn-light">解绑TG账号</a>
                                                                    </div>
                                                                    <br />
                                                                    <p class="f-14">- TG群组仅限绑定网站账号的TG用户加入</p>
                                                                    <p class="f-14">- 如果您因为解绑账号或未绑账号进群导致被封禁</p>
                                                                    <p class="f-14">- 请重新绑定账号后，跟机器人申请解封方可加入群组</p>

                                                                    <span>
                                                                        <h4 class="card-title">如何解除群组封禁</h4>
                                                                    </span>

                                                                    <p class="f-14">- 使用 Telegram 私聊机器人 <a
                                                                            href="https://t.me/{$telegram_bot}"
                                                                            target="_blank">@{$telegram_bot}</a></p>

                                                                    <p class="f-14">- 向机器人发送 <code>/start</code> 命令</p>

                                                                    <p class="f-14">- 在信息中点击 <code>资料编辑</code> ->
                                                                        <code>群组解封</code> -> <code>点击提交解封</code>
                                                                    </p>

                                                                    <p class="f-14">- 然后重新发送 <code>/my</code> 命令 ->
                                                                        <code>加入用户群</code></span>
                                                                    </p>

                                                                </div>
                                                            {/if}
                                                        {else}
                                                            <div class="modal-body">
                                                                <p class="description">当前本站未开启 Telegram 功能.</p>

                                                            </div>
                                                        {/if}
                                                        <div class="modal-footer">
                                                            <button class="btn btn-primary" type="button"
                                                                data-bs-dismiss="modal">确认</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row my-3 m-b-30">
                                        <div class="col-auto"><i class="icofont icofont-ssl-security icofont-3x"></i>
                                        </div>
                                        <div class="col profile">
                                            <h5 data-bs-toggle="modal" data-bs-target="#step2-modal">
                                                二步验证
                                                <i class="fa fa-gear"></i>
                                            </h5>
                                            <p class="mb-1">为您的帐号添加一道额外的安全保障</p>
                                        </div>
                                        <div class="form-footer">

                                            {if $user->ga_enable == 1}
                                                <!-- 两部验证 -->

                                                <div class="modal fade" id="step2-modal" tabindex="-1" role="dialog"
                                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" >关闭二步验证</h5>
                                                                <button class="btn-close" type="button"
                                                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body" style="text-align: center;">
                                                                <p class="mb-0">关闭二步验证后，登录账号将不再验证动态码，您的账号安全性将下降。</p>
                                                                <div class="form-group">
                                                                    <label>登录密码</label>
                                                                    <div class="input-group">
                                                                        <input class="form-control" type="password"
                                                                            id="ga-passwd" name="ga_passwd" />
                                                                        <div
                                                                            class="input-group-append cursor_onclick ga_passwd-password">
                                                                            <span class="input-group-text"><i
                                                                                    class="fa fa-eye-slash"
                                                                                    id="ga_passwd-none"></i><i
                                                                                    class="fa fa-eye" id="ga_passwd-show"
                                                                                    style="display: none"></i></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-primary"
                                                                    id="ga-enable-false" data-dismiss="modal"
                                                                    data-toggle="modal">确认关闭</button>
                                                                <button class="btn btn-light" type="button"
                                                                    data-bs-dismiss="modal">取消</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            {else}
                                                <!-- step2 Modal -->

                                                <div class="modal fade" id="step2-modal" tabindex="-1" role="dialog"
                                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" >立即开启</h5>
                                                                <button class="btn-close" type="button"
                                                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body" style="text-align: center;">
                                                                <p class="mb-0">请使用二步验证APP扫描二维码</p>
                                                                <div id="ga-qr" style="text-align: center"></div>
                                                                <p>推荐使用 Google Authenticator</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-primary"
                                                                    data-dismiss="modal" data-toggle="modal"
                                                                    href="#step2-2-modal">下一步</button>
                                                                <button class="btn btn-light" type="button"
                                                                    data-bs-dismiss="modal">取消</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal fade" id="step2-2-modal" tabindex="-1" role="dialog"
                                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" >验证动态码</h5>
                                                                <button class="btn-close" type="button"
                                                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body" style="text-align: center;">
                                                                <div class="form-group">
                                                                    <label>确认动态码：</label>
                                                                    <input class="form-control" type="number" id="ga-code"
                                                                        name="ga-code" />
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-primary"
                                                                    id="ga-enable-true">确定开启</button>
                                                                <button class="btn btn-light" type="button"
                                                                    data-dismiss="modal" aria-label="Close">取消</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            {/if}
                                        </div>
                                    </div>
                                    <div class="row my-3 m-b-30">
                                        <div class="col-auto"><i class="icofont icofont-ui-delete icofont-3x"></i></div>
                                        <div class="col profile">
                                            <h5 data-bs-toggle="modal" data-bs-target="#del_ac">
                                                申请删除
                                                <i class="fa fa-gear"></i>
                                            </h5>
                                            <p class="mb-1">您的所有数据都会被删除，无法找回</p>
                                        </div>
                                        <div class="form-footer">
                                            <div class="modal fade" id="del_ac" tabindex="-1" role="dialog"
                                                aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" >删除账号</h5>
                                                            <button class="btn-close" type="button"
                                                                data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <h6 class="font-danger"> 注意：您的所有数据都会被删除，无法找回。</h6>
                                                            <div class="mb-3">
                                                                <label class="col-form-label">请输入账号登录密码确认:</label>
                                                                <div class="input-group">
                                                                    <input class="form-control" type="password"
                                                                        id="delete_passwd" name="delete_passwd" />
                                                                    <div
                                                                        class="input-group-append cursor_onclick delete_passwd-password">
                                                                        <span class="input-group-text"><i
                                                                                class="fa fa-eye-slash"
                                                                                id="delete_passwd-none"></i><i
                                                                                class="fa fa-eye"
                                                                                id="delete_passwd-show"
                                                                                style="display: none"></i></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button class="btn btn-primary" type="button"
                                                                id="kill">确定删除</button>
                                                            <button class="btn btn-light" type="button"
                                                                data-bs-dismiss="modal">取消</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row my-3 m-b-30">
                                        <div class="col-auto"><i class="icofont icofont-info-circle icofont-3x"></i></div>
                                        <div class="col profile">
                                            <h5 data-bs-toggle="modal" data-bs-target="#unblock-ip">
                                                IP 解封
                                                <i class="fa fa-gear"></i>
                                            </h5>
                                            <p class="mb-1">当前的IP: &nbsp;{$Block}</p>
                                        </div>
                                        <div class="form-footer">
                                            <div class="modal fade" id="unblock-ip" tabindex="-1" role="dialog"
                                                aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <form class="form-horizontal" id="user_profile_password_update">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" >解封IP
                                                                </h5>
                                                                <button class="btn-close" type="button"
                                                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="mb-3">
                                                                    <p class="description">当前状态&nbsp;:&nbsp;<span
                                                                            id="ajax-block">{$Block}</span></p>
                                                                </div>


                                                            </div>
                                                            <div class="modal-footer">
                                                                <button id="unblock" class="btn btn-primary"
                                                                    type="button">提交解封</button>
                                                                <button class="btn btn-light" type="button"
                                                                    data-bs-dismiss="modal">取消</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>




                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-12 col-md-12">
                            <div class="row">
                                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-12">
                                    <div class="card">
                                        <div class="card-header b-t-primary">
                                            <h5>最近5分钟使用IP</h5><span>请确认都为自己的<code>IP</code>
                                                ，如有异常请及时<code>修改密码</code>。</span>
                                        </div>
                                        <div class="card-block row">
                                            <div class="col-sm-12 col-lg-12 col-xl-12">
                                                <div class="table-responsive">
                                                    <table class="table">
                                                        <thead class="table-primary">
                                                            <tr>
                                                                <th scope="col" class="text-center">IP</th>
                                                                <th scope="col" class="text-center">归属地</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            {if empty($userip)}
                                                                <tr class="shadow-sm">
                                                                    <td colspan="2" class="text-center">
                                                                        <strong>最近5分钟未使用服务</strong></td>
                                                                </tr>
                                                            {else}
                                                                {foreach $userip as $single=>$location}
                                                                    <tr>
                                                                        <td class="text-center">{$single}</td>
                                                                        <td class="text-center">{$location}</td>
                                                                    </tr>
                                                                {/foreach}
                                                            {/if}
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-12">
                                    <div class="card">
                                        <div class="card-header b-t-success">
                                            <h5>最近10次登录IP</h5><span>请确认都为自己的<code>IP</code>
                                                ，如有异常请及时<code>修改密码</code>。</span>
                                        </div>
                                        <div class="card-block row">
                                            <div class="col-sm-12 col-lg-12 col-xl-12">
                                                <div class="table-responsive">
                                                    <table class="table">
                                                        <thead class="table-success">
                                                            <tr>
                                                                <th scope="col" class="text-center">IP</th>
                                                                <th scope="col" class="text-center">归属地</th>
                                                                <th scope="col" class="text-center">登录时间</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            {if empty($userloginip)}
                                                                <tr class="shadow-sm">
                                                                    <td colspan="3" class="text-center"><strong>无登录记录</strong></td>
                                                                </tr>
                                                            {else}
                                                                {foreach $userloginip as $single=>$location}
                                                                    <tr>
                                                                        <th scope="row" class="text-center">{$single}</td>
                                                                        <td class="text-center">{$location['location']}</td>
                                                                        <td class="text-center">{$location['logintime']}</td>
                                                                    </tr>
                                                                {/foreach}
                                                            {/if}
                                                        </tbody>
                                                    </table>
                                                </div>
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

    {if $user->ga_enable != 1}
        <script type="text/javascript" src="/theme/gopass/js/jquery.qrcode.min.js"></script>
        <script>
            var ga_qr_text = '{$user->getGAurl()}';
            // 二步验证 二维码
            jQuery('#ga-qr').qrcode({
                "text": ga_qr_text
            });
        </script>
    {/if}
</body>

</html>