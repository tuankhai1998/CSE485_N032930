<?php
    session_start();
    if(isset($_SESSION['username'])){ 
        require '../library/config.php';         
        mysqli_query($conn,'set names utf8');
        require'head.php';
        require'main.php';  
        require'comment.php';  
        require'bottom.php';
    }
    else{
        header('location:index.php');
    }
?>