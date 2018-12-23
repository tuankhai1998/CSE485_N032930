<?php
    session_start();
    if(isset($_SESSION['username'])){
        if($_SESSION['level']!=0){
            require("header.php");
            require("footer.php");
        }else{
            header("location:../templates/home.php"); 
        }
        
    }
    else {
        header("location:../templates/index.php");
        exit();
    }
?>