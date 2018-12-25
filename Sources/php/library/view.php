<?php
function count_view($id){
    require "config.php";
    $sql="UPDATE `movie` SET `view`= view+1 WHERE movieID=$id" ;
    mysqli_query($conn,$sql);
}
?>