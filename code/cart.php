<?php
include ("conection_db.php");
require('../smartheader.php');

$title ="cartO";
$smarty -> assign('title',$title);
$sqle="SELECT * FROM product_cart JOIN product on product_cart.fk_product =product.id_product WHERE fk_cart = ?";
$stmt = $con->prepare($sqle);
$stmt->bind_param('s',$_SESSION['id']);
$stmt->execute();
$res = $stmt->get_result();
$arr = array();
while($row = $res->fetch_array(MYSQLI_ASSOC)){
    $arr[] = array(
        "id" => $row['id_product'],
        "name" => $row['p_name'],
        "pri" => $row['price'],
        "amount" => $row['amount'],
        "value" => $row['amount']*$row['price'],
      );
    }
$smarty -> assign('arr',$arr); 
$smarty -> display('C:\xampp\htdocs\smartycart\template\cart.tpl');

    ?>