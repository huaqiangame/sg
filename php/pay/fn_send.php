<?php	
header("Content-type:text/html;charset=utf-8");
$data = $_GET;       //post方式获得表单提交的数据                    
$shopId = 330;         															// 商户ID
$key = "A9FE3CF1E20F4E298B1368441D0F088D";    									// 商户密钥
$posturl = 'https://www.fenglinque.com/pay';                   					// post/get提交接口服务器地址
$paytype = 102;   													// 充值渠道, 101-支付宝, 102-微信
$amount = number_format($data['amount'], 2, ".", "");    						// 充值金额
$orderId = time().time();                  										// 商户的订单号
$callbackurl = "http://".$_SERVER['SERVER_NAME']."/pay/fn_notice.php";     	// 商户的回掉地址
$gotrue = "http://".$_SERVER['SERVER_NAME']."/portal/user/index";             // 支付成功跳转页面
$gofalse = "http://".$_SERVER['SERVER_NAME']."/pay/fail.html";                    			// 订单失效跳转页面
$token = "fn";                                                 					// 附加值，回调会原样返回
$uuid = $data['userid']; 														// 用户唯一标识
$charset = "utf-8";                                             				// 字符集编码方式
// 拼接需要加密生成签名的字符串
$parma = 'shopId='.$shopId.'&paytype='.$paytype.'&amount='.$amount.'&orderId='.$orderId.'&callbackurl='.$callbackurl.'&uuid='.$uuid;  
// 生成签名===>MD5加密
$sign = md5($parma . $key);      
// 拼接请求===>生成指定网址                      
$SubUrl = $posturl."?".$parma."&sign=".$sign."&gofalse=".$gofalse."&gotrue=".$gotrue."&charset=".$charset."&token=".$token;  
// 跳转到指定网站
if (isset($SubUrl)) 
{ 
	header("Location: $SubUrl"); 
	exit;
}else{
	echo "<script type='text/javascript'>";
	echo "window.location.href='$SubUrl'";
	echo "</script>";	
}
?>