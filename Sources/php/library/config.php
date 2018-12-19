<?php
     //bước 1 : tạp liên kế 
     $conn = new mysqli('localhost','root','','movie_manager') ;   
     if(!$conn){
         echo'kết nối thất bại!';
     }
     // cho dự liệu có thể hiển thị tiếng việt
     mysqli_query($conn,'set names utf8');

?>