<?php 
    session_start();
    if(isset($_SESSION['username'])){
        if($_SESSION['level']!=0){     
 
?>
<?php
    require("header.php");
?>
    
    <div id="wrapper">
        <table>
            <tr style="background-color: rgba(0, 0, 0, 0.5); color: #e6e6e6;">
                <th style="width: 50px;">STT</th>
                <th style="width: 150px;">Tài khoản</th>
                <th style="width: 200px;">Phim</th>
                <th>Nội dụng bình luận</th>
                <th style="width: 80px;">Kiểm duyệt</th>
                
            </tr>
            <?php
                $STT = 1;
                //Kết nối csdl
                require("../library/config.php");   
                //Thực hiện câu truy vấn
                $sql = "SELECT comment.cmttID, movie.movieName, users.userName, comment.cmtContent FROM comment, users, movie WHERE comment.movieID = movie.movieID AND comment.ID = users.ID  ORDER BY comment.cmtDate DESC ";
                $result = mysqli_query($conn, $sql);
                while ($data = mysqli_fetch_assoc($result)){
                    echo"<tr>";
                        echo"<td>$STT</td>";
                        echo"<td>$data[userName]</td>";
                        echo"<td>$data[movieName]</td>";
                        echo"<td>$data[cmtContent]</td>";  
                        echo"<td><a href='del_comment.php?id=$data[cmttID]' onclick = 'return show_confirm_delcmt();' style='color: red;'>Xóa </a></td>";
                    echo"</tr>";
                    $STT++;
                }
                
                //Đóng kết nối csdl
                mysqli_close($conn);
                
            ?>
        </table>
    </div>
<?php
    require("footer.php");
?>
<?php
      }else{
        header("location:../templates/home.php");
    }    
    }
    else {
        header("location:../templates/index.php");
        exit();
    }

?>