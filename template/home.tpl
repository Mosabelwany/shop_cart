<!DOCTYPE html>
<html lang="en">
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{$title}</title>
    <style>
        
        .product{
            border: 1px solid #eaeaec;
            margin: -1px 19px 3px -1px;
            padding: 10px;
            text-align: center;
            background-color: #efefef;
        }
        table, th, tr{
            text-align: center;
        }
        .title2{
            text-align: center;
            color: #66afe9;
            background-color: #efefef;
            padding: 2%;
        }
        ul{
            text-align: center;
            color: #66afe9;
            background-color: #efefef;
            padding: 2%;
        }
        h3{
            text-align: center;
            color: white;
            background-color: #262626;
            padding: 2%;
        }
        table th{
            background-color: #efefef;
        }
    </style>
</head>
<body>
<center>

<div class="container" style="width: 60%; ">
<ul class="nav">
    <li class="nav-item" style="width:70%;padding-left:30%;">
<center><h2>Shopping Now</h2></center>
    </li>
    <li style="width:30%; padding-left:15%;"  class="nav-item">
<center><a href="cart.php"> <button type="button" class="btn btn-warning">Check cart<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></span></button></a>
</center>
    </li>
  </ul>
       <div class="col-md-3" style="display:inline-block;">
     </div>
        <h3>Products List</h3>
      
{foreach $data as $item}
                    <div class="col-md-3" style="display:inline-block; padding:3px;">
                        <form method="post" action="save_product.php">
                            <div class="product">
                                <img src="{$item.img}" style="width:50%; height:50%;" class="img-responsive">
                                    <h5 class="text-info">{$item.name}</h5>
                                <h5 class="text-danger">{$item.pri}</h5>
                                <input type="number" name="quantity" class="form-control" value="1">
                                <input type="hidden" name="pro_name" value="{$item.name}">
                                <input type="hidden" name="pro_price" value="{$item.pri}"> 
                                <input type="hidden" name="id" value="{$item.id}"> 
                                <input type="submit" name="add" style="margin-top: 5px;" class="btn btn-success" value="Add to Cart">
                            </div>
                        </form>
                        </table>
                        
                    </div>
{/foreach}


                   
</center>    
</body>
</html>