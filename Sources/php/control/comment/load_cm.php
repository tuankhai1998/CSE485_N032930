<?php
    require "../../library/config.php";
    $soPhim1Trang = 10;
    $trang=$_GET['trang'];
    $movieID = $_GET['movieID']; 
    settype($trang,'int');//set biến trang về kiểu int 
    $from = ($trang-1)*$soPhim1Trang;
    $sql= "SELECT comment.*,users.userName FROM `comment`,`users` WHERE users.ID = comment.ID and comment.movieID=$movieID 
    ORDER BY comment.cmtDate DESC 
    limit $from,$soPhim1Trang
    ";
    $cm=mysqli_query($conn,$sql);    
    if(mysqli_num_rows($cm)>0){
        while($rows=mysqli_fetch_assoc($cm)){
            ?> 
            <h2><i class="fas fa-user-edit"></i>&ensp;<?=$rows['userName']?></h2>
            <span><?=$rows['cmtDate']?> </span>
            <textarea cols="100" rows="6" class="txtcomment" readonly><?=$rows['cmtContent']?></textarea><br>
            <hr><br>                       

        <?php
        }
    }
    else{
        echo '1';
    }    
    mysqli_close($conn);       



?>