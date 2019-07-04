<?php
if ($data2['token'] != 'null' && $data2['token']) {
	$user = $db->getOne("select * from jz_user where token='" . $db->s($data2['token']) . "'");
}
if (!$user) {
	act('gologin', '', $connection);
	return false;
}
$user['nickname'] = strip_tags($user['nickname']);
$connection->user = $user;
act('gxtoken', $data2['token'], $connection);
act('img', strip_tags($connection->user['img']), $connection);
act('nickname', $connection->user['nickname'], $connection);
act('id', strip_tags($connection->user['id']), $connection);
act('fk', strip_tags($connection->user['fk']), $connection);
act('sfgl', strip_tags($connection->user['sfgl']), $connection);
//返回当前所在公会ID
act('maccountId', strip_tags($connection->user['maccountId']), $connection);
//返回当前所在公会昵称
$maccountId_nickname = $db->getOne("select * from jz_user where id='" . $db->s(strip_tags($connection->user['maccountId'])) . "'");
act('maccountId_nickname', $maccountId_nickname['nickname'], $connection);
//返回当前所在公会我的权限
$isGuideManager = $db->getOne("select * from jz_qun where open='" . $db->s(strip_tags($connection->user['maccountId']))."and uid='".$db->s(strip_tags($connection->user['id'])) . "'");
$isGuideManager_run='0';
if(strip_tags($connection->user['id'])==strip_tags($connection->user['maccountId']) || $isGuideManager!=null){
$isGuideManager_run='1';
}


act('isGuideManager', $isGuideManager_run, $connection); 
