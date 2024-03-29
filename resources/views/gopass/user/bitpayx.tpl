
<div class="form-group row mb-2 justify-content-center">
    	<div class="col-sm-12 col-md-7">
    		<div class="form-label-group position-relative has-icon-left">
            <label class="form-label" for="exampleFormControlInput1">金额</label>
            <div class="input-group mb-3"><span class="input-group-text">¥ </span>
                <input class="form-control" id="bitpayx-amount" type="number" placeholder="输入充值金额后，点击你要付款的应用图标即可" autofocus="autofocus"
                    type="number" min="0.01" max="1000" step="0.01" required="required">
            </div>
            </div>
       </div>
    </div>
    <div class="form-group row mb-2">
      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
      <div class="col-sm-12 col-md-7">
		<div id="bitpayx-qrarea">
		    <button class="btn btn-flat waves-attach" id="bitpayx-alipay-submit" name="type" onclick="selectPayment('ALIPAY')"><img
		                src="data:image/svg+xml;base64,CjxzdmcgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDEwMDAgMTAwMCIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAwIDAgMTAwMCAxMDAwIiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPG1ldGFkYXRhPiDnn6Lph4/lm77moIfkuIvovb0gOiBodHRwOi8vd3d3LnNmb250LmNuLyA8L21ldGFkYXRhPjxnPjxwYXRoIGQ9Ik05OTAsNjgwLjlWMTk4LjVDOTkwLDk0LjQsOTA1LjcsMTAsODAxLjUsMTBIMTk4LjVDOTQuNCwxMCwxMCw5NC4zLDEwLDE5OC41djYwMy4xQzEwLDkwNS42LDk0LjMsOTkwLDE5OC41LDk5MGg2MDMuMWM5Mi44LDAsMTY5LjktNjcsMTg1LjUtMTU1LjNjLTUwLTIxLjUtMjY2LjctMTE1LjEtMzc5LjQtMTY5Yy04NS44LDEwNC0xNzUuOCwxNjYuNS0zMTEuMywxNjYuNXMtMjI2LTgzLjMtMjE1LjEtMTg1LjZjNy4xLTY3LjIsNTMuMi0xNzYuNiwyNTMtMTU3LjhjMTA1LjMsMTAsMTUzLjUsMjkuNSwyMzkuNCw1Ny45YzIyLjEtNDAuNyw0MC42LTg1LjUsNTQuNi0xMzMuMkgyNDcuNXYtMzcuN2gxODguM3YtNjcuOEgyMDZ2LTQxLjVoMjI5Ljh2LTk3LjhjMCwwLDIuMi0xNS4zLDE5LTE1LjNoOTQuM3YxMTMuMWgyNDV2NDEuNWgtMjQ1djY3LjhoMTk5LjdjLTE4LjMsNzQuOC00Ni4yLDE0My41LTgxLDIwMy41QzcyNS45LDYwMC4yLDk5MCw2ODAuOSw5OTAsNjgwLjlMOTkwLDY4MC45TDk5MCw2ODAuOXogTTI4MS40LDc2Ny42Yy0xNDMuMywwLTE2NS44LTkwLjUtMTU4LjMtMTI4LjJzNDktODYuNywxMjguNi04Ni43YzkxLjUsMCwxNzMuNSwyMy40LDI3MS44LDcxLjNDNDU0LjUsNzE0LDM2OS41LDc2Ny42LDI4MS40LDc2Ny42TDI4MS40LDc2Ny42eiIgc3R5bGU9ImZpbGw6IzU2YWJlNCI+PC9wYXRoPjwvZz48L3N2Zz4gIA=="
		                width="64" height="64"></button>
		    <button class="btn btn-flat waves-attach" id="bitpayx-wechat-submit" name="type" onclick="selectPayment('WECHAT')"><img
		                src="data:image/svg+xml;base64,CjxzdmcgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDEwMDAgMTAwMCIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAwIDAgMTAwMCAxMDAwIiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPG1ldGFkYXRhPiDnn6Lph4/lm77moIfkuIvovb0gOiBodHRwOi8vd3d3LnNmb250LmNuLyA8L21ldGFkYXRhPjxnPjxwYXRoIGQ9Ik0zMTIuNiwzMTUuN2MtMTkuMSwwLTM4LjMsMTIuNi0zOC4zLDMxLjhjMCwxOSwxOS4yLDMxLjcsMzguMywzMS43YzE5LjEsMCwzMS43LTEyLjgsMzEuNy0zMS44QzM0NC4zLDMyOC4yLDMzMS43LDMxNS43LDMxMi42LDMxNS43TDMxMi42LDMxNS43TDMxMi42LDMxNS43eiBNNDkwLjMsMzc5LjFjMTkuMiwwLDMxLjgtMTIuOCwzMS44LTMxLjdjMC0xOS4xLTEyLjYtMzEuOC0zMS44LTMxLjhjLTE5LDAtMzguMSwxMi42LTM4LjEsMzEuOEM0NTIuMywzNjYuNCw0NzEuNCwzNzkuMSw0OTAuMywzNzkuMUw0OTAuMywzNzkuMUw0OTAuMywzNzkuMXogTTU3Mi45LDUwMGMtMTIuNiwwLTI1LjQsMTIuNi0yNS40LDI1LjNjMCwxMi44LDEyLjgsMjUuNCwyNS40LDI1LjRjMTkuMiwwLDMxLjgtMTIuNiwzMS44LTI1LjRDNjA0LjcsNTEyLjYsNTkyLjIsNTAwLDU3Mi45LDUwMEw1NzIuOSw1MDBMNTcyLjksNTAweiBNNzEyLjcsNTAwYy0xMi42LDAtMjUuMywxMi43LTI1LjMsMjUuNGMwLDEyLjgsMTIuOCwyNS40LDI1LjMsMjUuNGMxOS4xLDAsMzEuOC0xMi42LDMxLjgtMjUuNEM3NDQuNSw1MTIuNiw3MzEuOCw1MDAsNzEyLjcsNTAwTDcxMi43LDUwMEw3MTIuNyw1MDB6IE04MDEuNSwxMEgxOTguNEM5NC40LDEwLDEwLDk0LjQsMTAsMTk4LjR2NjAzLjJDMTAsOTA1LjYsOTQuMyw5OTAsMTk4LjQsOTkwaDYwMy4xYzkyLjcsMCwxNjkuOC02NywxODUuNS0xNTUuMmwyLjktMTUzLjlWMTk4LjRDOTkwLDk0LjQsOTA1LjYsMTAsODAxLjUsMTBMODAxLjUsMTBMODAxLjUsMTB6IE0zOTUuMiw2MzkuOGMtMzEuNywwLTU3LjItNi40LTg4LjktMTIuN2wtODguOCw0NC41bDI1LjQtNzYuNGMtNjMuNi00NC41LTEwMS43LTEwMS44LTEwMS43LTE3MS41YzAtMTIwLjksMTE0LjQtMjE2LDI1NC4xLTIxNmMxMjQuOSwwLDIzNC4zLDc2LjEsMjU2LjMsMTc4LjRjLTguMi0wLjktMTYuNC0xLjUtMjQuNS0xLjVjLTEyMC43LDAtMjE1LjksOTAtMjE1LjksMjAxYzAsMTguNiwyLjksMzYuNCw3LjgsNTMuM0M0MTEsNjM5LjQsNDAzLjEsNjM5LjgsMzk1LjIsNjM5LjhMMzk1LjIsNjM5LjhMMzk1LjIsNjM5Ljh6IE03NjkuNyw3MjguOGwxOS4yLDYzLjVsLTY5LjctMzguM2MtMjUuNCw2LjQtNTAuOSwxMi43LTc2LjIsMTIuN2MtMTIwLjksMC0yMTYtODIuNS0yMTYtMTg0LjNjMC0xMDEuNiw5NS4xLTE4NC4zLDIxNi0xODQuM2MxMTQuMSwwLDIxNS44LDgyLjgsMjE1LjgsMTg0LjNDODU4LjgsNjM5LjgsODIwLjgsNjkwLjUsNzY5LjcsNzI4LjhMNzY5LjcsNzI4LjhMNzY5LjcsNzI4Ljh6IiBzdHlsZT0iZmlsbDojMTFjZDZlIj48L3BhdGg+PC9nPjwvc3ZnPiAg"
		                width="64" height="64"></button>
		    <button class="btn btn-flat waves-attach" id="bitpayx-crypto-submit" name="type" onclick="selectPayment('CRYPTO')"><img
		                src="https://dcdn.mugglepay.com/pay/crypto.jpg"
		                height="64"></button>
		</div>
      </div>
    </div>
</div>
<script>
    var pid = 0;

    function selectPayment(type) {
        // TODO - make it easier - ALIPAY_WAP, ALIPAY_WEB
        var price = parseFloat($("#bitpayx-amount").val());

        console.log("将要使用 " + type + " 充值" + price + "元");
        if (isNaN(price) || price < 1 || price >= 500) {
          
            if (isNaN(price)) {
              	swal.fire("请输入正确的金额!","","error");
            }
            else if (price < 1) {
              	swal.fire("请不要充值低于1元。","","error");
            }
            else if (price > 500) {
              	swal.fire("请不要充值超过500元。","","error");
            }
            return;
        }
            $.ajax({
                'url': "/user/payment/purchase",
                'data': {
                    'price': price,
                    'type': type,
                },
                'dataType': 'json',
                'type': "POST",
                success: function (data) {
                    if (data.errcode == 0) {
                        swal.fire("正在跳转到支付页面...");
                        window.location.href = data.url;
                    } else {
                      	swal.fire(data.errmsg,"","error");
                    }
                }
            });
    }

    function f() {
        $.ajax({
            type: "POST",
            url: "/payment/status",
            dataType: "json",
            data: {
                pid: pid
            },
            success: function (data) {
                if (data.result) {
                    swal.fire('充值成功\n','','success').then((willDelete) => {
                     			window.setTimeout("location.href=window.location.href", {$config['jump_delay']});
                 });
                }
            },
            error: function (jqXHR) {
                swal.fire(jqXHR);
            }
        });
        tid = setTimeout(f, 1000); //循环调用触发setTimeout
    }

</script>