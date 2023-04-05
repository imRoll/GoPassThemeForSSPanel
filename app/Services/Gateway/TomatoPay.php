<?php
namespace App\Services\Gateway;
use App\Services\View;
use App\Services\Auth;
use App\Services\Config;
use App\Models\Paylist;
class TomatoPay extends AbstractPayment
{
    public function purchase($request, $response, $args)
    {
        $type = $request->getParam('type');
        $price = $request->getParam('price');
        if($price <= 0){
            return json_encode(['errcode'=>-1,'errmsg'=>"非法的金额."]);
        }
        $user = Auth::getUser();
        $settings = Config::get("tomatopay")[$type];
        $pl = new Paylist();
        $pl->userid = $user->id;
        $pl->total = $price;
        $pl->tradeno = self::generateGuid();
        $pl->save();
        $fqaccount=$settings['account'];
        $fqkey=$settings['token'];
        $fqmchid = $settings['mchid'];
		$fqtype = 1;
		$fqtrade = $pl->tradeno;
	    $fqcny = $price;
        $data = [
            'account' => $settings['account'],
			'mchid' => $settings['mchid'],
			'type' => 1,
			'trade' => $pl->tradeno,
			'cny' => $price,
        ];
      $signs = md5("mchid=".$fqmchid."&account=".$fqaccount."&cny=".$fqcny."&type=1&trade=".$fqtrade.$fqkey);
        $url="https://b.fanqieui.com/gateways/".$type.".php?account=".$fqaccount."&mchid=".$fqmchid."&type=".$fqtype."&trade=".$fqtrade."&cny=".$fqcny."&signs=".$signs;
		$result = $url;
        $result = json_encode(array('code'=>$result,'errcode'=>0,'pid' =>$pl->id));
        return $result;
    }
    
    public function notify($request, $response, $args)
    {
		$type = $args['type'];
		      $settings = Config::get("tomatopay")[$type];
                $order_data = $_REQUEST;
        $transid   = $order_data['trade_no'];       //转账交易号
		$invoiceid = $order_data['out_trade_no'];     //订单号
		$amount    = $order_data['total_fee'];          //获取递过来的总价格
		$status    = $order_data['trade_status'];         //获取传递过来的交易状态
      $signs    = $order_data['sign']; 
      
      $security  = array();
      $security['out_trade_no']      = $invoiceid;
      $security['total_fee']    = $amount;
      $security['trade_no']        = $transid;
      $security['trade_status']       = $status;
foreach ($security as $k=>$v)
{
    $o.= "$k=".urlencode($v)."&";
}
$sign = md5(substr($o,0,-1).$settings['token']);
         if ($sign == $signs) {
           $this->postPayment($order_data['out_trade_no'], "在线支付");
        echo 'success';
        if($ispost==0) header("Location: /user/shop");
			
        }else{
           echo '验证失败';
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
						    <button id="pay" onclick="tmtpay();" class="btn btn-primary">立即充值</button>
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
    public function getReturnHTML($request, $response, $args)
    {
    }
    public function getStatus($request, $response, $args)
    {
        // TODO: Implement getStatus() method.
    }
}