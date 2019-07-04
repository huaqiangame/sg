<?php
$data=$data2['data'];
if ($data2['session'] != 'null' && $data2['session']) {
	$user = $db->getOne("select * from jz_user where token='" . $db->s($data2['session']) . "'");
}
if (!$user) {
    return result_message('1','session Invalid!','1','CreateRoom', '',$connection);
}
$play = array();
if($data['max_count_type']=='1'){
    //6人
$game_name="6人炸金花";
$max_count='6';                                
$server_type='5';  
$get=[];
$get = $db->getAll("select * from jz_rule where type='" . $db->s(5) . "' and zt=1 order by `sort` desc");
$play['play']=$get[0];
  if($data['default_score']=='4'){$play['df']='0';}//底分
  if($data['default_score']=='8'){$play['df']='1';}//底分
  if($data['default_score']=='10'){$play['df']='2';}//底分
  if($data['default_score']=='16'){$play['df']='3';}//底分
  if($data['default_score']=='20'){$play['df']='4';}//底分
  if($data['default_score']=='40'){$play['df']='5';}//底分
  if($data['chip_type']=='1'){$play['cm']='0';}else{$play['cm']='1';}//筹码
  if($data['look_score']=='0'){$play['kp']='0';}//看牌
  if($data['look_score']=='100'){$play['kp']='1';}//看牌
  if($data['look_score']=='300'){$play['kp']='2';}//看牌
  if($data['look_score']=='500'){$play['kp']='3';}//看牌

$data['disable_look'];//首轮禁止看牌
$data['disable_pk'];//闷牌，全场禁止比牌
  
  if($data['upper_limit']=='0'){$play['sx']='0';}//看牌
  if($data['upper_limit']=='500'){$play['sx']='1';}//看牌
  if($data['upper_limit']=='1000'){$play['sx']='2';}//看牌
  if($data['upper_limit']=='2000'){$play['sx']='3';}//看牌
$data['pk_round'];//比牌
  if($data['pk_round']=='0'){$play['bp']='0';}//比牌
  if($data['pk_round']=='100'){$play['bp']='1';}//比牌
  if($data['pk_round']=='300'){$play['bp']='2';}//比牌
  if($data['pk_round']=='500'){$play['bp']='3';}//比牌

}


if($data['max_count_type']=='2'){
  //9人
  $game_name="9人炸金花";
$max_count='9';                                
$server_type='16';  
$get=[];
$get = $db->getAll("select * from jz_rule where type='" . $db->s(16) . "' and zt=1 order by `sort` desc");
  $play['play']=$get[0];
  if($data['default_score']=='4'){$play['df']='0';}//底分
  if($data['default_score']=='8'){$play['df']='1';}//底分
  if($data['default_score']=='10'){$play['df']='2';}//底分
  if($data['default_score']=='16'){$play['df']='3';}//底分
  if($data['default_score']=='20'){$play['df']='4';}//底分
  if($data['default_score']=='40'){$play['df']='5';}//底分
  if($data['chip_type']=='1'){$play['cm']='0';}else{$play['cm']='1';}//筹码
  if($data['look_score']=='0'){$play['kp']='0';}//看牌
  if($data['look_score']=='100'){$play['kp']='1';}//看牌
  if($data['look_score']=='300'){$play['kp']='2';}//看牌
  if($data['look_score']=='500'){$play['kp']='3';}//看牌

$data['disable_look'];//首轮禁止看牌
$data['disable_pk'];//闷牌，全场禁止比牌
  
  if($data['upper_limit']=='0'){$play['sx']='0';}//看牌
  if($data['upper_limit']=='500'){$play['sx']='1';}//看牌
  if($data['upper_limit']=='1000'){$play['sx']='2';}//看牌
  if($data['upper_limit']=='2000'){$play['sx']='3';}//看牌
  if($data['pk_round']=='0'){$play['bp']='0';}//比牌
  if($data['pk_round']=='100'){$play['bp']='1';}//比牌
  if($data['pk_round']=='300'){$play['bp']='2';}//比牌
  if($data['pk_round']=='500'){$play['bp']='3';}//比牌
}

if($data['ticket_type']==1){
  preg_match_all("/\d+/", explode(',', $play['play']['js'])[0], $js);
}else{
  preg_match_all("/\d+/", explode(',', $play['play']['js'])[1], $js);}

$connection->user = $db->getOne("select * from jz_user where id='" . $db->s($user['id']) . "'");
if ($connection->user['fk'] < $js[0][1]) {
        return result_message('1','房卡不足!','1','CreateRoom', '',$connection);

}         
$server = $db->getOne("select * from jz_server where type='" . $db->s($server_type) . "' and zt=1 order by num asc");
if (!$server) {
            return  result_message('1','游戏维护中，请稍后再试','1','CreateRoom','', $connection);
}

$play['gz2'][0]='1';
$play['time']['zb']=$data['ready_time'];
$play['time']['xz']=$data['bet_time'];
$add = array();
$add['type'] = $server_type;
$add['dk'] = $server['dk'];
$add['rule'] = json_encode($play, JSON_UNESCAPED_UNICODE);
$add['user'] = json_encode(array(), JSON_UNESCAPED_UNICODE);
$add['time'] = time();
$add['online'] = 0;
$add['zt'] = 0;
$add['zjs'] = $js[0][0];
$add['js'] = 0;
$add['fk'] = $js[0][1];
$add['uid'] = $connection->user['id'];
$add['roomid'] = in_array($add['type'], [1, 2]) ? rand(138000, 130000) : rand(138000, 130000);
$add['game_name']=$game_name;
$add['game_df']=$data['default_score'];
$add['game_max']=$max_count;
$add['maccount_id']=$data2['maccountid'];
$roomid = $db->insert('jz_room', $add);
$url['dwz']=file_get_contents("https://api.lurenc.com/url.php?i=".$data2['url']."/5e1e5cb1d3841476ceb279da1db2e905/6IOh6Iux6ZuE/ouIvv0wtqOBjwifICXcC4hk6sx1w/".$roomid);
$db->update('jz_room', $url, 'id="' . $db->s($roomid) . '"');
$save['fk'] = $connection->user['fk'] - $js[0][1];
$db->update('jz_user', $save, 'id="' . $db->s($connection->user['id']) . '"');
$result_message=$add['game_name'].$add['roomid']."房间";
result_message('0',$result_message,'1','CreateRoom', $url['dwz'],$connection);
