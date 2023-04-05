<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 创建工单 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github</title>
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
                                <h5>创建工单</h5>
                            </div>
                            <div class="col-6">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item active"><a href="#"> <i data-feather="home"></i></a></li>
                                    <li class="breadcrumb-item">首页
                                    <li class="breadcrumb-item active">创建工单</li>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
              <div class="row">
                  <div class="col-md-8 offset-md-2">
                      <div class="card">
                          <div class="card-header">
                              <h5>发起工单</h5><span>提示：新建工单前请在FAQ页面查看常见问题解答</span>
                          </div>
                          <form id="ticket-create-text-form" class="form theme-form needs-validation">
                              <div class="card-body">
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

 
<script src="/theme/gopass/js/form-validation-custom.js"></script>

                </div><!-- container-fluid -->
            </div><!-- Page Body End -->
            <!-- footer start-->
            {include file='user/components/footer.tpl'}
            {include file='user/components/footer-files.tpl'}
        </div><!-- page-body-wrapper End-->
    </div><!-- page-wrapper End-->
<script>

</script>
</body>

</html>