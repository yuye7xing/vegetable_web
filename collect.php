<?php
include 'daconnect.php';
$name=$_POST['name'];
$seller_name=$_POST['seller_name'];
// $name='zyz';
// $seller_name='菜市场1号';
$q=mysqli_query($con,"SELECT * FROM `collect` WHERE `u_id` = (SELECT u_id FROM `user` WHERE `u_name` LIKE '".$name."') AND `s_id` = (SELECT s_id FROM `seller` WHERE `S_name` LIKE '".$seller_name."')");
while ($e=mysqli_fetch_row($q)){
	$a[]=$e;
	  
}

 echo json_encode($a);
