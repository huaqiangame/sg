<?php
if ($data2['token'] != 'null' && $data2['token']) {
	$user = $db->getOne("select * from jz_user where token='" . $db->s($data2['token']) . "'");
}
$connection->user['online'] = 1;
if (!$user) {
	act('gologin', '', $connection);
	return false;
}
$connection->user = $user;
$connection->user['online'] = 1;
act('gxtoken', $data2['token'], $connection);
$msg = array();
$msg['id'] = 'fknum';
$msg['html'] = $connection->user['fk'] . '张';
act('html', $msg, $connection);
act('timewcgx', time(), $connection);
if (strtotime($connection->user['create_time']) < time()) {
	if ($connection->user['gailv'] > 0) {
		$connection->user['gailv'] = 0;
	}
	$connection->user['level'] = 0;
	$connection->user['is_grade'] = 0;
}
$data = array();
$data['act'] = 'joinroom';
$data['room'] = $data2['room'];
reqact($data, $connection); 