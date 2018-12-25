<?php
    $user =$_GET['username'];
    $activeCode=$_GET['activecode'];
    require("../../library/config.php");
    $kiemtra ="SELECT * FROM `users` WHERE userName='$user' and activeCode='$activeCode' ";
    $kiemtratontai=mysqli_query($conn,$kiemtra);
    if(mysqli_num_rows($kiemtratontai)>0){
        $sql="UPDATE `users` SET `userActive`='1' WHERE userName='$user' and activeCode='$activeCode'";
        $query = mysqli_query($conn,$sql);
        session_start();
        $_SESSION['username']=$user;
        header('location:../../templates/home.php');
    }else{
        header('location:../../templates/index.php');
    }    

?>