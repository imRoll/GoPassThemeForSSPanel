<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 找回密码 | 邀请好友获奖励 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github
    </title>
    {include file='user/components/header-files.tpl'}
    {if $GoPass_Config['enable_crisp'] == true && $GoPass_Config['enable_crisp_outside'] == true}
        {include file='crisp.tpl'}
    {/if}

    {if $GoPass_Config['enable_chatra'] == true && $GoPass_Config['enable_crisp_outside'] == true}
        {include file='chatra.tpl'}
    {/if}
    <script>
        var isWeixin = function() {
            var ua = navigator.userAgent.toLowerCase();
            return ua.match(/MicroMessenger/i) == "micromessenger";
        };
        if (isWeixin() == true) {
            $('body').html('<h5 style="margin:20px">不支持在微信内访问<br>请点击右上角菜单<br>选择浏览器打开</h5>')
        }
    </script>
    <link rel="stylesheet" type="text/css" href="/theme/gopass/css/notify.css" />
</head>

<body>
    <!-- container-fluid Start-->

    <!-- login page start-->
    <div class="container-fluid" style="background-color: #F8F9FE;">
        <div class="row p-0">
            <div class="col-lg-4 d-none d-lg-block d-xl-block bg-primary login_left_bg figure text-center">
                <h1 class="mt-2 middle"><b>GOPASS</b></h1>
                <h4 class="mt-2"><b>穿越一切阻碍，寻求知识的渴望!</b></h4>
            </div>
            <div class="col-lg-8 p-0">
                <div class="login-card">
                    <div class="col-12">
                        <div class="login-main">
                            <div>
                                <a class="logo" href="/"><img class="img-fluid for-light"
                                        src="/theme/gopass/images/logo/login.svg" alt="looginpage"><img
                                        class="img-fluid for-dark" src="/theme/gopass/images/logo/login_dark.svg"
                                        alt="looginpage"></a>
                            </div>
                            <form class="form-group theme-form" action="javascript:void(0);">
                                <p>我们将会发送一封包含重置密码链接的邮件到您的邮箱</p>

                                <div class="input-group mb-3"><span class="input-group-text" style="background-color: #f3f3ff;border-color:
                                                                        #efefef;color:#a8a8a8;"><i
                                            class="icofont icofont-ui-email"></i></span>
                                    <input id="email" class="form-control" type="text" placeholder="输入您的帐户邮箱"
                                        name="email" autocomplete="off" tabindex="1" required>
                                </div>

                                <a href="/auth/login" class="btn btn-outline-primary float-left btn-inline"
                                    style="padding-right: 40px;padding-left: 40px;" id="register-button">返回登录</a>
                                <a id="reset-button" class="btn btn-primary pull-right login-button"
                                    style="padding-right: 40px;padding-left: 40px;">立即找回</a>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- 开始:JavaScript -->
    <script src="/theme/gopass/js/jquery-3.5.1.min.js"></script>
    <script src="/theme/gopass/js/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="/theme/gopass/js/jquery.validate.min.js"></script>
    <script src="/theme/gopass/js/sweetalert2.min.js"></script>
    <script src="/theme/gopass/js/notify.js"></script>
    <script src="/theme/gopass/js/form-validation-custom.js"></script>
        <script>
            $('#reset-button').click(function(e) {
                $("#reset-button").text('正在发送');
                $('#reset-button').attr('disabled', true);
                $.ajax({
                    type: "POST",
                    url: "/password/reset",
                    dataType: "json",
                    data: {
                        email: $("#email").val(),
                    },
                    success: function(data) {
                        if (data.ret == 1) {
                            $.notify({
                                title: '<strong>重置密码邮件已发送</strong>',
                                message: '如长时间未收到，请查看邮件垃圾箱，国内邮箱接收可能会延迟。<br>您需要从邮件中点击链接进行设置新密码'
                            }, {
                                type: 'success',
                                placement: {
                                    from: "top",
                                    align: "center"
                                },
                                timer: 2000,
                                animate: {
                                    enter: 'animated zoomIn',
                                    exit: 'animated zoomOut'
                                }
                            });
                        } else {
                            $.notify({
                                title: '<strong>发送失败</strong>',
                                message: data.msg
                            }, {
                                type: 'danger',
                                placement: {
                                    from: "top",
                                    align: "center"
                                },
                                timer: 2000,
                                animate: {
                                    enter: 'animated zoomIn',
                                    exit: 'animated zoomOut'
                                }
                            });
                        }
                        $("#reset-button").text('立即找回');
                        $('#reset-button').attr('disabled', false);
                    }
                });
            });
        </script>
</body>

</html>