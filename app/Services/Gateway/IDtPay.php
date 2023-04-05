<?php

namespace App\Services\Gateway;

use App\Services\Auth;
use App\Models\Paylist;
use App\Services\Config;
use App\Services\View;

require_once("IDt/epay_submit.class.php");
require_once("IDt/epay_notify.class.php");
class IDtPay extends AbstractPayment
{
    public function purchase($request, $response, $args)
    {
        $type = $request->getParsedBodyParam('type');
        $price = $request->getParsedBodyParam('price');
        if ($price <= 0) {
            return $response->write(json_encode(['errcode' => -1, 'errmsg' => "非法的金额."]));
        }
        $user = Auth::getUser();
        $pl = new Paylist();
        $pl->userid = $user->id;
        $pl->total = $price;
        $pl->tradeno = self::generateGuid();
        $pl->save();

        $settings = Config::get("idtpay");
        $alipay_config = array(
            'partner' => $settings['partner'],
            'key' => $settings['key'],
            'sign_type' => $settings['sign_type'],
            'input_charset' => $settings['input_charset'],
            'transport' => $settings['transport'],
            'apiurl' => $settings['apiurl']
        );


        /**************************请求参数**************************/
        $notify_url = Config::get("baseUrl")."/payment/notify";
        //需http://格式的完整路径，不能加?id=123这类自定义参数

        //页面跳转同步通知页面路径
        $return_url = Config::get("baseUrl")."/user/payment/return";
        //需http://格式的完整路径，不能加?id=123这类自定义参数，不能写成http://localhost/

        //商户订单号
        $out_trade_no = $pl->tradeno;
        //商户网站订单系统中唯一订单号，必填


        //商品名称
        $name =$settings["subjects"][array_rand($settings["subjects"])];
        //付款金额
        $money =$price;
        //站点名称
        $sitename = $settings['appname'];
        //必填

        //订单描述

        /************************************************************/
        //构造要请求的参数数组，无需改动
        $parameter = array(
            "pid" => trim($alipay_config['partner']),
            "type" => $type,
            "notify_url"	=> $notify_url,
            "return_url"	=> $return_url,
            "out_trade_no"	=> $out_trade_no,
            "name"	=> $name,
            "money"	=> $money,
            "sitename"	=> $sitename
        );

        //建立请求
        $alipaySubmit = new AlipaySubmit($alipay_config);
        $html_text = $alipaySubmit->buildRequestForm($parameter);
        return $response->write(json_encode(['code' => $html_text, 'errcode' => 0, 'pid' => $pl->id]));
    }

    public function notify($request, $response, $args)
    {
        $pid = $_GET['out_trade_no'];
        $p = Paylist::where('tradeno', '=', $pid)->first();
        if ($p->status == 1) {
            $success = 1;
        } else {
            $settings = Config::get("idtpay");
            $alipay_config = array(
                'partner' => $settings['partner'],
                'key' => $settings['key'],
                'sign_type' => $settings['sign_type'],
                'input_charset' => $settings['input_charset'],
                'transport' => $settings['transport'],
                'apiurl' => $settings['apiurl']
            );

            //计算得出通知验证结果
            $alipayNotify = new AlipayNotify($alipay_config);
            $verify_result = $alipayNotify->verifyNotify();

            if($verify_result) {

                if ($_GET['trade_status'] == 'TRADE_SUCCESS') {
                    $this->postPayment($_GET['out_trade_no'], "IDtPay");
                    $success = 1;
                }
                else {
                    $success = 0;
                }

            }
            else {
                $success = 0;
            }
        }
        if ($success==1){
            echo "success";
        }else{
            echo "fail";
        }
    }
    public function getReturnHTML($request, $response, $args)
    {

        $pid = $_GET['out_trade_no'];
        $p = Paylist::where('tradeno', '=', $pid)->first();
        $money = $p->total;
        if ($p->status == 1) {
            $success = 1;
        } else {
            $settings = Config::get("idtpay");
            $alipay_config = array(
                'partner' => $settings['partner'],
                'key' => $settings['key'],
                'sign_type' => $settings['sign_type'],
                'input_charset' => $settings['input_charset'],
                'transport' => $settings['transport'],
                'apiurl' => $settings['apiurl']
            );

            //计算得出通知验证结果
            $alipayNotify = new AlipayNotify($alipay_config);
            $verify_result = $alipayNotify->verifyNotify();

            if($verify_result) {

                if ($_GET['trade_status'] == 'TRADE_SUCCESS') {
                    $this->postPayment($_GET['out_trade_no'], "IDtPay");
                    $success = 1;
                }
                else {
                    $success = 0;
                }

            }
            else {
                $success = 0;
            }
        }
        return View::getSmarty()->assign('money', $money)->assign('success', $success)->fetch('user/pay_success.tpl');



    }
    public function getPurchaseHTML()
    {
        return '
						<div class="form-group row mb-2">
							<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">金额</label>
							<div class="col-sm-12 col-md-7">
								<div class="form-label-group position-relative has-icon-left">
						            <input type="text" class="form-control" id="amount" type="num" placeholder="输入充值金额，付款后刷新页面">
						            <div class="form-control-position">
						                <i class="fa fa-jpy"></i>
						            </div>
						        </div>
						   </div>
						</div>
						<div class="form-group row mb-4">
						  <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">支付方式</label>
						  <div class="col-sm-12 col-md-3">
						    <div class="selectgroup w-100">
	                          <label class="selectgroup-item">
	                            <input type="radio" name="payment" value="alipay" data-pay="alipay" class="selectgroup-input alipay"checked="">
	                            <span class="selectgroup-button selectgroup-button-icon"><i class="fab fa-alipay mr-1"></i>支付宝</span>
	                          </label>
	                          <label class="selectgroup-item">
                            	<input type="radio" name="payment" value="wechat" data-pay="wxpay" class="selectgroup-input wechat-pay">
                            	<span class="selectgroup-button selectgroup-button-icon" data-pay="wxpay"><i class="malio-wechat-pay mr-1" style="vertical-align: -1px"></i>微信</span>
                              </label>
						    </div>
						  </div>
						</div>
						<div class="form-group row mb-4">
						  <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
						  <div class="col-sm-12 col-md-7">
						    <button id="idt_pay" class="btn btn-primary">立即充值</button>
						  </div>
						</div>
			      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
			      <script>
					var type = "wxpay";
					var type = "alipay";
			          $(".selectgroup-input").click(function(){
			              type = $(this).data("pay");
			          });
			         
			      </script>
';
    }
    public function getStatus($request, $response, $args)
    {
        $return = [];
        $p = Paylist::where('tradeno', $_POST['pid'])->first();
        $return['ret'] = 1;
        $return['result'] = $p->status;
        // file_put_contents(BASE_PATH.'/bitpay_status_success.log', json_encode($return)."\r\n", FILE_APPEND);
        return json_encode($return);
    }
}