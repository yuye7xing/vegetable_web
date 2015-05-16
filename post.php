<?php
$con = mysqli_connect("localhost","root_zyz","zyz","vegetable");
$name=$_POST['name'];
$passw=$_POST['password'];
$q=mysqli_query($con, "SELECT * FROM user where u_name='".$name."'"."and u_passwo='".$passw."'");
//while($e=mysqli_fetch_row($q))
//	$output[]=$e;
//echo $output;
if ($e=mysqli_fetch_row($q)) {
	print_r("Yes");
}
else {
	print_r("sorry");
}