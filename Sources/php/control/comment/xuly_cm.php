<?php
    session_start();
    $id_user = $_SESSION['userID'];
    $cmt_Mess = $_POST["mess"]; 
    $movie_id = $_POST["id"];
    require ("../../library/config.php"); 
    $sql = ("INSERT INTO `comment`( `ID`, `movieID`, `cmtContent`, `cmtDate`) VALUES('$id_user','$movie_id','$cmt_Mess',now())");
    $query = mysqli_query($conn, $sql);
    $sql="SELECT comment.*,users.userName FROM `comment`,`users` WHERE users.ID = comment.ID and comment.movieID=$movie_id  ORDER BY comment.cmtDate DESC limit 0,10";
    $list_cm=mysqli_query($conn,$sql);  
    if(mysqli_num_rows($list_cm)>0){                        
        while($rows=mysqli_fetch_assoc($list_cm)){
        ?> 
            <h2><i class="fas fa-user-edit"></i>&ensp;<?=$rows['userName']?></h2>
            <span><?=$rows['cmtDate']?> </span>
            <textarea cols="100" rows="6" class="txtcomment" readonly><?=$rows['cmtContent']?></textarea><br>
            <hr><br>                       

        <?php
        }
    }
    mysqli_close($conn);
?>