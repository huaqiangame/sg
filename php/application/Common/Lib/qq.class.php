<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class qq {
    private $appid;
    private $key;
    private $my_url;
    private $code;
    private $extract;
    public $menu;
    public function __construct($appid,$key,$my_url,$code) {
           $this->extract=  sp_get_option('extract');
           $this->appid=$appid;
           $this->key=$key;
           $this->my_url=$my_url;
           $this->code=$code;
           $this->access_token=$this->get_access_token();//access_token_time

    }

    public function get_access_token(){
      //  if($this->extract['access_token_time']<time()-7200){
        $token_url = "https://graph.qq.com/oauth2.0/token?grant_type=authorization_code&"."client_id=".$this->appid."&redirect_uri=".urlencode($this->my_url)."&client_secret=".$this->key."&code=".$this->code;
         $response = file_get_contents($token_url);$result = array();parse_str($response, $result);
            if($result['access_token']){
                $this->extract['access_token']=$result['access_token'];
                $this->extract['access_token_time']=time();
                $res = sp_set_option('extract', $this->extract);
            }
            else{
                print_r($result);exit();
                
            }
     //   }
        return $this->extract['access_token'];
    }
    public function get_oauth2($code){
        $graph_url = "https://graph.qq.com/oauth2.0/me?access_token=".$this->access_token;
        $str = file_get_contents($graph_url);
        if (strpos($str, "callback") !== false) {
            $lpos = strpos($str, "(");
            $rpos = strrpos($str, ")");
            $result = substr($str, $lpos + 1, $rpos - $lpos -1);
        }
      $result=json_decode($result,true);
            return $result;
            exit;
    }

    public function get_userinfo($appid,$openid){
        $user_data_url = "https://graph.qq.com/user/get_user_info?access_token=".$this->access_token."&oauth_consumer_key=".$appid."&openid=".$openid;
        $result = file_get_contents($user_data_url);//获取到的用户信息
        $result=json_decode($result,true);
            return $result;
            exit;
    }

}