<?php
    // echo"<script> alert('ahahaha')</script>";
    session_start();
    require("../../library/config.php");
    $username= trim($_POST['usrename']);
    $password= trim($_POST['password']);    
    $checklogin = "SELECT * FROM `users` WHERE userName='$username'" ;
    $result=mysqli_query($conn,$checklogin);
    $row=mysqli_fetch_assoc($result);
    if(mysqli_num_rows($result)==1){
        if(password_verify($password,$row['userPassword'])){
            if($row['userActive']==1){
                $_SESSION['username']=$username;
                // $_SESSION['level']=$row['phanquyen']              
                echo 1;
                // header('location:../../templates/home.php');
            }
            else{
                echo "Tài khoản của bạn chưa đc kích hoạt vui lòng vào mail để kích hoạt tài khoản.";
            }
        }
        else{
            echo "Mật khẩu của quý khách không đúng vui lòng kiểm tra lại.";
        }
    } 
    else{
        echo "Tài khoản hoặc mật khẩu của quý khách không đúng vui lòng kiểm tra lại.";
    } 
?>