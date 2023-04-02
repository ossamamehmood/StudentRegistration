    <!-- favicon  -->
    <link rel="shortcut icon" type="image/jpg" href="studentphoto\Stu_Reg.png"/>
    
<?php
session_start();
$_SESSION['alogin']=="";
session_unset();

$_SESSION['errmsg']="You have successfully logout";
?>
<script language="javascript">
document.location="index.php";
</script>
