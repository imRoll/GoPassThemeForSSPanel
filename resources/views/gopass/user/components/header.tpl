<div class="page-header">
    <div class="header-wrapper row m-0">
        <div class="header-logo-wrapper col-auto p-0">
            <div class="logo-wrapper"><a href="index.html"><img class="img-fluid sidebar-logo" style="padding-right: 20px;"
                        src="/theme/gopass/images/logo/logo_dark.svg" alt="" /></a></div>
            <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle" data-feather="align-center"></i>
            </div>
        </div>
        <div class="left-header col horizontal-wrapper ps-0">
            <ul class="horizontal-menu">
                <li class="mega-menu"><a class="nav-link" href="/user/shop"><i
                            data-feather="shopping-bag"></i><span>订阅节点</span></a>
                </li>
                <li class="level-menu outside"><a class="nav-link" href="#"><i
                            data-feather="book-open"></i><span>下载和教程</span></a>
                    <ul class="header-level-menu menu-to-be-close">
                        <li><a href="/user/tutorial?os=ios&client=quantumult"> <i class="icofont icofont-brand-apple"></i>
                                <span style="padding-left:5px;">苹果手机</span></a></li>
                        <li><a href="/user/tutorial?os=android&client=v2rayng"> <i class="icofont icofont-brand-android-robot"></i>
                                <span style="padding-left:5px;">安卓手机 </span></a></li>
                        <li><a href="/user/tutorial?os=windows&client=clash"> <i class="icofont icofont-brand-windows"></i>
                                <span style="padding-left:5px;">Win系统</span></a></li>
                        <li><a href="/user/tutorial?os=mac&client=clashx"> <i class="icofont icofont-brand-mac-os"></i>
                                <span style="padding-left:5px;"> Mac系统</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="nav-right col-8 pull-right right-header p-0">
            <ul class="nav-menus">
                <li>
                    {if $user->isAbleToCheckin() }
                        <a href="#" onclick="checkin()"><i data-feather="check-circle"></i></a>
                    {else}
                        <i class="font-dark" data-feather="check"></i>
                    {/if}
                </li>
                <li class="onhover-dropdown">
                    <div class="notification-box"><i data-feather="bell"></i></div>
                    <ul class="notification-dropdown onhover-show-div">
                        <li><i data-feather="bell"></i>
                            <h6 class="f-18 mb-0">通知</h6>
                        </li>
                        <li>
                            <p><i class="fa fa-circle-o me-3 font-primary table-cell"> </i> 查看公告日志!
                                <span class="pull-right">查看</span>
                            </p>
                        </li>
                        {if $user->lastSsTime() == '从未使用过' and $user->class>=0}
                            <li>
                                <p><i class="fa fa-circle-o me-3 font-info"></i>无从下手？<b>点我下载客户端或查看教程</b>，轻松上手！
                                    <span class="pull-right">查看</span>
                                </p>
                            </li>
                        {/if}
                        {if substr($user->unusedTraffic(),0,-2) <= 0 and $user->class != 0}
                            <li>
                                <p><i class="fa fa-circle-o me-3 font-success table-cell"></i>您的流量已用尽，无法继续使用本站服务。请重新订阅节点。
                                    <span class="pull-right">查看</span>
                                </p>
                            </li>
                        {/if}
                        {if $user->class == 0}
                            <li>
                                <p><i class="fa fa-circle-o me-3 font-info"></i>您的会员计划已过期，请及时到商店购买。
                                    <span class="pull-right">查看</span>
                                </p>
                            </li>
                        {/if}
                        {if substr($user->unusedTraffic(),0,-2) <= 5 && substr($user->unusedTraffic(),0,-2) > 0 && {substr($user->unusedTraffic(),-2)}
                            == 'GB'}
                            <li>
                                <p><i class="fa fa-circle-o me-3 font-danger"></i>您的可用流量不足5GB，如需更多流量，可前往会员商店购买套餐或流量加油包。
                                    <span class="pull-right">查看</span>
                                </p>
                            </li>
                        {/if}
                        {if $class_left_days < 5 && substr($user->unusedTraffic(),0,-2) > 5}
                            <li>
                                <p><i class="fa fa-circle-o me-3 font-info"></i>您的会员计划已过期，请及时到商店购买。
                                    <span class="pull-right">查看</span>
                                </p>
                            </li>
                        {/if}
                        <li><a class="btn btn-primary" href="#" data-bs-original-title="" title="">查看全部</a></li>
                    </ul>
                </li>
                <li>
                    <div class="mode"><i class="fa fa-moon-o"></i></div>
                </li>
                <li class="maximize"><a class="text-dark" href="#" onclick="javascript:toggleFullScreen()"><i
                            data-feather="maximize"></i></a></li>
                <li class="profile-nav onhover-dropdown p-0 me-0">
                    <div class="media profile-media"><img class="b-r-10 img-40" alt=""
                            src="/theme/gopass/images/profile.jpg" />
                        <div class="media-body"><span>{$user->user_name}</span>
                            <p class="mb-0 font-roboto">
                                {if $user->quantitypay == '1'}
                                    按量付费
                                {else}
                                    {if $user->lastSsTime() == '从未使用过' and $user->class>=0}
                                        未订阅
                                    {else}
                                        {if $user->class <= 0}已过期
                                        {elseif $user->class == 1}
                                            {$GoPass_Config['plan_1_name']}
                                        {elseif $user->class == 2}
                                            {$GoPass_Config['plan_2_name']}
                                        {elseif $user->class == 3}
                                            {$GoPass_Config['plan_3_name']}
                                        {/if}
                                    {/if}
                                {/if}

                                <i class="middle fa fa-angle-down"></i>
                            </p>
                        </div>
                    </div>
                    <ul class="profile-dropdown onhover-show-div">
                        <li><a href="/user/profile"><i data-feather="user"></i><span>我的帐号</span></a></li>
                        <li><a href="/user/code"><i data-feather="dollar-sign"></i><span>我的钱包</span></a></li>
                        <li><a href="/user/ticket"><i data-feather="mail"></i><span>查看工单</span></a></li>
                        <li><a href="/user/logout"><i data-feather="log-in"> </i><span>退出登录</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>