<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 我的钱包 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
                                <h5>我的钱包</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a></li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">我的钱包</li>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>

                    <div class="content-body">
                        <div class="row">
                            <div class="col-sm-4 col-md-12 col-lg-12 col-xl-4">
                                <div class="card mywallet">
                                    <div class="card-header o-hidden mywallet"><i
                                            class="fa fa-credit-card-alt fa-5x f-right bg-img"></i>
                                        <h6>钱包余额</h6>
                                        <h3>¥ {$user->money}</h3>
                                    </div>
                                    <div class="card-body p-20">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <a class="recharge rounded-pill my-2 f-left" data-toggle="modal"
                                                    data-target="#Recharge-code"><i class="fa fa-gift"> 使用充值码</i></a>
                                                <a class="recharge rounded-pill my-2 f-right" href="#" id="top-up"><i
                                                        class="fa fa-credit-card-alt"> 充 值</i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-8 col-md-12 col-lg-12 col-xl-8">
                                <div class="card">
                                    <div class="card-header b-t-primary">
                                        <h5>充值记录</h5><span>以下内容显示每次充值的记录</span>
                                    </div>
                                    <div class="card-block row">
                                        <div class="col-sm-12 col-lg-12 col-xl-12">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead class="table-primary">
                                                        <tr>
                                                            <th class="text-center">ID</th>
                                                            <th class="text-center">代码</th>
                                                            <th class="text-center">类型</th>
                                                            <th class="text-center">操作</th>
                                                            <th class="text-center">使用时间</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        {if count($codes) == 0}
                                                            <tr>
                                                                <td colspan="5" class="text-center"><strong>无充值记录</strong></td>
                                                            </tr>
                                                        {else}
                                                            {foreach $codes as $code}
                                                                <tr>
                                                                    <td class="badge-dot mr-4 text-center"><i
                                                                            class="bg-warning"></i>{$code->id}</td>
                                                                    <td class="text-center">{$code->code}</td>
                                                                    {if $code->type==-1}
                                                                        <td class="text-center">金额充值</td>
                                                                    {/if}
                                                                    {if $code->type==10001}
                                                                        <td class="text-center">流量充值</td>
                                                                    {/if}
                                                                    {if $code->type==10002}
                                                                        <td class="text-center">用户续期</td>
                                                                    {/if}
                                                                    {if $code->type>=1&&$code->type<=10000}
                                                                        <td class="text-center">等级续期 - 等级{$code->type}</td>
                                                                    {/if}
                                                                    {if $code->type==-1}
                                                                        <td class="text-center">充值 {$code->number} 元</td>
                                                                    {/if}
                                                                    {if $code->type==10001}
                                                                        <td class="text-center">充值 {$code->number} GB 流量</td>
                                                                    {/if}
                                                                    {if $code->type==10002}
                                                                        <td class="text-center">延长账户有效期 {$code->number} 天</td>
                                                                    {/if}
                                                                    {if $code->type>=1&&$code->type<=10000}
                                                                        <td class="text-center">延长等级有效期 {$code->number} 天</td>
                                                                    {/if}
                                                                    <td class="text-center">{$code->usedatetime}</td>
                                                                </tr>
                                                            {/foreach}
                                                        {/if}
                                                    </tbody>
                                                </table>
                                                <div class="pagination-render float-right">
                                                    {$codes->render()}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header b-t-success">
                                        <h5>购买记录</h5><span>以下内容显示每次订阅的套餐</span>
                                    </div>
                                    <div class="card-block row">
                                        <div class="col-sm-12 col-lg-12 col-xl-12">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead class="table-success">
                                                        <tr>
                                                            <th class="text-center">ID</th>
                                                            <th class="text-center">商品名称</th>
                                                            <th class="text-center">价格</th>
                                                            <th class="text-center">购买时间</th>
                                                            <th class="text-center">续费时间</th>
                                                            <th class="text-center">续费时重置流量</th>
                                                            <th class="text-center">操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        {if count($shops) == 0}
                                                            <tr>
                                                                <td colspan="7"><strong>无购买记录</strong></td>
                                                            </tr>
                                                        {else}
                                                            {foreach $shops as $shop}
                                                                <tr>
                                                                    <th scope="row" class="text-center"><i class="bg-warning"></i>{$shop->id}</td>
                                                                        {if $shop->shop()->id == 0}
                                                                        <td class="text-center">{$shop->coupon}</td>
                                                                    {else}
                                                                        <td class="text-center">{$shop->shop()->name}</td>
                                                                    {/if}
                                                                    <td class="text-center">¥{$shop->price}</td>
                                                                    <td class="text-center">{date('Y-m-d H:i:s', $shop->datetime)}</td>
                                                                    {if $shop->renew==0}
                                                                        <td class="text-center">不自动续费</td>
                                                                    {else}
                                                                        <td class="text-center">在 {$shop->renew_date()} 续费</td>
                                                                    {/if}

                                                                    {if $shop->shop()->auto_reset_bandwidth==0}
                                                                        <td class="text-center">不自动重置</td>
                                                                    {else}
                                                                        <td class="text-center">自动重置</td>
                                                                    {/if}
                                                                    <td class="text-center">
                                                                        {if $shop->renew==0}
                                                                            无操作
                                                                        {else}
                                                                            <a href="javascript:void(0);"
                                                                                onClick="delete_modal_show('{$shop->id}')"
                                                                                class="btn btn-sm btn-primary">关闭自动续费</a>
                                                                        {/if}
                                                                    </td>
                                                                </tr>
                                                            {/foreach}
                                                        {/if}
                                                    </tbody>
                                                </table>
                                                <div class="pagination-render float-right">
                                                    {$codes->render()}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="topup-page" class="main-content" style="display: none">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header">
                                        <div class="section-header">
                                            <div class="section-header-back">
                                                <a id="back-to-main" href="##" class="btn btn-icon"><i
                                                        class="fa fa-arrow-left"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-content">
                                        <div class="card-body">
                                            {if $pmw!==''} {$pmw} {/if}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>







                    <!-- 充值码 -->
                    <div class="modal fade" tabindex="-1" role="dialog" id="Recharge-code">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">使用充值码</h5>
                                    <button class="btn-close" type="button" data-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="mb-3">
                                            <label class="col-form-label" for="recipient-name">请输入充值码</label>
                                            <input class="form-control" type="text" value="">
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" onclick="codeTopup()">充值</button>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- f2fpay -->
                    {if $config['payment_system'] == 'f2fpay' || $config['payment_system'] == 'f2fpay_payjs'}
                        <div class="modal fade" tabindex="-1" role="dialog" id="f2fpay-modal">
                            <div class="modal-dialog" role="document">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">
                                                {if $config['payment_system'] == 'f2fpay'}打开支付宝，扫码支付{else}扫码支付{/if}</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div id="qrarea" style="text-align: center"></div>
                                        </div>
                                        <div class="modal-footer bg-whitesmoke br">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/if}

                    <!-- Payjs -->
                    {if $config['payment_system'] == 'payjs'}
                        <div class="modal fade" tabindex="-1" role="dialog" id="wxpay-modal">
                            <div class="modal-dialog" role="document">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">打开微信，扫码支付</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div id="qrarea" style="text-align: center"></div>
                                        </div>
                                        <div class="modal-footer bg-whitesmoke br">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/if}


                    {if $config['payment_system'] == 'idtpay'}
                        <div class="modal fade" id="dialog-modal" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title kt-font-boldest" id="dialog-title"></h5>
                                    </div>
                                    <div class="modal-body">
                                        <p class="display-5" id="dialog-msg"></p>
                                    </div>
                                    <!--<div class="modal-footer">
				             <button type="button" class="btn btn-secondary" data-dismiss="modal" id="dialog-ok">知道了</button>
				      </div>-->
                                </div>
                            </div>
                        </div>
                    {/if}


                </div><!-- container-fluid -->
                <!-- footer start-->
                {include file='user/components/footer.tpl'}
                {include file='user/components/footer-files.tpl'}
            </div><!-- Page Body End -->
        </div><!-- page-body-wrapper End-->

    <script>
        $(document).ready(function(e) {
            $("#top-up").click(function(e) {
                $(".content-body").toggle();
                $(".main-content").toggle();
            });
            $("#back-to-main").click(function(e) {
                $(".content-body").toggle();
                $(".main-content").toggle();
            });
        });
    </script>
</body>

</html>