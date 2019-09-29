<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{$title}</title>
</head>
    <body>

<h3 class="title2" style="text-align:center;margin-top:7%; padding-bottom:15px; ">Shopping Cart Details</h3>
        <div class="table-responsive">
        <table style="width:60%;" align="center" border="3" id="table" class="table table-striped table-bordered" dir="ltr">
            <tr>
                <th width="30%">Product Name</th>
                <th width="10%">Quantity</th>
                <th width="13%">Price Details</th>
                <th width="10%">Total Price</th>
                <th width="17%">Remove Item</th>
            </tr>

   
   
{foreach $arr as $item}
   <tr>
<form method="POST" action="remove_product.php">
<input type="hidden" size="30" name="prod_id" value="{$item.id}">
<input type="hidden" size="30" name="prod_name" value="{$item.name}">
<input type="hidden" name="amount" value="{$item.amount}">
<input type="hidden" name="price" value="{$item.pri}">

                <th width="30%">{$item.name}</th>
                <th width="10%">{$item.amount}</th>
                <th width="13%">{$item.pri}</th>
                <th width="10%">{$item.value}</th>
                <th width="17%"><input id="from" type="submit" class="btn btn-danger" name="submit" value="حذف"></th>
            </tr>
</form>
      {/foreach}

</table>
<center>
<a href="home.php"><button>Back</button></a>
</center>
</body> 
</html>