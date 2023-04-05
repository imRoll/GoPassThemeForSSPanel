<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 工单系统 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
                                <h5>工单系统</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a></li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">工单系统</li>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
            <div class="row justify-content-center">
                <div class="col-lg-12 col-xl-10 ">
                    <div class="card">
                        <div class="card-header">
                            <h5>工单列表</h5>
                            <div class="card-header-right"><a class="btn btn-pill btn-secondary" style="float: right;color:white"
                                data-toggle="modal" data-target="#ticket-create-modal">
                                创建工单</a></div>
                        </div>
                        <div class="card-block row">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead class="table-success">
                                        <tr>
                                            <th scope="col" class="text-center">工单ID</th>
                                            <th scope="col" class="text-center">问题分类 </th>
                                            <th scope="col" class="text-center">创建时间</th>
                                            <th scope="col" class="text-center">状态 </th>
                                            <th scope="col" class="text-center">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {if count($tickets) == 0}
                                            <tr class="shadow-sm">
                                                <td colspan="5" class="text-center"><strong>无工单记录</strong></td>
                                            </tr>
                                        {else}
                                            {foreach $tickets as $ticket}
                                                <tr class="shadow-sm">
                                                    <td class="text-center">{$ticket->id}</td>
                                                    <td class="text-center">{$ticket->title}</td>
                                                    <td class="text-center">{$ticket->datetime()}</td>
                                                    <td class="text-center"><strong>
                                                    {if $ticket->status==1}
                                                        <span class="badge badge-success">处理中</span>
                                                                {else}
                                                        <span class="badge badge-light text-dark">已结束</span>{/if}</strong>
                                                    </td>
                                                    <td class="text-center">
                                                        {if $ticket->status==1}
                                                            <a class="btn btn-primary btn-sm"
                                                                href="/user/ticket/{$ticket->id}/view">查看</a>
                                                            <button type="button" class="btn btn-danger btn-sm" id="ticket-off-377"
                                                                onclick="ticket_off({$ticket->id},0)">关闭工单</button>
                                                        {else}
                                                            <a class="btn btn-primary btn-sm"
                                                                href="/user/ticket/{$ticket->id}/view">查看</a>
                                                        {/if}
                                                    </td>
                                                </tr>
                                            {/foreach}
                                        {/if}
                                    </tbody>
                                </table>
                                                      <nav class="m-b-30" aria-label="Page navigation">
                                                          {$tickets->render()}
                                                      </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

				<div class="modal fade" id="ticket-create-modal" tabindex="-1" role="dialog"
				          aria-labelledby="exampleModalLabel" aria-hidden="true">
                          <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                      <div class="modal-content">
                          <div class="modal-header">
                              <h5>发起工单</h5>
                              <button class="btn-close" type="button" data-dismiss="modal" aria-label="Close"></button>
                          </div>
                          <form id="ticket-create-text-form" class="form theme-form needs-validation">
                              <div class="modal-body">
                                  <div class="mb-3 row">
                                      <label class="col-sm-3 col-form-label">选择问题分类</label>
                                      <div class="col-sm-9">
                                          <select class="form-select digits" id="ticket-create-title-text"
                                              name="ticket_create_title_text">
                                              <option>节点使用</option>
                                              <option>软件下载</option>
                                              <option>购买相关</option>
                                              <option>共享帐号</option>
                                              <option>其它</option>
                                          </select>
                                      </div>
                                  </div>
                                  <div class="mb-3 row">
                                      <label class="col-sm-3 col-form-label" for="validationCustom03"> 问题内容</label>
                                      <div class="col-sm-9">
                                          <textarea class="form-control" id="ticket-create-content-text"
                                              name="ticket_create_content_text" rows="5" cols="5" placeholder="详细描述您的问题"
                                              required=""></textarea>
                                          <div class="invalid-feedback font-secondary">请填写您的问题</div>
                                      </div>
                                  </div>
                              </div>
                              <div class="card-footer">
                                  <div class="col-sm-9 offset-sm-3">
                                      <button class="btn btn-success sweet-8" type="button"
                                          onclick="_gaq.push(['_trackEvent', 'example', 'try', 'sweet-8']);"
                                          id="ticket-create-click">提交</button>
                                  </div>
                              </div>
                          </form>
                      </div>
                </div>
              </div>

                </div><!-- container-fluid -->
            </div><!-- Page Body End -->
            <!-- footer start-->
            {include file='user/components/footer.tpl'}
            {include file='user/components/footer-files.tpl'}
            <script src="/theme/gopass/js/form-validation-custom.js"></script>
        </div><!-- page-body-wrapper End-->


</body>

</html>