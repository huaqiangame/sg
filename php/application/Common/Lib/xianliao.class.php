<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class weixin {
    private $appid;
    private $key;
    private $code;
    private $get_access_token_url='https://ssgw.updrips.com/oauth2/accessToken';
    private $oauth2='https://ssgw.updrips.com/resource/user/getUserInfo';
    private $extract;
    public function __construct($appid,$key,$code) {
           $this->extract=  sp_get_option('extract');
           $this->appid=$appid;
           $this->key=$key;
           $this->code=$code;
           $this->access_token=$this->get_access_token();//access_token_time

    }
  

    public function get_access_token(){
        //if($this->extract['access_token_time']+7200<time()){
            $url=$this->get_access_token_url;
            $data="grant_type=authorization_code&appid=".$this->appid."&appsecret=".$this->key."&code=".$this->code;
            $result=$this->https($url,$data);
            $result=json_decode($result,true)['data'];
            if($result['access_token']){
                $this->extract['access_token']=$result['access_token'];
                //$this->extract['access_token_time']=time();
                $res = sp_set_option('extract', $this->extract);
            }
            else{
                print_r($result);
                exit();
            }
        //}
       
        return $this->extract['access_token'];
    }
    
  //通过access_token获取用户个人信
    public function get_oauth2($code){
            $url=$this->oauth2;
            $data="access_token=".$this->access_token;
            $result=$this->https($url,$data);
            $result=json_decode($result,true)['data'];
            return $result;
            exit;
    }


 
    public function https($url,$data='',$method='POST'){
        $ch = curl_init();
        curl_setopt ($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // 对认证证书来源的检查  
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false); // 从证书中检查SSL加密算法是否存在  
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');  
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1); // 使用自动跳转  
        curl_setopt($ch, CURLOPT_AUTOREFERER, 1); // 自动设置Referer
        if($method=='POST'){  
        curl_setopt($ch, CURLOPT_POST, 1); // 发送一个常规的Post请求 
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");  
        if ($data != ''){  
            curl_setopt($ch, CURLOPT_POSTFIELDS, $data); // Post提交的数据包 
            curl_setopt($ch, CURLOPT_HTTPHEADER,array('Content-Type=application/x-www-form-urlencoded'));  
            }  
        }       
        curl_setopt($ch, CURLOPT_TIMEOUT, 30); // 设置超时限制防止死循环  
        if($method=='json'){
        curl_setopt($ch, CURLOPT_POST, TRUE);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST"); 
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data); // Post提交的数据包  
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(  
            'Content-Type: application/json; charset=utf-8',  
            'Content-Length: ' . strlen($data))  
        );  
        } 
        else{
            curl_setopt($ch, CURLOPT_HEADER, 0); // 显示返回的Header区域内容  
        }
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); // 获取的信息以文件流的形式返回  
        $file_contents = curl_exec($ch);
        curl_close($ch);
        return $file_contents;
    }
}