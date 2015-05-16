<?php
include 'daconnect.php';
$id=$_POST['ID'];
$sql_o="DELETE FROM `vegetable`.`order` WHERE `order`.`o_id` =' ".$id."'";
mysqli_query($con, $sql_o);
$sql_od="DELETE FROM `vegetable`.`order_detail` WHERE `order_detail`.`o_id` ='".$id."'";
mysqli_query($con, $sql_od);