<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 工单对话 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
    <!-- page-wrapper Start-->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
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
                                <h5>工单对话</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a></li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">工单对话</li>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="col call-chat-body">
                        <div class="card">
                            <div class="card-body p-0">
                                <div class="row chat-box">
                                    <!-- Chat right side start-->
                                    <div class="col pe-0 chat-right-aside">
                                        <!-- chat start-->
                                        <div class="chat">
                                            <!-- chat-header start-->
                                            <div class="chat-header clearfix">
                                                <img class="rounded-circle" alt=""
                                                    src="/theme/gopass/images/logo/logo_start.svg"
                                                    style="height:50px;width:50px;">
                                                <div class="about m-l-15 m-5">
                                                    <div class="name"><b>工单对话</b></div>
                                                    <div class="status">请认真详细描述您的问题</div>
                                                </div>
                                            </div>
                                            <!-- chat-header end-->
                                            <div class="chat-history chat-msg-box custom-scrollbar">
                                                <ul>{foreach $ticketset as $ticket}
                                                        <li
                                                            class="{if $ticket->User()->user_name !== 'admin'}clearfix{/if}">
                                                            <div
                                                                class="message my-message {if $ticket->User()->user_name !== 'admin'}pull-right other-message{/if}">
                                                                <div class="message-data">
                                                                    {if $ticket->User()->user_name == 'admin'}
                                                                        <span class="badge badge-primary text-start">客服回复</span>
                                                                    {else}
                                                                        <span
                                                                            class="badge badge-secondary text-start">{$ticket->User()->user_name}</span>
                                                                    {/if}
                                                                    <span
                                                                        class="message-data-time pull-right">{$ticket->datetime()}</span>
                                                                </div>
                                                                {$ticket->content}
                                                            </div>
                                                        </li>
                                                    {/foreach}
                                                </ul>
                                            </div>
                                            <!-- end chat-history-->
                                            <div class="chat-message clearfix">
                                                <div class="row">
                                                    <div class="col-xl-12 d-flex">
                                                        <div class="input-group text-box">
                                                            <input class="form-control input-txt-bx"
                                                                id="ticket-reply-content-text"
                                                                name="ticket-reply-content-text" type="text"
                                                                placeholder="输入内容......">
                                                            <button class="input-group-text btn btn-primary"
                                                                onclick="ticket_relay({$ticket->id})"
                                                                type="button">发送</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end chat-message-->
                                            <!-- chat end-->
                                            <!-- Chat right side ends-->
                                        </div>
                                    </div>
                                    <div class="col ps-0 chat-menu">
                                        <ul class="nav nav-tabs border-tab nav-primary" id="info-tab" role="tablist">
                                            <li class="nav-item active"><a class="nav-link" id="contact-info-tab"
                                                    data-bs-toggle="tab" href="#info-contact" role="tab"
                                                    aria-selected="false">客服信息</a>
                                                <div class="material-border"></div>
                                            </li>
                                        </ul>
                                        <div class="tab-pane" id="info-contact" role="tabpanel"
                                            aria-labelledby="contact-info-tab">
                                            <div class="user-profile">
                                                <div class="image">
                                                    <div class="avatar text-center"><img alt=""
                                                            src="/theme/gopass/images/logo/logo_start.svg"
                                                            style="height:120px;width:120px;">
                                                    </div>
                                                </div>
                                                <div class="user-content text-center">
                                                    <h5 class="text-uppercase">关注{$config["appName"]}</h5>
                                                    <div class="social-media p-b-20">
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item"><a href="#"><i
                                                                        class="fa fa-facebook"></i></a>
                                                            </li>
                                                            <li class="list-inline-item"><a href="#"><i
                                                                        class="fa fa-google-plus"></i></a></li>
                                                            <li class="list-inline-item"><a href="#"><i
                                                                        class="fa fa-twitter"></i></a>
                                                            </li>
                                                            <li class="list-inline-item"><a href="#"><i
                                                                        class="fa fa-instagram"></i></a>
                                                            </li>
                                                            <li class="list-inline-item"><a href="#"><i
                                                                        class="fa fa-rss"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="follow text-center border-bottom border-top p-4">
                                                        <div class="row">
                                                            <div class="col border-right"><span>Following</span>
                                                                <div class="follow-num">236k</div>
                                                            </div>
                                                            <div class="col"><span>Follower</span>
                                                                <div class="follow-num">3691k</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="text-center p-4">
                                                        {if $config["enable_admin_contact"] == true}
                                                            <ul>
                                                                <li class="mb-2"><i
                                                                        class="icofont icofont-social-qq m-r-10"></i>
                                                                    {$config["admin_contact1"]}</li>
                                                                <li class="mb-2"><i
                                                                        class="icofont icofont-ui-email m-r-10"></i>
                                                                    {$config["admin_contact2"]}</li>
                                                                <li class="mb-2"><i
                                                                        class="icofont icofont-social-wechat m-r-10"></i>
                                                                    {$config["admin_contact3"]}</li>
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


                <script src="/theme/gopass/js/form-validation-custom.js"></script>

            </div><!-- container-fluid -->
        </div><!-- Page Body End -->
        <!-- footer start-->
        {include file='user/components/footer.tpl'}
        {include file='user/components/footer-files.tpl'}
    </div><!-- page-body-wrapper End-->
    </div><!-- page-wrapper End-->
</body>

</html>