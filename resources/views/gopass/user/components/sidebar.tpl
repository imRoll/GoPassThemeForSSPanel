<div class="sidebar-wrapper">
    <div>
        <div class="logo-wrapper"><a href="/user"><img class="img-fluid sidebar-logo for-light"
                    src="/theme/gopass/images/logo/logo.svg" alt="" /><img class="img-fluid sidebar-logo for-dark"
                    src="/theme/gopass/images/logo/logo_dark.svg" alt="" /></a>
            <div class="back-btn"><i class="fa fa-angle-left"></i></div>
            <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle" data-feather="grid"> </i></div>
        </div>
        <div class="logo-icon-wrapper"><a href="/user"><img class="img-fluid sidebar-logo-icon"
                    src="/theme/gopass/images/logo/logo_start.svg" alt="" /></a></div>
        <nav class="sidebar-main">
            <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
            <div id="sidebar-menu">
                <ul class="sidebar-links" id="simple-bar" style="padding-bottom: 50px;">
                    <li class="back-btn"><a class="submenu-title" href="/user"><img class="img-fluid"
                                src="/theme/gopass/images/logo/logo_start.svg" alt="" /></a>
                        <div class="mobile-back text-end"><span>Back</span><i class="fa fa-angle-right ps-2"
                                aria-hidden="true"></i></div>
                    </li>
                    <li class="sidebar-main-title">
                        <div>
                            <h6>Hi~ {$user->user_name}</h6>
                            <p>{$GoPass_Config['slogan']}</p>
                        </div>
                    </li>
                    <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav" href="/user#"><i
                                data-feather="home"></i><span>用户中心</span></a></li>
                    <li class="sidebar-list">
                        <label class="badge badge-info">Hot</label><a class="sidebar-link sidebar-title link-nav"
                            href="/user/shop"><i data-feather="shopping-bag"></i><span>订阅节点</span></a>
                    </li>
                    <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav" href="/user/node"><i
                                data-feather="globe"> </i><span>全球节点</span></a></li>
                    <li class="sidebar-list"><a class="sidebar-link sidebar-title" href="#"><i
                                data-feather="user"></i><span>我的帐号</span></a>
                        <ul class="sidebar-submenu">
                            <li><a href="/user/profile">帐户信息</a></li>
                            <li><a href="/user/code">我的钱包</a></li>
                            <li><a href="/user/invite">邀请注册</a></li>
                        </ul>
                    </li>
                    <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav" href="/user/ticket"><i
                                data-feather="mail"></i><span>工单支持</span></a>
                    </li>
                    <li class="sidebar-main-title">
                        <div><a href="/user/tutorial" target="_blank" class="p-0">
                                <h6>下载和教程 📖</h6>
                                <p>节点使用方法,软件APP下载</p>
                            </a>
                        </div>
                    </li>
                    <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav" href="/user/tutorial"><i
                                data-feather="book-open"> </i><span>下载和教程</span></a></li>

                    {if $GoPass_Config['show_share'] == true}
                        <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav"
                                href="/user/share-account"><i data-feather="youtube"> </i><span>共享帐号</span></a></li>
                    {/if}
                    <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav" href="/user/edit"><i
                                data-feather="git-pull-request"></i><span>节点设置 </span></a></li>
                    <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav" href="/user/detect"><i
                                data-feather="check-square"> </i><span>审计系统</span></a></li>
                    <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav" href="/user/announcement"><i
                                data-feather="volume-2"> </i><span>网站公告</span></a></li>
                    {if $GoPass_Config['enable_telegram_button'] == true}
                        {if $config['enable_telegram'] == 'true'}
                            {if $user->telegram_id == null}
                                <li class="sidebar-main-title">
                                    <div>
                                        <h6>Telegram</h6>
                                        <p class="f-w-400">绑定Telegram后获取更多功能</p>
                                    </div>
                                </li>
                                <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav"
                                        class="{if !$user->isAdmin()}mb-2{/if} hide-sidebar-mini"
                                        href="{$GoPass_Config['telegram_group_link']}" onclick="joinTelegramGroup()"
                                        onclick="joinTelegramGroup()"><i data-feather="at-sign"> </i><span>绑定Telegram</a></span></a>
                                </li>
                            {else}
                            {/if}
                        {/if}
                    {/if}
                    {if $GoPass_Config['enable_tencent_button'] == true}
                        <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav"
                                href="{$GoPass_Config['tencent_group_link']}" onclick="joinQQGroup()"><i
                                    data-feather="users"></i> <span>加入QQ群</span></a></li>
                    {/if}
                    {if $user->isAdmin()}
                        <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav" href="/admin"><i
                                    data-feather="layers"> </i><span>管理面板</span></a></li>
                    {/if}
                    {if $can_backtoadmin}
                        <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav" href="/user/backtoadmin"><i
                                    data-feather="corner-up-left"> </i><span>返回管理员身份</span></a></li>
                    {/if}
                </ul>
            </div>
            <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
        </nav>
    </div>
</div>