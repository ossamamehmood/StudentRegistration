    <!-- favicon  -->
    <link rel="shortcut icon" type="image/jpg" href="studentphoto\Stu_Reg.png"/>

<?php 
require_once("includes/config.php");
if(!empty($_POST["regno"])) {
	$regno= $_POST["regno"];
	
		$result =mysqli_query($bd, "SELECT StudentRegno FROM students WHERE StudentRegno='$regno'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Student with this Regno Already Registered.</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	

}
}


?>
