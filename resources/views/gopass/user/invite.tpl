<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 邀请注册 | 邀请好友获奖励 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
                                <h5>邀请注册</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a></li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">邀请注册</li>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-4">
                            <div class="card">
                                <div class="card-header p-b-10">
                                    <p>
                                        累计获得返利金额
                                    <h3 class="font-primary">¥ {$paybacks_sum}</h3>
                                    </p>
                                    <div class="card-header-right">
                                        <p>
                                            剩余邀请次数
                                        <h3 class="font-primary">{$user->invite_num}次</h3>
                                        </p>
                                    </div>
                                </div>
                                <div class="card-body p-t-20">
                                    <div class="row">
                                        <div class="col-xl-12 text-center">
                                            <p class="alert alert alert-primary rounded-pill" id="invitecode" rows="1"
                                                spellcheck="false" style="padding:
                                                5px;">{$config["baseUrl"]}/auth/register?code={$code->code}
                                            </p><a class="btn btn-outline-secondary f-left"
                                                style="padding-right:1rem;padding-left:1rem;"><i class="fa fa-repeat"
                                                    data-toggle="modal" data-target="#reset-invite-modal"> 重置邀请链接</i>
                                            </a><a class="btn btn-outline-primary copy-text f-right"
                                                style="padding-right:1rem;padding-left:1rem;"
                                                data-clipboard-action="copy" data-clipboard-target="#invitecode"><i
                                                    class="fa fa-link"> 复制邀请链接</i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-8">
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
															<span class="badge badge-white rounded-pill">满100元</span><span
															    class="badge badge-dotted rounded-pill ms-2">可提现 💰</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xl-4 col-md-12">
                                                    <div class="center-img tada animated"><img class="img-fluid"
                                                            src="/theme/gopass/images/gopass/humans.png"></div>
                                                </div>
                                                <div class="col-xl-4 col-md-6">
                                                    <div class="d-flex">
                                                        <div class="right-content">
                                                            <p>发送邀请链接给好友</p>
                                                            <h4 class="f-w-600">您将一次性获得<b>{$config["invite_gift"]}GB</b>奖励</h4><span
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

                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>返利记录</h5>
                                    <p class="mb-1 mt-2">每邀请一位用户并充值将得到TA的充值金额<code>{$config["code_payback"]}%</code>的返利,满100元可提现</p>
									<p>通过<a class="txt-secondary">工单系统</a>🎫进行提现，工单内容请填写准确的收款支付宝账号 + 提现金额</p>
                                </div>
                                <div class="card-block row">
                                    <div class="col-sm-12 col-lg-12 col-xl-12">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="table-primary">
                                                    <tr>
                                                        <th scope="col" class="text-center"> </th>
                                                        <th scope="col" class="text-center">ID</th>
                                                        <th scope="col" class="text-center">获得返利 </th>
                                                        <th scope="col" class="text-center">返利时间</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
													{if count($invite_user) == 0}
    												<tr>
    												<td colspan="4" class="text-center">无邀请记录</td>
    												</tr> {else} 
        										
														{foreach $paybacks as $payback}
                                                    <tr>
                                                        <th scope="row" class="text-center"> </th>
                                                        <td class="text-center">{$payback->id}</td>
                                                        <td class="text-center">{$payback->ref_get} 元</td>
                                                        <td class="text-center">{date('Y-m-d H:i:s', $payback->datetime)}</td>
                                                    </tr>
													{/foreach} 
													{/if}
                                                </tbody>
                                            </table>
                                        </div>
										<div class="pagination-render float-right">
										    {$paybacks->render()}
										</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade " id="reset-invite-modal" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">重置邀请链接
                                    </h5>
                                    <button class="btn-close" type="button" data-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">确定要要重置邀请链接吗？点击确定后会重置并自动刷新本页。</div>
                                <div class="modal-footer">
                                    <button class="btn btn-secondary" id="reset-link" type="button">确定</button>
                                    <button class="btn btn-light" type="button" data-dismiss="modal">取消</button>
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