<?php
    $href=$_GET['link'];
    echo"<script>alert($href)</script>";
    echo'
      <video width="100%" height="auto" src="'.$href.'" controls autoplay ></video>  ';   
   header("location:../../templates.php")
?>