<!DOCTYPE html>
<html lang="zh">

<head>
    <title>{$config["appName"]} - 注册 | 全球节点中继服务 国内网站直连 智能分流系统 Google Youtube Twitter Instgram Github
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

            {if $config["register_mode"] == 'close'}
            <div class="col-lg-8 p-0">
                <div class="login-card">
                    <div class="col-12">
                        <div class="login-main">
                            <div><a class="logo" href="/"><img class="img-fluid for-light"
                                        src="/theme/gopass/images/logo/login.svg" alt="looginpage"><img
                                        class="img-fluid for-dark" src="/theme/gopass/images/logo/login_dark.svg"
                                        alt="looginpage"></a></div>

                                <p>{$GoPass_Config['slogan']}</p>

                                <div class="form-group d-flex justify-content-between align-items-center">
                                    <div class="text-left">
                                        <p class="f-14">本站暂时关闭注册</p>
                                    </div>
                                </div>
                                <a href="/" class="btn btn-outline-primary float-left btn-inline"
                                    style="padding-right: 40px;padding-left: 40px;">返回主页</a>

                        </div>
                    </div>
                </div>
            </div>
            {elseif $config["register_mode"] == 'invite'}
            <div class="col-lg-8 p-0">
                <div class="login-card">
                    <div class="col-12">
                        <div class="login-main">
                            <div><a class="logo" href="/"><img class="img-fluid for-light"
                                        src="/theme/gopass/images/logo/login.svg" alt="looginpage"><img
                                        class="img-fluid for-dark" src="/theme/gopass/images/logo/login_dark.svg"
                                        alt="looginpage"></a></div>
                            <form class="form-group theme-form" action="javascript:void(0);" method="POST" novalidate=""
                                id="login-form">
                                <p>本站采用邀请制,必须填写邀请码方可注册</p>
                                <div class="input-group mb-3"><span class="input-group-text"
                                        style="background-color: #f3f3ff;border-color: #efefef;color:#a8a8a8;"><i
                                            class="icofont icofont-user"></i></span>
                                    <input id="name" class="form-control" type="text" placeholder="昵称" name="name"
                                        required>
                                </div>
                                <div class="input-group mb-3"><span class="input-group-text"
                                        style="background-color: #f3f3ff;border-color: #efefef;color:#a8a8a8;"><i
                                            class="icofont icofont-ui-email"></i></span>
                                    <input id="email" class="form-control" type="text" placeholder="邮箱" name="email"
                                        autocomplete="off" tabindex="1" required>
                                </div>
                                {if $enable_email_verify == 'true'}
                                    <fieldset class="form-label-group position-relative has-icon-left mb-3">
                                        <div class="input-group login-form"><span class="input-group-text"
                                                style="background-color: #f3f3ff;border-color: #efefef;color:#a8a8a8;"><i
                                                    class="icofont icofont-barcode"></i></span>
                                            <input id="email_code" class="form-control" type="text" placeholder="邮箱验证码"
                                                name="email_code" required><button class="btn btn-primary" type="button"
                                                id="email_verify">获取验证码</button>
                                        </div>
                                    </fieldset>
                                {/if}
                                <div class="input-group mb-3"><span class="input-group-text" style="background-color: #f3f3ff;border-color:
                                                                        #efefef;color:#a8a8a8;"><i
                                            class="icofont icofont-lock"></i></span>
                                    <input id="passwd" class="form-control" type="password" placeholder="密码"
                                        name="passwd" required>
                                </div>
                                <fieldset class="form-label-group mb-3">
                                    <div class="input-group login-form"><span class="input-group-text" style="background-color: #f3f3ff;border-color:
                                                                        #efefef;color:#a8a8a8;"><i
                                                class="icofont icofont-lock"></i></span>
                                        <input id="repasswd" class="form-control" type="password" placeholder="重复密码"
                                            name="repasswd" required>
                                    </div>
                                </fieldset>
                                <fieldset class="form-label-group mb-3">
                                    <div class="input-group login-form"><span class="input-group-text" style="background-color: #f3f3ff;border-color:
                                                                        #efefef;color:#a8a8a8;"><i
                                                                            class="icofont icofont-finger-print"></i></span>
                                        <input id="code" class="form-control" type="text" placeholder="邀请码 (必填)"
                                            name="code">
                                    </div>
                                </fieldset>
                                <div class="form-group d-flex justify-content-between align-items-center">
                                    <div class="text-left">
                                        <input class="checkbox_animated" id="chk-ani1" type="checkbox"
                                            name="customRadio" class="custom-control-input" checked>
                                        <label class="form-check-label">注册即代表同意 <a href="#"
                                                class="card-link">服务条款</a>.</label>
                                    </div>
                                </div>
                                <a href="/auth/login" class="btn btn-outline-primary float-left btn-inline"
                                    style="padding-right: 40px;padding-left: 40px;">登 录</a>
                                <button type="submit" class="btn btn-primary pull-right"
                                    style="padding-right: 40px;padding-left: 40px;" id="register-button">注 册</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            {elseif $config["register_mode"] == 'open'}
            <div class="col-lg-8 p-0">
                <div class="login-card">
                    <div class="col-12">
                        <div class="login-main">
                            <div><a class="logo" href="/"><img class="img-fluid for-light"
                                        src="/theme/gopass/images/logo/login.svg" alt="looginpage"><img
                                        class="img-fluid for-dark" src="/theme/gopass/images/logo/login_dark.svg"
                                        alt="looginpage"></a></div>
                            <form class="form-group theme-form" action="javascript:void(0);" method="POST" novalidate=""
                                id="login-form">
                                <p>{$GoPass_Config['slogan']}</p>
                                <div class="input-group mb-3"><span class="input-group-text"
                                        style="background-color: #f3f3ff;border-color: #efefef;color:#a8a8a8;"><i
                                            class="icofont icofont-user"></i></span>
                                    <input id="name" class="form-control" type="text" placeholder="昵称" name="name"
                                        required>
                                </div>
                                <div class="input-group mb-3"><span class="input-group-text"
                                        style="background-color: #f3f3ff;border-color: #efefef;color:#a8a8a8;"><i
                                            class="icofont icofont-ui-email"></i></span>
                                    <input id="email" class="form-control" type="text" placeholder="邮箱" name="email"
                                        autocomplete="off" tabindex="1" required>
                                </div>
                                {if $enable_email_verify == 'true'}
                                    <fieldset class="form-label-group position-relative has-icon-left mb-3">
                                        <div class="input-group login-form"><span class="input-group-text"
                                                style="background-color: #f3f3ff;border-color: #efefef;color:#a8a8a8;"><i
                                                    class="icofont icofont-barcode"></i></span>
                                            <input id="email_code" class="form-control" type="text" placeholder="邮箱验证码"
                                                name="email_code" required><button class="btn btn-primary" type="button"
                                                id="email_verify">获取验证码</button>
                                        </div>
                                    </fieldset>
                                {/if}
                                <div class="input-group mb-3"><span class="input-group-text" style="background-color: #f3f3ff;border-color:
                                                                        #efefef;color:#a8a8a8;"><i
                                            class="icofont icofont-lock"></i></span>
                                    <input id="passwd" class="form-control" type="password" placeholder="密码"
                                        name="passwd" required>
                                </div>
                                <fieldset class="form-label-group mb-3">
                                    <div class="input-group login-form"><span class="input-group-text" style="background-color: #f3f3ff;border-color:
                                                                        #efefef;color:#a8a8a8;"><i
                                                class="icofont icofont-lock"></i></span>
                                        <input id="repasswd" class="form-control" type="password" placeholder="重复密码"
                                            name="repasswd" required>
                                    </div>
                                </fieldset>
                                <div class="form-group d-flex justify-content-between align-items-center">
                                    <div class="text-left">
                                        <input class="checkbox_animated" id="chk-ani1" type="checkbox"
                                            name="customRadio" class="custom-control-input" checked>
                                        <label class="form-check-label">注册即代表同意 <a href="#"
                                                class="card-link">服务条款</a>.</label>
                                    </div>
                                </div>
                                <a href="/auth/login" class="btn btn-outline-primary float-left btn-inline"
                                    style="padding-right: 40px;padding-left: 40px;">登 录</a>
                                <button type="submit" class="btn btn-primary pull-right"
                                    style="padding-right: 40px;padding-left: 40px;" id="register-button">注 册</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>  
                            {/if}
        </div>
    </div>
    <!-- container-fluid End -->

 {if $config["register_mode"] == 'close'}
 {else}
    <!-- 开始:JavaScript -->
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
            var handlerEmbed = function(captchaObj) {
                captchaObj.onSuccess(function() {
                    validate = captchaObj.getValidate();
                });
                captchaObj.appendTo("#embed-captcha");
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

    {if $recaptcha_sitekey != null}
        <script src="https://recaptcha.net/recaptcha/api.js" async defer></script>
    {/if}
    <!-- 结束:极验 -->

    <script>
        // 注册后自动登录
        function login(email, passwd) {
            $.ajax({
                type: "POST",
                url: "/auth/login",
                dataType: "json",
                data: {
                    email: email,
                    passwd: passwd,
                    code: '',
                    remember_me: 1
                },
                success: function(data) {
                    window.location.assign('/user')
                }
            });
        };
        "use strict";
        var KTLoginGeneral = function() {
            var handleSignInFormSubmit = function() {
                $('#register-button').click(function(e) {
                    e.preventDefault();
                    var btn = $(this);
                    var form = $(this).closest('form');
                    form.validate({
                        rules: {
                            name: {
                                required: true
                            },
                            email: {
                                required: true
                            },

                            email_code: {
                                required: true
                            },

                            passwd: {
                                required: true,
                                minlength: 8
                            },
                            repasswd: {
                                required: true
                            },
                            agree: {
                                required: true
                            }
                        },
                        messages: {
                            name: "<p class='p-0 m-0 txt-secondary' style='margin-bottom:0;'>请填写昵称</p>",
                            email: "<p class='p-0 m-0 txt-secondary'>请填写邮箱</p>",
                            email_code: "<p class='p-0 m-0 txt-secondary'>请填写邮箱验证码</p>",
                            passwd: {
                                required: "<p class='p-0 m-0 txt-secondary'>请填写密码</p>",
                                minlength: "<p class='p-0 m-0 txt-secondary'>密码至少需要8位以上</p>"
                            },
                            repasswd: "<p class='p-0 m-0 txt-secondary'>请再次填写密码</p>",
                            agree: "<p class='p-0 m-0 txt-secondary'>使用本站服务必须同意服务条款</p>"
                        },
                        errorPlacement: function(error, element) {
                            error.appendTo(element.parent());
                            element.addClass('is-invalid');
                            error.addClass('invalid-feedback');
                        }
                    });
                    if (!form.valid()) {
                        $.notify({
                            message: '<strong>请完善注册资料</strong>'
                        }, {
                            type: 'danger',
                            placement: {
                                from: "top",
                                align: "center"
                            },
                            timer: 1000,
                            animate: {
                                enter: 'animated zoomIn',
                                exit: 'animated zoomOut'
                            }
                        });
                        return;
                    };

                    {if $geetest_html != null}
                        validate = captcha.getValidate();
                        if (typeof validate === 'undefined' || !validate) {
                            swal.fire('请验证身份', '请滑动验证码来完成验证。', 'info');
                            return;
                        }
                    {/if}

                    $("#register-button").text('注册中');
                    $('#register-button').addClass(
                        'kt-spinner kt-spinner--right kt-spinner--sm kt-spinner--light').attr(
                        'disabled', true);

                    code = $("#code").val();

                    {if $GoPass_Config['enable_register_email_restrict'] == true}
                        var email = $("#email").val() + $("#email_postfix").val();
                    {else}
                        var email = $("#email").val();
                    {/if}

                    $.ajax({
                        type: "POST",
                        url: "/auth/register",
                        dataType: "json",
                        data: {
                            email: email,
                            name: $("#name").val(),
                            passwd: $("#passwd").val(),
                            repasswd: $("#repasswd").val(),
                            {if $recaptcha_sitekey != null}
                                recaptcha: grecaptcha.getResponse(),
                            {/if}
                            code: code
                            {if $enable_email_verify == 'true'},
                                emailcode: $("#email_code").val()
                            {/if}
                            {if $geetest_html != null},
                                geetest_challenge: validate.geetest_challenge,
                                geetest_validate: validate.geetest_validate,
                                geetest_seccode: validate.geetest_seccode
                            {/if}                          
                        },
                        success: function(data) {
                            if (data.ret == 1) {
                                swal.fire({
                                    type: 'success',
                                    title: '注册成功',
                                    confirmButtonText: '转入用户中心',
                                    confirmButtonClass: 'btn btn-info',
                                    onClose: () => {
                                        login(email, $("#passwd").val());
                                    }
                                });
                            } else {
                                $("#register-button").text('注册');
                                $('#register-button').removeClass(
                                    'kt-spinner kt-spinner--right kt-spinner--sm kt-spinner--light'
                                ).attr('disabled', false);
                                {if $geetest_html != null}
                                    captcha.reset();
                                {/if}
                                $("#code").val(code);
                                $.notify({
                                    message: '<strong>' + data.msg + '</strong>'
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
                        }
                    });
                });

            }
            return {
                init: function() {
                    handleSignInFormSubmit();
                }
            };
        }();
        jQuery(document).ready(function() {
            KTLoginGeneral.init();
        });
    </script>

    {if $enable_email_verify == 'true'}
        <script>
            // 计时器
            var wait = 60;

            function time(o) {
                if (wait == 0) {
                    o.removeAttr("disabled");
                    o.text("获取验证码");
                    wait = 60;
                } else {
                    o.attr("disabled", "disabled");
                    o.text("重新发送(" + wait + ")");
                    wait--;
                    setTimeout(function() {
                            time(o)
                        },
                        1000)
                }
            }

            // 验证码
            $("#email_verify").click(function() {
                $("#email_verify").text('正在发送');
                $('#email_verify').attr('disabled', true);
                $.ajax({
                    type: "POST",
                    url: "send",
                    dataType: "json",
                    data: {
                        email: $("#email").val()
                    },
                    success: function(data) {
                        if (data.ret) {
                            $.notify({
                                title: '<strong>已发送验证码</strong>',
                                message: '如长时间未收到，请查看邮件垃圾箱；国内邮箱可能出现延迟。'
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
                            time($("#email_verify"));
                            $('#email_verify').attr('disabled', false);
                        } else {
                            $.notify({
                                title: '<strong>发送验证码失败</strong>',
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
                            $("#email_verify").text('获取验证码');
                            $('#email_verify').attr('disabled', false);
                        }
                    }
                });
            });
        </script>
    {/if}
    <script>
        {*dumplin：轮子1.js读取url参数*}
        function getQueryVariable(variable) {
            var query = window.location.search.substring(1);
            var vars = query.split("&");
            for (var i = 0; i < vars.length; i++) {
                var pair = vars[i].split("=");
                if (pair[0] == variable) {
                    return pair[1];
                }
            }
            return "";
        }

        {*dumplin:轮子2.js写入cookie*}
        function setCookie(cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
            var expires = "expires=" + d.toGMTString();
            document.cookie = cname + "=" + cvalue + "; " + expires;
        }

        {*dumplin:轮子3.js读取cookie*}
        function getCookie(cname) {
            var name = cname + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i].trim();
                if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
            }
            return "";
        }

        {*dumplin:读取url参数写入cookie，自动跳转隐藏url邀请码*}
        if (getQueryVariable('code') != '') {
            setCookie('code', getQueryVariable('code'), 30);
            window.location.href = '/auth/register';
        }


        {*dumplin:读取cookie，自动填入邀请码框*}
        if ((getCookie('code')) != '') {
            $("#code").val(getCookie('code'));
        }
    </script>
    <!-- 结束:JavaScript -->
{/if}
</body>

</html>