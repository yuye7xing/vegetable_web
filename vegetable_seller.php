<?php
include 'daconnect.php';
$seller_name=$_POST['seller_name'];
// $seller_name="菜市场1号";
$sql="SELECT * FROM vegetable WHERE S_ID =(SELECT s_id FROM seller WHERE S_name = '".$seller_name."')";
$q=mysqli_query($con, $sql);
while ($e=mysqli_fetch_assoc($q)){
	$a[]=$e;
}
// print_r($a);
echo json_encode($a);