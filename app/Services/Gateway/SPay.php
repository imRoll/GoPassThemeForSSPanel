<?php
/**
 * Created by PhpStorm.
 * User: spay
 * Date: 2019/4/3
 * Time: 22:20 PM
 */

namespace App\Services\Gateway;

use App\Services\Auth;
use App\Services\Config;

use App\Models\Paylist;

class SPay extends AbstractPayment
{
    public function purchase($request, $response, $args)
    {
        /**************************请求参数**************************/
        $amount = $request->getParam('price');
        //var_dump($request->getParam("price"));die();
        $user = Auth::getUser();
        $pl = new Paylist();
        $pl->userid = $user->id;
        //if ($amount <= '10') {
        //$amount='10';
        //}
        $pl->total = $amount;
        $pl->tradeno = self::generateGuid();
        $pl->save();
        //商户订单号，商户网站订单系统中唯一订单号，必填
        $out_trade_no = $pl->tradeno;
        //订单名称，必填
        $subject = $pl->id . 'UID:' . $user->id . ' 充值' . $amount . '元';
        //付款金额，必填
        $total_fee = (float)$amount;
        //商品描述，可空
        $body = $user->id;
        /************************************************************/


        $data['total_fee'] = $total_fee;    //支付金额
        $data['partner'] = Config::get('alipay_id');    //spay合作者id
        $data['notify_url'] = Config::get('baseUrl') . '/spay_back';    //不能有get参数 也就是?xxx=xxx&    xxx=xxx
        $data['return_url'] = Config::get('baseUrl') . '/spay_back';    //不能有get参数 也就是?xxx=xxx&    xxx=xxx
        $data['out_trade_no'] = $out_trade_no;    //商户唯一订单号
        $data['service'] = 'create_direct_pay_by_user';
        $i = 0;
        $jk = '';
        ksort($data);
        reset($data);
        $ii = count($data);
        foreach ($data as $as1 => $as2) {
            $i++;
            $jk .= $as1 . '=' . $as2;
            if ($ii != $i) {
                $jk .= '&';
            }
        }
        $data['sign'] = md5($jk . Config::get('alipay_key'));
        //header("Location: http://www.dayyun.com/pay/pay/alipay.php?".http_build_query($data));


        return json_encode(['code' => 0, 'url' => 'http://www.dayyun.com/pay/pay/alipay.php?' . http_build_query($data)]);
    }

    public function notify($request, $response, $args)
    {
        $data = $_GET;
        $ispost = 0;
        if (empty($data['out_trade_no'])) {
            $data = $_POST;
            $ispost = 1;
        } //判断是同步通知还是异步通知 并赋值校验签名
        if (empty($data['out_trade_no'])) {
            die(time());
        }

        $i = 0;
        $jk = '';
        ksort($data);
        reset($data);
        $sign = $data['sign'];
        unset($data['sign'], $data['sign_type']);
        $ii = count($data);
        foreach ($data as $as1 => $as2) {
            $i++;
            $jk .= $as1 . '=' . $as2;
            if ($ii != $i) {
                $jk .= '&';
            }
        }
        $newsign = md5($jk . Config::get('alipay_key'));
        if ($newsign != $sign) {
            die('false');
        }
        $this->postPayment($data['out_trade_no'], 'SPay 支付');
        echo 'success';
        if ($ispost == 0) {
            header('Location: /user/code');
        }
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
						        <input type="radio" name="payment" value="alipay" class="selectgroup-input alipay" checked="">
						        <span class="selectgroup-button selectgroup-button-icon"><i class="fab fa-alipay mr-1"></i>支付宝</span>
						      </label>
						    </div>
						  </div>
						</div>
						<div class="form-group row mb-4">
						  <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
						  <div class="col-sm-12 col-md-7">
						    <button id="pay" onclick="spay();" class="btn btn-primary">立即充值</button>
						  </div>
						</div>

';
    }


    public function getReturnHTML($request, $response, $args)
    {
        // TODO: Implement getReturnHTML() method.
    }

    public function getStatus($request, $response, $args)
    {
        // TODO: Implement getStatus() method.
    }
}
