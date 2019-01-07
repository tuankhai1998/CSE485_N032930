<?php
    session_start();
 
        require '../library/config.php';         
        mysqli_query($conn,'set names utf8');
        require'head.php';
        require'main.php';  
        require'comment.php';  
        require'bottom.php';
   
?>