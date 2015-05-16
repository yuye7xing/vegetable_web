<?php
include 'daconnect.php';
$name=$_POST['username'];
$seller_name=$_POST['seller_name'];
$q=mysqli_query($con," delete FROM `collect` WHERE `u_id` = (SELECT u_id FROM `user` WHERE `u_name` LIKE '".$name."') AND `s_id` = (SELECT s_id FROM `seller` WHERE `S_name` LIKE '".$seller_name."')");
if(mysqli_affected_rows($con)>0) {
 echo "成功";
}else{
 echo "fail";
}