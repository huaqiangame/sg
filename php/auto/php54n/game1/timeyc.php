<?php
		global $Room;
        $id=$connection->user['room'];
        list($msec, $sec) = explode(' ', microtime());
  		$msectime =  (float)sprintf('%.0f', (floatval($msec) + floatval($sec)) * 1000);
  		$msg['time']=($msectime-$data2['time']).'ms';
  		$msg['id']=$connection->user['id'];
        $user = $db->getOne("select * from jz_room where id='" . $db->s($connection->user['room']) . "'");
       if($user['jiesuan']=='1'){
                   $jflist=array();
            foreach ($Room[$id]['user'] as $connection3) {
                  $jflist[$connection3->user['id']]=$connection3->user['dqjf'];
                  $add=array();
                  $add['uid']=$connection3->user['id'];
                  $add['room']=$id;
                  $add['overtime']=time();
                  $add['jifen']=$connection3->user['dqjf'];
                  $add['type']=$Room[$id]['lx'];
                  $db->insert('jz_user_room',$add);
            }
            arsort($jflist);

            $user=array();
            foreach ($jflist as $key => $value) {
               $user[]=$Room[$id]['user'][$key]->user;
            }
              $room['id']=$Room[$id]['xx']['roomid'];
               $room['zjs']=$Room[$id]['xx']['js'];
               $room['time']=date('Y-m-d H:i:s',time());
               $room['user']=$user;
             $room['fangzhu']=$Room[$id]['user'][$Room[$id]['xx']['uid']]->user;

            foreach ($user as $key => $value) {
                 unset($user[$key]['nickname']);
               }

               $save=array();
               $save['js']=$Room[$id]['xx']['js'];
               $save['overxx']=json_encode($user,JSON_UNESCAPED_UNICODE);
               $save['endtime']=time();
               $db->update('jz_room',$save,'id='.$db->s($id));  
         
         
        act('qztc','1',$connection);
       }
        
  		foreach ($Room[$id]['user'] as $connection3) {
  			 if($connection3->user['online']!='-1'){
  			 	if($connection3->user['level']==1){
  			 		act('ycxx',$msg,$connection3);
  			 	}
  			 }
  		}
