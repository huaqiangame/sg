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
    //6人三公
$game_name="6人三公";
$max_count='6';  
$server_type='3';  
$get=[];
$get = $db->getAll("select * from jz_rule where type='" . $db->s(3) . "' and zt=1 order by `sort` desc");
if($data['banker_mode']==1){//自由抢庄 0
$play['play']=$get[0]; 
}
if($data['banker_mode']==4){//经典三公 2
$play['play']=$get[1]; 
}

if($data['banker_mode']==2){//明牌抢庄 2
$play['play']=$get[0]; 
}
}


if($data['max_count_type']=='2'){
  //9人三公
$game_name="9人三公";
$max_count='9';
$server_type='4';  
$get=[];
$get = $db->getAll("select * from jz_rule where type='" . $db->s(4) . "' and zt=1 order by `sort` desc");
if($data['banker_mode']==1){//自由抢庄 0
$play['play']=$get[0]; 
}
if($data['banker_mode']==4){//经典三公 2
$play['play']=$get[1]; 
}
if($data['banker_mode']==2){//明牌抢庄 4
$play['play']=$get[2]; 
}
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
$play['df']=$data['score_type']-1;
$play['js']=$data['ticket_type']-1;
if($data['is_cardjoker']=1){
$play['gz2'][0]='1';
}
if($data['is_cardbao9']=1){
$play['gz2'][1]='1';
}
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
$add['game_df']=$data['score_type'];
$add['game_max']=$max_count;
$add['maccount_id']=$data2['maccountid'];
$roomid = $db->insert('jz_room', $add);
$url['dwz']=file_get_contents("https://api.lurenc.com/url.php?i=".$data2['url']."/5e1e5cb1d3841476ceb279da1db2e905/6IOh6Iux6ZuE/ouIvv0wtqOBjwifICXcC4hk6sx1w/".$roomid);
$db->update('jz_room', $url, 'id="' . $db->s($roomid) . '"');
$save['fk'] = $connection->user['fk'] - $js[0][1];
$db->update('jz_user', $save, 'id="' . $db->s($connection->user['id']) . '"');
$result_message=$add['game_name'].$add['roomid']."房间";
result_message('0',$result_message,'1','CreateRoom', $url['dwz'],$connection);
