<?php
include 'daconnect.php';
$seller_name=$_POST['seller_name'];

  $username=$_POST['username'];
  $time=$_POST['time'];
  $count=$_POST['count'];
 $sum=$_POST['sum'];
 
 for ($i=0;$i<$count;$i++)
 {
 $v_name[$i]=$_POST['V_name'.$i];
 $v_num[$i]=$_POST['V_num'.$i];
 }
 for ($h=$count;$h<5;$h++){
 	$v_name[$h]="";
 	$v_num[$h]=0;
 }
//echo $v_name[0].$v_name[1].$v_name[2].$v_name[3].$v_name[4];
$sql_seller_nameid="SELECT S_ID FROM `seller` WHERE `S_name` ='".$seller_name."'";
$sql_user_nameid="SELECT * FROM `user` WHERE `u_name` LIKE '".$username."'";
 $q=mysqli_query($con, $sql_seller_nameid);
 $userid=mysqli_query($con, $sql_user_nameid);
 $row = mysqli_fetch_row($q);
 $row_user=mysqli_fetch_row($userid);
$seller_id=$row[0];
$user_nameid=$row_user[0];
$add_order="INSERT INTO `order` (`o_id`, `o_money`, `o_time`, `u_ID`, `S_ID`) VALUES (NULL,'".$sum."','".$time."','".$user_nameid."','".$seller_id."')";
mysqli_query($con,$add_order);
//判断是否执行成功
if(mysqli_affected_rows($con)>0) {
	echo "sucess";
}else{
	echo "fail";
}
//获取前一条插入的ID
$id=mysqli_insert_id($con);
//再次插入
$add_order_detail="INSERT INTO `vegetable`.`order_detail` (`od_ID`, `o_id`, `ve_name_1`, `ve_num_1`, `ve_name_2`, `ve_num_2`, `ve_name_3`, `ve_num_3`, `ve_name_4`, `ve_num_4`, `ve_name_5`, `ve_num_5`) VALUES (NULL, '".$id."', '".$v_name[0]."', '".$v_num[0]."', '".$v_name[1]."', '".$v_num[1]."', '".$v_name[2]."', '".$v_num[2]."', '".$v_name[3]."', '".$v_num[3]."', '".$v_name[4]."', '".$v_num[4]."');";
mysqli_query($con,$add_order_detail);
if(mysqli_affected_rows($con)>0) {
	echo "sucess";
}else{
	echo "fail";
}
