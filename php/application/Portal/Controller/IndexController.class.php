<?php

/*
 *      _______ _     _       _     _____ __  __ ______
 *     |__   __| |   (_)     | |   / ____|  \/  |  ____|
 *        | |  | |__  _ _ __ | | _| |    | \  / | |__
 *        | |  | '_ \| | '_ \| |/ / |    | |\/| |  __|
 *        | |  | | | | | | | |   <| |____| |  | | |
 *        |_|  |_| |_|_|_| |_|_|\_\\_____|_|  |_|_|
 */
/*
 *     _________  ___  ___  ___  ________   ___  __    ________  _____ ______   ________
 *    |\___   ___\\  \|\  \|\  \|\   ___  \|\  \|\  \ |\   ____\|\   _ \  _   \|\  _____\
 *    \|___ \  \_\ \  \\\  \ \  \ \  \\ \  \ \  \/  /|\ \  \___|\ \  \\\__\ \  \ \  \__/
 *         \ \  \ \ \   __  \ \  \ \  \\ \  \ \   ___  \ \  \    \ \  \\|__| \  \ \   __\
 *          \ \  \ \ \  \ \  \ \  \ \  \\ \  \ \  \\ \  \ \  \____\ \  \    \ \  \ \  \_|
 *           \ \__\ \ \__\ \__\ \__\ \__\\ \__\ \__\\ \__\ \_______\ \__\    \ \__\ \__\
 *            \|__|  \|__|\|__|\|__|\|__| \|__|\|__| \|__|\|_______|\|__|     \|__|\|__|
 */
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2014 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: Dean <zxxjjforever@163.com>
// +----------------------------------------------------------------------

namespace Portal\Controller;

use Common\Controller\HomebaseController;

/**
 * 首页
 */
class IndexController extends HomebaseController {
    public function __construct() {
       parent::__construct();
       $this->user_model = D("Portal/User");
       $this->user2 = $this->user_model->find($this->user['bd_id']);
       if($this->user['bd_id']==null){$this->assign('user2', $this->user);}else{$this->assign('user2', $this->user2);}
    }

    public function index() {
        if(!$_SESSION['istongyi']){
            $this->display(":fangjian_tishi");
            exit();
        }
        $token=md5($this->user['openid']);
        $save['token']=$token;
        M('user')->where(array('id'=>$this->user['id']))->save($save);
        $this->assign('token',$token);
        $this->assign('user',$this->user); 
        $isguidemanager=M('qun')->where("open='{$this->user["maccountid"]}' AND uid='{$this->user["id"]}'")->find();
        $maccountid=[];
        if($this->user['id']==$this->user['maccountid'] or $isguidemanager['isguidemanager']=='1'){
        $maccountid['id']='1';
        }else{
        $maccountid['id']='';
        }
        $maccountid_name=M('user')->where(array('id'=>$this->user['maccountid']))->find();
        $maccountid['nickname']=$maccountid_name['nickname'];
        $this->assign('maccountid', $maccountid);
        $this->display('Index:'."jt");
    }
     public function tongyi($data) {
        $_SESSION['istongyi']=$data;
        echo '1';
     }

    public function room() {
        $user=$this->user;
        $token=md5($this->user['openid']);
        $save['token']=$token;
        M('user')->where(array('id'=>$this->user['id']))->save($save);
        $room=I('room');
        $mapxx['id']=$room;
        $dkxx=M('room')->where($mapxx)->find();
        if(!$_SESSION['istongyi'] && $dkxx['type'] < 18){
            $this->display(":fangjian_tishi");
            exit();
        }
        $fzuser=M('user')->where(array('id'=>$dkxx['uid']))->find();
        $qun=M('qun')->where(array('open'=>$dkxx['uid']))->select();
        $mayuser=array();
        $mayuser[$fzuser['id']]=1;
        foreach ($qun as $key => $value) {
            if($value['zt']==1){
            $mayuser[$value['uid']]='1';
            }
        }
        $rule=json_decode($dkxx['rule'],true);


        $dfxx=explode(',',$rule['play']['df']);
        $gzxx=explode(',',$rule['play']['gz']);
        $pxxx=explode(',',$rule['play']['px']);
        $gz2xx=explode(',',$rule['play']['gz2']);
        $kpxx=explode(',',$rule['play']['kp']);
        $bpxx=explode(',',$rule['play']['bp']);
        $bsxx=explode(',',$rule['play']['bs']);



        $szxx=explode(',',$rule['play']['sz']);
        $sxxx=explode(',',$rule['play']['sx']);
        $cmxx=explode(',',$rule['play']['cm']);
      
      
        $dkxx['bs']=$rule['bs'];   
        $dkxx['df']=$dfxx[$rule['df']];
        $dkxx['kp']=$kpxx[$rule['kp']];
        $dkxx['bp']=$bpxx[$rule['bp']];
        $dkxx['gz']=$gzxx[$rule['gz']];
        $dkxx['sz']=$szxx[$rule['sz']];
        $dkxx['sx']=$sxxx[$rule['sx']];
        $dkxx['cm']=$cmxx[$rule['cm']];
        $dkxx['wfname']=$rule['play']['name'];
        $dkxx['userlist']=json_decode($dkxx['user'],true);
        foreach ($pxxx as $key => $value) {
            if($rule['px'][$key]==1){
                $dkxx['px'][]=$value;
            }
        }

        foreach ($gz2xx as $key => $value) {
            if($rule['gz2'][$key]==1){
                $dkxx['gz2'][]=$value;
            }
        }

        $this->assign('fzuser',$fzuser);
        $this->assign('mayuser',$mayuser);

        $this->assign('room',$dkxx);
        $this->assign('token',$token);
        $this->assign('user',$user);

        $this->display('game'.$dkxx['type']);
    }


    public function fangjian_tishi(){
        $this->display();
    }
    public function fangjian_qt(){
        $this->display();
    }
    public function fangjian_fanhuisy(){
        $this->display();
    }
    public function fangjian_kj(){
        $this->display();
    }
    public function fangjian_nobanker_kj(){
        $this->display();
    }
    public function fangjian_yinyue(){
        $this->display();
    }   
    public function fangjian_gz1(){
        $room=I('room');
        $mapxx['id']=$room;
        $dkxx=M('room')->where($mapxx)->find();

        $rule=json_decode($dkxx['rule'],true);


        $dfxx=explode(',',$rule['play']['df']);
        $gzxx=explode(',',$rule['play']['gz']);
        $kpxx=explode(',',$rule['play']['kp']);
        $bpxx=explode(',',$rule['play']['bp']);
        $pxxx=explode(',',$rule['play']['px']);
        $gz2xx=explode(',',$rule['play']['gz2']);
        $szxx=explode(',',$rule['play']['sz']);
        $sxxx=explode(',',$rule['play']['sx']);
        $bsxx=explode(',',$rule['play']['bs']);
        $cmxx=explode(',',$rule['play']['cm']);
      	$modes = explode(",", $rule["play"]["mode"]);
        $welfares = explode(",", $rule["play"]["welfare"]);
        $targets = explode(",", $rule["play"]["target"]);

        $dkxx['df']=$dfxx[$rule['df']];
        $dkxx['gz']=$gzxx[$rule['gz']];
        $dkxx['kp']=$kpxx[$rule['kp']];
        $dkxx['bp']=$bpxx[$rule['bp']];
        $dkxx['sz']=$szxx[$rule['sz']];
        $dkxx['bs']=$szxx[$rule['bs']];
        $dkxx['sx']=$sxxx[$rule['sx']];
        $dkxx['cm']=$cmxx[$rule['cm']];

      	$dkxx["mode"] = $modes[$rule["mode"]];
      	$dkxx["modeIndex"] = $rule["mode"];
        $dkxx["welfare"] = $welfares[$rule["welfare"]];
        foreach($rule["target"] as $key => $val) {
        	if($val == 1) {
            	$dkxx["target"][] = $targets[$key];
            }
        }
        $dkxx['wfname']=$rule['play']['name'];
        $dkxx['userlist']=json_decode($dkxx['user'],true);
        $this->assign('room',$dkxx);
        $this->display();
    }
      public function fangjian_gz(){
        $room=I('room');
        $mapxx['id']=$room;
        $dkxx=M('room')->where($mapxx)->find();

        $rule=json_decode($dkxx['rule'],true);


        $dfxx=explode(',',$rule['play']['df']);
        $gzxx=explode(',',$rule['play']['gz']);
        $kpxx=explode(',',$rule['play']['kp']);
        $bpxx=explode(',',$rule['play']['bp']);
        $pxxx=explode(',',$rule['play']['px']);
        $bsxx=explode(',',$rule['play']['bs']);
        $gz2xx=explode(',',$rule['play']['gz2']);
        $szxx=explode(',',$rule['play']['sz']);
        $sxxx=explode(',',$rule['play']['sx']);
        $cmxx=explode(',',$rule['play']['cm']);
      	$modes = explode(",", $rule["play"]["mode"]);
        $welfares = explode(",", $rule["play"]["welfare"]);
        $targets = explode(",", $rule["play"]["target"]);

        $dkxx['df']=$dfxx[$rule['df']];
        $dkxx['gz']=$gzxx[$rule['gz']];
        $dkxx['kp']=$kpxx[$rule['kp']];
        $dkxx['bp']=$bpxx[$rule['bp']];
        $dkxx['sz']=$szxx[$rule['sz']];
        $dkxx['sx']=$sxxx[$rule['sx']];
        $dkxx['cm']=$cmxx[$rule['cm']];
        $dkxx['bs']=$bsxx[$rule['bs']];

      	$dkxx["mode"] = $modes[$rule["mode"]];
      	$dkxx["modeIndex"] = $rule["mode"];
        $dkxx["welfare"] = $welfares[$rule["welfare"]];
        foreach($rule["target"] as $key => $val) {
        	if($val == 1) {
            	$dkxx["target"][] = $targets[$key];
            }
        }
        $dkxx['wfname']=$rule['play']['name'];
        $dkxx['userlist']=json_decode($dkxx['user'],true);
        foreach ($pxxx as $key => $value) {
            if($rule['px'][$key]==1){
                $dkxx['px'][]=$value;
            }
        }

        foreach ($gz2xx as $key => $value) {
            if($rule['gz2'][$key]==1){
                $dkxx['gz2'][]=$value;
            }
        }
        $this->assign('room',$dkxx);
        $this->display();
    }
    public function gamejs() {
      
        $map['type']=0;
        $map['zt']=1;
        $server=M('server')->where($map)->order('num asc')->find();
        $content = "var dkxx='".$server['dk']."'";
        $expire = 604800;
        header ( 'Content-type: application/x-javascript' );
        header ( 'Cache-Control: max-age=' . $expire );
        header ( 'Accept-Ranges: bytes' );
        header ( 'Content-Length: ' . strlen ( $content ) );
        echo $content;
    }

    public function download(){
        $post=M('danye')->where("id='1'")->find();
        $this->assign('post',$post);
        $this->display();
    }
    public function logout() {
        session('uid', null);
        session('user_login', null);
        redirect(__ROOT__ . "/");
    }
    public function dologin() {

        $name = I("post.user_login");
        if (empty($name)) {
            $this->error(L('USERNAME_OR_EMAIL_EMPTY'));
        }
        $pass = I("post.user_pass");
        if (empty($pass)) {
            $this->error(L('PASSWORD_REQUIRED'));
        }
        $verrify = I("post.verify");
        if (empty($verrify)) {
            $this->error(L('CAPTCHA_REQUIRED'));
        }
        //验证码
        if (!sp_check_verify_code()) {
            $this->error(L('CAPTCHA_NOT_RIGHT'));
        } else {
            $user = D("Protal/User");
            $where['user_login'] = $name;
            $result = $user->where($where)->find();
            if (!empty($result)) {
                if($result['user_status']==1){
                    $this->error('账号被封');
                }
//                if($result['user_status']==2){
//                    $this->error('账号未激活');
//                }
                if (md5($pass) == $result['user_pass']) {
                    //登入成功页面跳转
                    session('uid', $result["id"]);
                    session('user_login', $result["user_login"]);
                    session('user', $result);
                    $result['last_login_ip'] = get_client_ip(0, true);
                    $result['last_login_time'] = date("Y-m-d H:i:s");
                    $user->save($result);
                    cookie("user_login", $name, 3600 * 24 * 30);
                    $this->success(L('LOGIN_SUCCESS'), U("Home/index"));
                } else {
                    $this->error(L('PASSWORD_NOT_RIGHT'));
                }
            } else {
                $this->error(L('USERNAME_NOT_EXIST'));
            }
        }
    }
  
  	public function checkRoomId() {
    	$roomid = I("post.roomid");
      	$ret = array("code" => -1);
      	if(!$roomid) {
          	$ret["msg"] = "请输入房间号！";
        } else {
            $room = M("room")->where(array("roomid" => $roomid))->order("id desc")->select();
            if(count($room) == 0) {
                $ret["msg"] = "不存在该房间号！";
            } else {
              	$ret["code"] = 0;
              	$ret["id"] = $room[0]["id"];
              	$ret["msg"] = "进入房间";
            }
        }
      	exit(json_encode($ret));
    }
  
  //公会房间查询  写法在这里  主要是 提取下 
  //所在公会ID maccount_id  自己的ID account_id
  public function getAllRoom() {
        $getAllRoom=json_decode(file_get_contents('php://input'), true);
        $maccount_id=$getAllRoom['maccount_id'];
        $account_id=$getAllRoom['account_id'];
        $user=M('room')->where('maccount_id = '.intval($maccount_id).' AND endtime = 0')->select();
        $data=[];
        $data['rooms']=[];
        for($i=0;$i<count($user);$i++){
        $data['rooms'][$i]['time']=time();
        $data['rooms'][$i]['room_id']=$user[$i]['id'];
        $data['rooms'][$i]['room_number']=$user[$i]['roomid'];
        $data['rooms'][$i]['max_count']=$user[$i]['game_max'];
        $data['rooms'][$i]['game_type']=9;
        $data['rooms'][$i]['fun_name']="room";
        $data['rooms'][$i]['game_name']=$user[$i]['game_name'];
        $gamers=json_decode($user[$i]['user'],true);
        $data['rooms'][$i]['gamers']=[];
        $j=0;
        foreach($gamers as $key=>$value){
        $us=M('user')->where('id='.$key)->find();
        $data['rooms'][$i]['gamers'][$j]['serial_num']=$j+1;
        $data['rooms'][$i]['gamers'][$j]['account_id']=$key;
        $data['rooms'][$i]['gamers'][$j]['nickname']=$us['nickname'];
        $data['rooms'][$i]['gamers'][$j]['headimgurl']=$us['img'];
      $j++;
      }
        $data['rooms'][$i]['base_score']=$user[$i]['game_df'];
       $data['rooms'][$i]['bankermode']='2';
       $data['rooms'][$i]['score_type']='0';
       $data['rooms'][$i]['chip_type']=false;
      $data['rooms'][$i]['upperlimit']=false;
      $data['rooms'][$i]['horse']=false;
    }
    
     $data['allGuides']=[];
     $qunuser=M('qun')->where('uid = '.intval($account_id).' AND zt = 1')->select();
    //循环取出公会列表
     for($i=0;$i<count($qunuser);$i++){
     $us_name=M('user')->where('id='.$qunuser[$i]['open'])->find();
     $data['allGuides'][$i]['manager_id']=$qunuser[$i]['open'];
     $data['allGuides'][$i]['guide_name']=$us_name['nickname'].'の公会';
     $data['allGuides'][$i]['i']=0;
             }
    //取出自己公会列表
     $data_i=M('user')->where('id='.$account_id)->find();
     $data['allGuides'][$i]['manager_id']=$data_i['id'];
     $data['allGuides'][$i]['guide_name']=$data_i['nickname'].'の公会';
     $data['allGuides'][$i]['i']=0;
    //当前公会昵称
     $us_name_nickname=M('user')->where('id='.intval($maccount_id))->find();
     $qun_us_name_nickname=M('user')->where('id='.$us_name_nickname['id'])->find();
     $data['guide_name']=$qun_us_name_nickname['nickname'].'の公会';
     echo json_encode($data,true);
   // print_r($us_name_nickname);
    }
//房卡人物查询  

      public function search_account() {
        $data=json_decode(file_get_contents('php://input'), true);
        $user=M('user')->where('id='.$data['account_id'])->find();
         if(count($user) == 0) {
         echo'{"has":false}';
            } else {
         echo'{"has":true,"account_id":"'.$user['id'].'","nickname":"'.$user['nickname'].'","avatar_url":"'.$user['img'].'"}';
            }

        
}
  //退出公会
public function quit_guide(){
        $getAllRoom=json_decode(file_get_contents('php://input'), true);
        $maccount_id=$getAllRoom['manager_id'];
        $account_id=$getAllRoom['account_id'];
        $map['open']=$maccount_id;
        $map['uid']=$account_id;
        $quit_guide_run=M('qun')->where($map)->delete();
   if($quit_guide_run!=0){
     echo'{"bl":true,"msg":"操作成功"}';
   }else{
   echo'{"bl":false,"msg":"操作失败"}';
   }
}

  //添加公会成员
public function add_member(){
        $getAllRoom=json_decode(file_get_contents('php://input'), true);
        $maccount_id=$getAllRoom['add_account_id'];
        $account_id=$getAllRoom['account_id'];
            $map['open']=$account_id;
            $map['uid']=$maccount_id;
            $qun=M('qun')->where($map)->select();
            if($qun){
                echo '{"bl":false,"msg":"已加入公会"}';
            }
            else{
            $add['open']=$account_id;
            $add['uid']=$maccount_id;
            M('qun')->add($add);
            $map['open']=$account_id;
            $map['uid']=$maccount_id;
            $save['zt']=1;
            $save['mname']=base64_encode($getAllRoom['name']);
            $add_member_run=M('qun')->where($map)->save($save);
            echo'{"bl":true,"msg":"update"}';
            }

  }
  //{"bl":true,"msg":"update"} 成功
  //{"bl":false,"msg":"用户不存在"} 失败
  //修改当前公会
  public function get_manager(){
  $getAllRoom=json_decode(file_get_contents('php://input'), true);
        $maccount_id=$getAllRoom['maccount_id'];
        $account_id=$getAllRoom['account_id'];
        $map['id']=$account_id;
        $save['maccountid']=$maccount_id;
        $add_member_run=M('user')->where($map)->save($save);
  }
  
  //开通关闭公会
  public function setManageSwitch(){
  $is_on=json_decode(file_get_contents('php://input'), true); 
  if($is_on['is_on']=='1'){
        $save['sfgl']='1';
        M('user')->where(array('id'=>$this->user['id']))->save($save);
  echo '{"result":0,"data":{"is_on":1},"result_message":"\u8bbe\u7f6e\u6210\u529f"}'; 
  }else{
        $save['sfgl']='0';
        M('user')->where(array('id'=>$this->user['id']))->save($save);
  echo '{"result":0,"data":{"is_on":0},"result_message":"\u8bbe\u7f6e\u6210\u529f"}';
  }
  }
  //提取群成员
 public function searchGroupMember(){
   $searchGroupMember=json_decode(file_get_contents('php://input'), true); 
  $map['open']=$searchGroupMember['manager_id'];
  $qun=M('qun')->where($map)->select();
  $data=[];
  $data['result']=0;  
  $data['data']=[];
  for($i=0;$i<count($qun);$i++){
  $user=M('user')->where(array('id'=>$qun[$i]['uid']))->find();
  $data['data'][$i]['account_id']=$user['id'];  
  $data['data'][$i]['avatar_url']=$user['img'];
  $data['data'][$i]['nickname']=$user['nickname'];
  $data['data'][$i]['manager_id']=$searchGroupMember['manager_id'];
  $data['data'][$i]['member_id']=$user['id'];  
  $data['data'][$i]['mname']=base64_decode($qun[$i]['mname']);
  $data['data'][$i]['status']=$qun[$i]['zt'];
  $data['data'][$i]['pos']=$qun[$i]['isguidemanager'];
  }
  $user=M('user')->where(array('id'=>$searchGroupMember['manager_id']))->find(); 
  $data['data'][$i]['account_id']=$user['id'];  
  $data['data'][$i]['avatar_url']=$user['img'];
  $data['data'][$i]['nickname']=$user['nickname'];
  $data['data'][$i]['mname']=$user['nickname'];   
  $data['data'][$i]['status']=1;
  $data['data'][$i]['pos']=99; 
  $data['page']=1;
  $data['result_message']="查找成员"; 
  $data['sum_count']=count($qun)+1;
  $data['sum_page']=1;
  echo json_encode($data,true);
 }
  
  //设置管理员
  //{"manager_id":"348207","member_id":"348294","bl":false}
  public function setManager(){
  $setManagerr=json_decode(file_get_contents('php://input'), true);
  $map['open']=$setManagerr['manager_id'];
  $map['uid']=$setManagerr['member_id'] ;
  if($setManagerr['bl']==true){
  $save['isguidemanager']=1;
  }else{
  $save['isguidemanager']=0;
  }  
  M('qun')->where($map)->save($save);
  echo'0';
  }
  //修改公会昵称
  public function dealChangeMname(){
  $dealChangeMname=json_decode(file_get_contents('php://input'), true);
  $map['open']=$dealChangeMname['manager_id'];
  $map['uid']=$dealChangeMname['account_id'];
  $save['mname']=base64_encode($dealChangeMname['mname']);  
  M('qun')->where($map)->save($save);
  echo base64_encode($dealChangeMname['mname']);
  }
  
  public function dealMember(){
  $dealMember=json_decode(file_get_contents('php://input'), true);
            $map['open']=$dealMember['manager_id']; //公会ID
            $map['uid']=$dealMember['member_id'];  //踢出ID
            M('qun')->where($map)->delete();
            echo'{"result":0,"data":{"status":3},"result_message":"\u64cd\u4f5c\u6210\u529f"}';
  
  }

  //发送房卡
  
  public function send_cards(){
  $send_cards=json_decode(file_get_contents('php://input'), true);

  $user = M('user')->where(array('id'=>$this->user['id']))->find();
          if($send_cards['num'] > $this->user['fk']) {
          echo'{"bl":false,"msg":"房卡不足"}';exit;
        }else{
        $data['send_id'] = $this->user['id'];
        $data['number'] = $send_cards['num'];
        $data['add_time'] = time();
        $data['mis'] =  date('Ymd') . str_pad(mt_rand(1, 99999), 5, '0', STR_PAD_LEFT);
        $add = M('fk_bag')->add($data);
        all_record($this->user['id'],'制作房卡包',-$send_cards['num'],'fk');
        $fk['get_id']=$send_cards['add_account_id'];
        $fk['end_time']=time();
        $edit = M('fk_bag')->where(array('mis'=>$data['mis']))->save($fk); 
        all_record($send_cards['add_account_id'],'领取房卡包',$send_cards['num'],'fk');    
        echo'{"bl":true}';
          }

  
  }
  
}