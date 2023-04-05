<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 登陆 | 邀请好友获奖励 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github
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
        <style>
            .homepage_img {
                background-image: url(/theme/gopass/index/images/hero-g-bg.png);
                background-position: center center;
                background-size: cover;
                background-repeat: no-repeat;
            }

            .homepage_bg {
                background: linear-gradient(220deg, #7366ff 0%, #5925ab 100%) !important;
            }
        </style>
</head>

<body>
    <!-- container-fluid Start-->

    <!-- login page start-->
    <div class="container-fluid" style="background-color: #F8F9FE;">
        <div class="row p-0">
        
            <div class="col-lg-4 d-none d-lg-block d-xl-block bg-primary figure text-center homepage_bg p-l-0 p-r-0">
            <div class="col-12 login_left_bg">
                <h1 class="mt-2 middle"><b>{$config["appName"]}</b></h1>
                <h4 class="mt-2"><b>{$GoPass_Config['slogan']}</b></h4>
            </div>
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
                            <form class="form-group theme-form" action="javascript:void(0);" method="POST" novalidate=""
                                id="login-form">
                                <p>全球网络中继服务，随时随处尽情使用</p>
                                <div class="input-group mb-3"><span class="input-group-text"
                                        style="background-color: #f3f3ff;border-color: #efefef;color:#a8a8a8;"><i
                                            class="icofont icofont-user"></i></span>
                                    <input id="email" class="form-control" type="text" placeholder="输入您的邮箱" name="email"
                                        autocomplete="off" tabindex="1" required>
                                </div>
                                <div class="input-group mb-3"><span class="input-group-text" style="background-color: #f3f3ff;border-color:
                                                                        #efefef;color:#a8a8a8;"><i
                                            class="icofont icofont-lock"></i></span>
                                    <input id="password" class="form-control" type="password" placeholder="输入您的密码"
                                        name="password" tabindex="2" required>
                                </div>
                                <div class="form-group d-flex justify-content-between align-items-center">
                                    <div class="text-left">
                                        <input class="checkbox_animated" id="chk-ani1" type="checkbox"
                                            name="customRadio" class="custom-control-input" checked>
                                        <label class="form-check-label">记住我</label>
                                    </div>
                                    <div class="text-right"><a href="/password/reset" class="card-link">忘记密码?</a></div>
                                </div>
                                <a href="/auth/register" class="btn btn-outline-primary float-left btn-inline"
                                    style="padding-right: 40px;padding-left: 40px;" id="register-button">注 册</a>
                                <button type="submit" class="btn btn-primary pull-right login-button"
                                    style="padding-right: 40px;padding-left: 40px;">登 录</button>

                                <h6 class="text-muted mt-4 or">Or Sign in with</h6>
                                <div class="social mt-4">
                                    <div class="btn-showcase"><a class="btn btn-light txt-dark" id="telegram-login"
                                            data-toggle="modal" data-target="#telegram-modal"><i
                                                class="icofont icofont-social-telegram"></i> 使用 Telegram 登陆 </a></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- container-fluid End -->
    <!-- 开始:modal -->
    <!-- 开始:telegram登录 -->
    <div class="modal fade" id="telegram-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle"><strong>Telegram 一键登录</strong></h5>
                    <button class="btn-close" type="button" class="close" data-dismiss="modal"
                        aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="text-center mt-1 mb-1" id="telegram-login-box">
                    </div>
                    <div class="text-center mb-1">
                        <div class="text-job text-muted">或者添加机器人账号 <a href="https://t.me/@{$telegram_bot}"
                                target="_blank">@{$telegram_bot}</a>，发送下面的数字给它
                        </div>
                    </div>
                    <div class="text-center">
                        <h2><code id="code_number" style="color: #6777ef">{$login_number}</code></h2>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-light" type="button" class="close" data-dismiss="modal"
                        aria-label="Close">取消</button>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束:telegram登录 -->
    <!-- 结束:modal -->
    <!-- 开始:JavaScript -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="/theme/gopass/js/jquery-3.5.1.min.js"></script>
    <script src="/theme/gopass/js/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="/theme/gopass/js/jquery.validate.min.js"></script>
    <script src="/theme/gopass/js/sweetalert2.min.js"></script>
    <script src="/theme/gopass/js/notify.js"></script>
    <script src="/theme/gopass/js/form-validation-custom.js"></script>
    <!-- 开始:极验 -->
    {if $geetest_html != null}
        <script src="//static.geetest.com/static/tools/gt.js"></script>
        <script>
            captcha = '';
            var handlerEmbed = function(captchaObj) {
                captchaObj.onSuccess(function() {
                    validate = captchaObj.getValidate();
                });
                captchaObj.appendTo(".embed-captcha");
                captcha = captchaObj;
            };
            initGeetest({
                gt: "{$geetest_html->gt}",
                challenge: "{$geetest_html->challenge}",
                product: "embed",
                width: "100%",
                offline: {if $geetest_html->success}0{else}1{/if}
            }, handlerEmbed);
        </script>
    {/if}
    <!-- 结束:极验 -->

    <!-- 开始:登录js -->
    <script>
        $('.login-button').click(function() {
            var btn = $(this);
            var form = $(this).closest('form');
            form.validate({
                rules: {
                    email: {
                        required: true,
                    },
                    password: {
                        required: true
                    }
                },
                messages: {
                    email: {
                        required: "<p class='p-0 m-0 txt-secondary'>请填写邮箱</p>",
                    },
                    password: "<p class='p-0 m-0 txt-secondary'>请填写密码</p>"
                },
                errorPlacement: function(error, element) {
                    error.appendTo(element.parent());
                    element.addClass('is-invalid');
                    error.addClass('invalid-feedback');
                }
            });
            if (!form.valid()) {
                return;
            }

            {if $geetest_html != null}
                validate = captcha.getValidate();
                if (typeof validate === 'undefined' || !validate) {
                    swal.fire('请验证身份', '请滑动验证码来完成验证。', 'info');
                    return;
                }
            {/if}

            $(".login-button").text('正在登录').attr('disabled', true);

            $.ajax({
                type: "POST",
                url: "/auth/login",
                dataType: "json",
                data: {
                    email: $("#email").val(),
                    passwd: $("#password").val(),
                    code: $("#2fa-code").val(),{if $recaptcha_sitekey != null}
                    recaptcha: grecaptcha.getResponse(),{/if}
                    remember_me: $("#remember-me:checked").val(){if $geetest_html != null},
                        geetest_challenge: validate.geetest_challenge,
                        geetest_validate: validate.geetest_validate,
                    geetest_seccode: validate.geetest_seccode{/if}                           
                },
                success: function(data) {
                    if (data.ret == 1) {
                        $.notify({
                            title: '<strong>' + data.msg + '</strong>',
                            message: '正在转入用户中心'
                        }, {
                            type: 'success',
                            placement: {
                                from: "top",
                                align: "center"
                            },
                        });
                        window.setTimeout("location.href='/user'", 1000);

                    } else if (data.ret == 2) {
                        $(".login-button").text('登录').attr('disabled', false);
                        $.notify({
                            message: '<strong>' + data.msg + '</strong>'
                        }, {
                            type: 'warning',
                            placement: {
                                from: "top",
                                align: "center"
                            },
                            timer: 500,
                            animate: {
                                enter: 'animated zoomIn',
                                exit: 'animated zoomOut'
                            }
                        });
                    } else {
                        $(".login-button").text('登录').attr('disabled', false);
                        $.notify({
                            title: '<strong>登录失败</strong>',
                            message: data.msg
                        }, {
                            type: 'danger',
                            placement: {
                                from: "top",
                                align: "center"
                            },
                            timer: 500,
                            animate: {
                                enter: 'animated zoomIn',
                                exit: 'animated zoomOut'
                            }
                        });
                    };
                }
            });
        });
    </script>
    <!-- 结束: 登录js -->

    <!-- 开始:telegram登录js -->
    <script>
        $(document).ready(function() {
            var el = document.createElement('script');
            document.getElementById('telegram-login-box').append(el);
            el.onload = function() {
                $('#telegram-alert').remove()
            }
            el.src = 'https://telegram.org/js/telegram-widget.js?4';
            el.setAttribute('data-size', 'large')
            el.setAttribute('data-telegram-login', '{$telegram_bot}')
            el.setAttribute('data-auth-url', '{$base_url}/auth/telegram_oauth')
            el.setAttribute('data-request-access', 'write')
        });
    </script>

    <script>
        $(document).ready(function() {
            $("#telegram-login").click(
                function() {
                    tgLogin();
                }
            );

            function tgLogin() {
                $.ajax({
                    type: "POST",
                    url: "qrcode_check",
                    dataType: "json",
                    data: {
                        token: "{$login_token}",
                        number: "{$login_number}"
                    },
                    success: (data) => {
                        if (data.ret > 0) {
                            clearTimeout(tid);
                            $.ajax({
                                type: "POST",
                                url: "/auth/qrcode_login",
                                dataType: "json",
                                data: {
                                    token: "{$login_token}",
                                    number: "{$login_number}"
                                },
                                success: (data) => {
                                    if (data.ret) {
                                        swal.fire({
                                            type: 'success',
                                            title: '登录成功',
                                            html: '正在转入用户中心',
                                            showConfirmButton: false
                                        });
                                        window.setTimeout("location.href='/user'",
                                            2000);
                                    }
                                },
                                error: (jqXHR) => {
                                    $.notify({
                                        title: '<strong>Telegram登录失败</strong>',
                                        message: '请使用账号密码登录'
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
                            });
                        } else {
                            if (data.ret === -1) {
                                $('#code_number').replaceWith(
                                    '<code id="code_number">此数字已经过期，请刷新页面后重试。</code>');
                            }
                        }
                    },
                    error: (jqXHR) => {
                        if (jqXHR.status !== 200 && jqXHR.status !== 0) {
                            swal('TG登录失败', '请使用账号密码登录', 'error');
                        }
                    }
                });
                tid = setTimeout(tgLogin, 2500); //循环调用触发setTimeout
            }
        })
    </script>
    <!-- 结束:telegram登录js -->

    <script>
        var isWeixin = function() {
            var ua = navigator.userAgent.toLowerCase();
            return ua.match(/MicroMessenger/i) == "micromessenger";
        };
        if (isWeixin() == true) {
            $('#pjax-auth').html('' +
                '<div class="kt-login__signin flipInX animated" id="pjax-auth">' +
                '<div class="kt-login__head">' +
                '<h2 class="kt-login__title kt-font-danger">不支持在微信内访问</h2>' +
                '<div class="kt-login__desc">请点击右上角菜单，选择浏览器打开</div>' +
                '</div>' +
                '</div>');
            $('#auth-page-tab').hide();
        }
    </script>


    <script>
        (function($) {
            "use strict";
            /*----------------------------------------
            passward show hide
            ----------------------------------------*/
            $('.show-hide').show();
            $('.show-hide span').addClass('show');

            $('.show-hide span').click(function() {
                if ($(this).hasClass('show')) {
                    $('input[name="login[password]"]').attr('type', 'text');
                    $(this).removeClass('show');
                } else {
                    $('input[name="login[password]"]').attr('type', 'password');
                    $(this).addClass('show');
                }
            });
            $('form button[type="submit"]').on('click', function() {
                $('.show-hide span').text('Show').addClass('show');
                $('.show-hide').parent().find('input[name="login[password]"]').attr('type', 'password');
            });

        })(jQuery);
    </script>

    <!-- 结束:JavaScript -->
</body>

</html>