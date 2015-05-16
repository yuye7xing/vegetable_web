<?php
//给搜索界面提供数据支持

include 'daconnect.php';
$search=$_POST['search'];
// $search='1';
$sql="SELECT * FROM `seller` WHERE `S_name` LIKE '%".$search."%'";
$q=mysqli_query($con,$sql);
while ($e=mysqli_fetch_assoc($q)){

	$b[]=$e;

}
//  print_r($b);
echo json_encode($b);

mysqli_close($con);