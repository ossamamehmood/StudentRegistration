    <!-- favicon  -->
    <link rel="shortcut icon" type="image/jpg" href="studentphoto\Stu_Reg.png"/>
    
<?php
session_start();
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
    {   
header('location:index.php');
}
else{



?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Admin | Student Logs</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
</head>

<body>
<?php include('includes/header.php');?>
   
<?php if($_SESSION['alogin']!="")
{
 include('includes/menubar.php');
}
 ?>
    
    <div class="content-wrapper">
        <div class="container">
              <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">User Log</h1>
                    </div>
                </div>
                <div class="row" >
            
                <div class="col-md-12">
                    
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           User Log
                        </div>
                       
                        <div class="panel-body">
                            <div class="table-responsive table-bordered">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                                
                                                    <th>Student Reg no </th>
                                            <th>IP  </th>
                                            <th>Login Time </th>
                                            
                                                <th>Logout Time</th>
                                             <th>Status</th>
                                    
                                        </tr>
                                    </thead>
                                    <tbody>
<?php
$sql=mysqli_query($bd, "select * from userlog");
$cnt=1;
while($row=mysqli_fetch_array($sql))
{
?>


                                        <tr>
                                            <td><?php echo $cnt;?></td>
                                              <td><?php echo htmlentities($row['studentRegno']);?></td>
                                            <td><?php echo htmlentities($row['userip']);?></td>
                                            <td><?php echo htmlentities($row['loginTime']);?></td>
                                            <td><?php echo htmlentities($row['logout']);?></td>
                                            <td><?php echo htmlentities($row['status']);?></td>
                                        </tr>
<?php 
$cnt++;
} ?>

                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                     
                </div>
            </div>





        </div>
    </div>
    
  <?php include('includes/footer.php');?>
    
    <script src="assets/js/jquery-1.11.1.js"></script>

    <script src="assets/js/bootstrap.js"></script>
</body>
</html>
<?php } ?>
