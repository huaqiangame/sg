<?php 
$code=$_GET['code'];
$sign=$_GET['sign'];
$url['2422C0882A69EF05E80940FAA8BBBF6A']='fex.herooms.com.cn';
$url['3E09216242AF3124F3F1356247724AF3']='xlwx.lezr.com.cn:443';
$url['3E09216242AF3124F3F1356247724AF4']='zhong.dmmknh.top';
$url['3E09216242AF3124F3F1356247724AF5']='jt.dflqdg.com.cn:443';
$url['0fc07c9d11f80d727105928fb580f90c']='shen.mrnf88.cn';
$url['0fc07c9d01f80d727105928fb580f90c']='jt.zarcw.com.cn';
$url['0fc17c9d01f80d727105928fb580f90c']='3m.daj58.cn:443';
if($url[$sign]){
$url='http://'.$url[$sign].'/index.php?code='.$code.'&state=123';
header("location: $url"); 
}else{
echo'回调域名未授权! By;HeroHu';
}
?>