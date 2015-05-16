<?php
//查询输出订单详情
include 'daconnect.php';
$id=$_POST['ID'];
//$id=1;
$sql_od_id="SELECT * FROM `order_detail` WHERE `o_id` = '".$id."'";
$q1=mysqli_query($con, $sql_od_id);
while ($e=mysqli_fetch_assoc($q1)){

	$a[]=$e;
}

echo json_encode($a);
