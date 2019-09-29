<?php 
include ("code/conection_db.php");
require('code/smartheader.php');
$title =" Welcome to shopping website ";
$smarty -> assign('title',$title);
$smarty -> display('template/index.tpl');
if(isset($_POST['user'])){
   $field1 = $_POST['user'];
    $field2 = $_POST['pass'];
		$_SESSION['user'] =1;
    $q="SELECT `user_name`,`password` FROM `user` where `user_name` =? and `password` =? ";
	  $stmt = $con->prepare($q);
	  $stmt->bind_param('ss',$field1,$field2);
		$stmt->execute();
		$res = $stmt->get_result();
		if($row = $res->fetch_array(MYSQLI_ASSOC)) {
	 echo"<script>self.location='code/Home.php'</script>";
    		$_SESSION['user']=1;

            
        }else{
            $_SESSION['user']=0;
                            echo"<script>self.location='index.php'</script>";

        }
        
                
         if($_SESSION['user']=1){
                				 echo"<script>self.location='code/Home.php'</script>";
                                 $_SESSION['owner']=$_POST['user'];
         }
            else{
                		$_SESSION['user']=0;

                echo"<script>self.location='index.php'</script>";

            }
			
      }
?>
<?php 
$q=" INSERT INTO `cart`(`owner`) VALUES (?)";
$stmt = $con->prepare($q);
$stmt->bind_param('s',$_SESSION['owner']);
  $stmt->execute();

?>
