<?php
include 'daconnect.php';
$name=$_POST['username'];
$seller_name=$_POST['seller_name'];
// $name='zyz';
// $seller_name='菜市场2号';
$sql_u_id="SELECT * FROM `user` WHERE `u_name` LIKE '".$name."'";
$q1=mysqli_query($con, $sql_u_id);
if($e=mysqli_fetch_row($q1)){
	$u_id=$e[0];
}
$sql_s_id="SELECT * FROM `seller` WHERE `S_name` LIKE '".$seller_name."'";
// $sql_s_id="SELECT * FROM `seller` WHERE `S_name` LIKE '菜市场2号'";
$q2=mysqli_query($con, $sql_s_id);

if($e2=mysqli_fetch_row($q2)){
	$s_id=$e2[0];
}
echo $s_id."----".$u_id."-----";



$sql="INSERT INTO `vegetable`.`collect` (`c_id`, `u_id`, `s_id`) VALUES (NULL,". $u_id.", ".$s_id.")";
//$q=mysqli_query($con," delete FROM `collect` WHERE `u_id` = (SELECT u_id FROM `user` WHERE `u_name` LIKE '".$name."') AND `s_id` = (SELECT s_id FROM `seller` WHERE `S_name` LIKE '".$seller_name."')");
mysqli_query($con, $sql);
if(mysqli_affected_rows($con)>0) {
	echo "成功";
}else{
	echo "fail";
}