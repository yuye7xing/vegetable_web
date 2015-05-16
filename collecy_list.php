<?php
//列表显示收藏列表   zyz-2015-4-30
include 'daconnect.php';
$name=$_POST['name'];
// $name='zyz';
//SELECT * FROM `seller` where S_ID in(select S_ID from 'collect' where u_id=(select u_ID from user where u_name LIKE 'zyz'))
$sql="SELECT * FROM seller where S_ID in(select S_ID from collect where u_id=(select u_ID from user where u_name='".$name."'))";
$q=mysqli_query($con, $sql);
while ($e=mysqli_fetch_assoc($q)){

	$b[]=$e;

}
echo json_encode($b);
mysqli_close($con);