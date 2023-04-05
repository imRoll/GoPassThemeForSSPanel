<!-- latest jquery-->
<script src="/theme/gopass/js/jquery-3.5.1.min.js"></script>
<!-- Bootstrap js-->
<script src="/theme/gopass/js/bootstrap/bootstrap.bundle.min.js"></script>
<!-- feather icon js-->
<script src="/theme/gopass/js/icons/feather-icon/feather.min.js"></script>
<script src="/theme/gopass/js/icons/feather-icon/feather-icon.js"></script>
<!-- scrollbar js-->
<script src="/theme/gopass/js/scrollbar/simplebar.js"></script>
<script src="/theme/gopass/js/scrollbar/custom.js"></script>
<!-- Plugins JS start-->
<script src="/theme/gopass/js/sweetalert2.min.js"></script>
<script src="/theme/gopass/js/chart/chart.min.js"></script>
<script src="/theme/gopass/js/counter/jquery.waypoints.min.js"></script>
<script src="/theme/gopass/js/counter/jquery.counterup.min.js"></script>
<script src="/theme/gopass/js/counter/counter-custom.js"></script>
<script src="/theme/gopass/js/tooltip-init.js"></script>
<script src="/theme/gopass/js/clipboard/clipboard.min.js"></script>
<script src="/theme/gopass/js/clipboard/clipboard-script.js"></script>
<script src="/theme/gopass/js/chart/apex-chart.js"></script>
<script src="/theme/gopass/js/script.js"></script>
<!-- BEGIN: Vendor JS-->
<script src="/theme/gopass/js/vendors.min.js"></script>
<!-- Theme js-->
<script src="/theme/gopass/js/browser.js"></script>
<!-- BEGIN: Theme JS-->
<script src="/theme/gopass/js/touchspin/vendors.min.js"></script>
<script src="/theme/gopass/js/gopass.js?{$GoPass_Config['GoPass_js_version']}"></script>
<script src="/theme/gopass/js/config.js"></script>
<!-- js -->
{if $config["enable_analytics_code"] === true}{include file='analytics.tpl'}{/if}
{if $config["sspanelAnalysis"] === true}
    <!-- Google Analytics -->
    <script>
        window.ga = window.ga || function() {
            (ga.q = ga.q || []).push(arguments)
        };
        ga.l = +new Date;
        ga('create', 'UA-190941528-1', 'auto');
        var hostDomain = window.location.host || document.location.host || document.domain;
        ga('set', 'dimension1', hostDomain);
        ga('send', 'pageview');
    </script>
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-190941528-1"></script>
    <!-- End Google Analytics -->
{/if}
<!-- 	Chat  -->
{if $GoPass_Config['enable_crisp'] == true}{include file='crisp.tpl'}{/if}
{if $GoPass_Config['enable_chatra'] == true}{include file='chatra.tpl'}{/if}
<script>

    var doughnutData = [{
            value: {($user->unusedTrafficPercent())},
            color: GopassAdminConfig.primary,
            highlight: GopassAdminConfig.primary,
            label: "剩余流量百分比"
        },
        {
            value: {($user->trafficUsagePercent())},
            color: "#444",
            highlight: "#444",
            label: "已用流量百分比"
        }
    ];
    var doughnutOptions = {
        segmentShowStroke: false,
        segmentStrokeColor: "#fff",
        segmentStrokeWidth: 2,
        percentageInnerCutout: 50,
        animationSteps: 100,
        animationEasing: "easeOutBounce",
        animateRotate: true,
        animateScale: false,
        legendTemplate: ""
    };
    var doughnutCtx = document.getElementById("myDoughnutGraph").getContext("2d");
    var myDoughnutChart = new Chart(doughnutCtx).Doughnut(doughnutData, doughnutOptions);
</script>

<script>
    var isWeixin = function() {
        var ua = navigator.userAgent.toLowerCase();
        return ua.match(/MicroMessenger/i) == "micromessenger";
    };
    if (isWeixin() == true) {
        $('body').html('<h5 style="margin:20px">不支持在微信内访问<br>请点击右上角菜单<br>选择浏览器打开</h5>')
    }

    $(function() {
        new ClipboardJS('.copy-text');
    });
    $(".copy-text").click(function() {
        swal({
            type: 'success',
            title: "已复制",
            showConfirmButton: false,
            timer: 1500
        })
    });
</script>