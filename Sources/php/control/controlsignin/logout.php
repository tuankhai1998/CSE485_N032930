<?php
    session_start();
    if(isset($_SESSION['username'])){
        unset($_SESSION['username']);
        unset($_SESSION['level']);
        unset($_SESSION['ID']);
        header('location:../../templates/index.php');
    }
    else{
        header('location:../../templates/index.php'); 
    }

?>