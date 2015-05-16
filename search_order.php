<?php
include 'daconnect.php';
//$name='zyz';
 $name=$_POST['name'];

$q=mysqli_query($con, "SELECT * FROM `order` WHERE u_id= (SELECT u_ID FROM user where u_name='".$name
		."')");
while ($e=mysqli_fetch_assoc($q)){

  $a[]=$e;
}

echo json_encode($a);
