<?php
    require("header.php");
?>

    <div id="wrapper">
        <table>
            <tr style="background-color: rgba(0, 0, 0, 0.5); color: #e6e6e6;">
                <th style="width: 50px;">STT</th>
                <th>Tài khoản</th>
                <th>Email</th>
                <th style="width: 100px;">Chức danh</th>
                <th style="width: 80px; ">Xóa</th>
            </tr>
            <?php
                $STT = 1;
                //Kết nối csdl
                require("../library/config.php");   
                //Thực hiện câu truy vấn
                $sql = "SELECT 	ID, userName, userEmail, userLevel FROM users";
                $result = mysqli_query($conn, $sql);
                while ($data = mysqli_fetch_assoc($result)){
                    echo"<tr>";
                        echo"<td>$STT</td>";
                        echo"<td>$data[userName]</td>";
                        echo"<td>$data[userEmail]</td>";
                        // echo"<td>$data[userLevel]</td>";
                        if ($data['userLevel'] == 2) {
                            echo"<td>Admin</td>";
                        }
                        elseif ($data['userLevel'] == 1) {
                            echo"<td>Nhân viên</td>";
                        }
                        else {
                            echo"<td>Thành viên</td>";
                        }
                        echo"<td><a href='del_user.php?id=$data[ID]' onclick = 'return show_confirm_deluser();' style='color: red;'>Xóa </a></td>";
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
