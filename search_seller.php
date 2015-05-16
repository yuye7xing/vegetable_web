<?php
//通过ID查询卖家的名字
include 'daconnect.php';
$id=$_POST['id'];
//$id=1;
$sql_u_id="SELECT * FROM `seller` WHERE `S_ID` = '".$id."'";
$q1=mysqli_query($con, $sql_u_id);
if($e=mysqli_fetch_row($q1)){
	$u_id=$e[1];
}
echo $u_id;