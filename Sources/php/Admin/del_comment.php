<?php
    $id = $_GET["id"];
    //Mở kết nối csdl
    require("../library/config.php");

    //Thực hiện câu truy vấn
    mysqli_query($conn, "DELETE FROM comment WHERE cmtID = $id");
    
    //Đóng kết nối csdl
    mysqli_close($conn);
    //Hàm chuyển trang
    header("location: list_comment.php");
    exit();
?>