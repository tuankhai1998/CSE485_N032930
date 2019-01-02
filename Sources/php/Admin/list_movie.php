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
                <th>Phim</th>
                <th style="width: 110px;">Nhóm phim</th>
                <th style="width: 100px;">Quốc gia</th>
                <th style="width: 90px;">Năm</th>
                <th style="width: 80px;">Thời lượng</th>
                <th style="width: 60px;">Tập phim</th>
                <th style="width: 50px;">Sửa</th>
                <th style="width: 50px;">Thêm tập</th>
                <th style="width: 50px;">Xóa</th>
            </tr>
            <tr>
                <td colspan="10" style="height: 35px;"><a href="add_movie.php" style="color: greenyellow;">Thêm phim mới</a></td>
            </tr>
            <?php
                $STT = 1;
                //Kết nối csdl
                require("../library/config.php");
                //Thực hiện câu truy vấn
                $sql = "SELECT movie.movieID, movie.movieName, movie.movieNation, movie.movieYear, movie.movieTime, movie.movieNumber, movie.movieContent, moviegroup.groupName FROM `movie`, `moviegroup` WHERE movie.groupID=moviegroup.groupID";
                $result = mysqli_query($conn, $sql);
                while ($data = mysqli_fetch_assoc($result)){
                    echo"<tr>";
                        echo"<td>$STT</td>";
                        echo"<td>$data[movieName]</td>";
                        echo"<td>$data[groupName]</td>";
                        echo"<td>$data[movieNation]</td>";
                        echo"<td>$data[movieYear]</td>";
                        echo"<td>$data[movieTime]</td>";
                        echo"<td>$data[movieNumber]</td>";
                        echo"<td><a href='edit_movie.php?id=$data[movieID]' style='color: aqua;'>Sửa</a></td>";
                        echo"<td><a href='add_film.php?id=$data[movieID]' style='color: aqua;'>Thêm</a></td>";
                        echo"<td><a href='del_movie.php?id=$data[movieID]' onclick = 'return show_confirm_delmovie();' style='color: red;'>Xóa</a></td>";
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