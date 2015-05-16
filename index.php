<?php
include 'daconnect.php';
$b=array();
$q=mysqli_query($con, "SELECT * FROM `seller`");
while ($e=mysqli_fetch_assoc($q)){

	$b[]=$e;

}
//  print_r($b);
 echo json_encode($b);

 mysqli_close($con);