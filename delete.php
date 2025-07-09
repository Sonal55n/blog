<?php
include("connection.php");
$id=$_GET["id"];

$query = "DELETE FROM tiger WHERE id='$id'";
$sql=mysqli_query($conn,$query);
if($sql){
    echo"<script>alert('delete successful');</script>";
}
?>