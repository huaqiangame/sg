<?php
header("Content-type:text/html;charset=utf-8");
$data=$_GET;
$key = "A9FE3CF1E20F4E298B1368441D0F088D";          		     // 商户密钥
$orderid = $data["orderid"];         // 商户订单号
$status = $data["status"];      	 // 1:支付完成,回调成功
$amount = $data["amount"];           // 实际充值金额
$paytype = $data["paytype"];         // 充值渠道, 101-支付宝, 102-微信
$uuid = $data["uuid"];               // 用户唯一标识
$sign = $data["sign"];               // 签名,用于校验数据是否篡改
$orderno = $data["orderno"];         // 三方平台订单号
$tradno = $data["tradno"];  		 // 交易号
$time = $data["time"];    			 // 支付完成时间
$token = $data["token"];            // 上行附加信息
// 拼接需要加密生成签名的字符串

$parma = "orderid=".$orderid."&status=".$status."&amount=".$amount."&paytype=".$paytype."&uuid=".$uuid;  
// 生成签名===>MD5加密
$sig = md5($parma . $key);
if($sign != null && strcasecmp($sign, $sig) == 0){
 	// 此处理客户自己的业务逻辑

$dbarr = include('../data/conf/db.php');
			$username = $dbarr['DB_USER'];
			$password = $dbarr['DB_PWD'];
			$database = $dbarr['DB_NAME'];
$mysql_conf = [
	'host'    => '127.0.0.1:3306', 
    'db'      => $database, 
    'db_user' => $username, 
    'db_pwd'  => $password, 
];
$db = new PDO("mysql:host=" . $mysql_conf['host'] . ";dbname=" . $mysql_conf['db'], $mysql_conf['db_user'], $mysql_conf['db_pwd']);//创建一个pdo对象
$now = date('Y-m-d H:i:s');
$sql = "update jz_user set fk = fk+{$amount},status = id = '{$uuid}';";
$result = $db->query($sql);

 }else{
 	echo "签名无效,回掉失败1";
 }
?>