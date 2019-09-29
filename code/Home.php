<?php 
include ("conection_db.php");
require('../smartheader.php');
$title =" shopping cart";
$smarty -> assign('title',$title);
 
$getid =$_SESSION['owner'];
$query = "select `user_id` from `user` where `user_name` = ? "; 
$stmt = $con->prepare($query);
$stmt->bind_param('s',$getid); 
$stmt->execute();
$res = $stmt->get_result();
					while($row = $res->fetch_array(MYSQLI_ASSOC)) {
             $_SESSION['id']=$row['user_id'];
          }

$query = "SELECT * FROM product ORDER BY price ASC ";
$stmt = $con->prepare($query);
$stmt->execute();
$res = $stmt->get_result();
while($row = $res->fetch_array(MYSQLI_ASSOC)) {
    $data[] = array(
        "id" => $row['id_product'],
        "name" => $row['p_name'],
        "img" => $row['image'],
        "pri" => $row['price'],
        "qunt" => $row['quantity'],
      );}
$smarty -> assign('data',$data); 
$smarty -> display('C:\xampp\htdocs\smartycart\template\home.tpl');
$_SESSION['id']=63;
  ?>
