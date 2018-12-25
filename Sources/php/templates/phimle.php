<?php
  
    session_start();
    if(isset($_SESSION['username'])){    
        require'../library/config.php';
        require'top.php';
        require'leftload.php';   
        require'right.php';
        require'bottom.php';
    }
    else{
        header('location:index.php');
    }
?>