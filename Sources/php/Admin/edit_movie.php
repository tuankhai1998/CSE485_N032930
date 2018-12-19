<?php
    require("header.php");
    //Xử lý chỉnh sửa phim
    $id = $_GET["id"];
    //Mở kết nối csdl
    //require("../../Login/connect.php");

    if (isset($_POST['editClick']))
    {   
        require("../library/config.php");
        $movieName = mysqli_real_escape_string($conn, $_POST['txt_movieName']);
        $movieNation = mysqli_real_escape_string($conn, $_POST['txt_movieNation']);
        $movieYear = mysqli_real_escape_string($conn, $_POST['txt_movieYear']);
        $movieTime = mysqli_real_escape_string($conn, $_POST['txt_movieTime']);
        $movieNumber = mysqli_real_escape_string($conn, $_POST['txt_movieNumber']);
        $movieGroup = mysqli_real_escape_string($conn, $_POST['txt_movieGroup']);
        $movieContent = mysqli_real_escape_string($conn, $_POST['txt_movieContent']);

        if($movieName == "" || $movieNation == "" || $movieYear == "" || $movieTime == "" || $movieNumber == "" || $movieGroup == "" || $movieContent == ""){
            echo '<script> alert("*Bạn chưa nhập đầy đủ thông tin.")</script>';
        }
        else {
            //Update phim
            
            $sql_update_movie = "UPDATE `movie` SET `movieName`='$movieName',`movieNation`='$movieNation',`movieYear`='$movieYear',`movieTime`='$movieTime',`movieNumber`='$movieNumber',`groupID`='$movieGroup',`movieContent`='$movieContent' WHERE movieID = $id";
            $query_update_movie = mysqli_query($conn, $sql_update_movie);
            mysqli_close($conn);
            header("location: list_movie.php");
            exit();
        }
    }
    //Đóng kết nối csdl
    //mysqli_close($connect);
    

    //Mở kết nối csdl
    require("../../Login/connect.php");
    //Thực hiện câu truy vấn
    $result = mysqli_query($conn, "SELECT * FROM `movie` WHERE movieID = $id");
    $data = mysqli_fetch_assoc($result);
?>

<div id="wrapper2">
    <fieldset style="width: 500px; margin:20px auto 10px; color: #ffffff;">
        <legend>Chỉnh sửa nội dung phim</legend>
        <form action="edit_movie.php?id=<?php echo $id; ?>" method="post">
            <table>
                <tr>
                    <td>Tên phim:</td>
                    <td><input type="text" size="30" name="txt_movieName" value="<?php echo $data['movieName']?>"></td>
                </tr>
                <tr>
                    <td>Quốc gia:</td>
                    <td><input type="text" size="30" name="txt_movieNation" value="<?php echo $data['movieNation']?>"></td>
                </tr>
                <tr>
                    <td>Năm phát hành:</td>
                    <td><input type="text" size="30" name="txt_movieYear" value="<?php echo $data['movieYear']?>"></td>
                </tr>
                <tr>
                    <td>Thời lượng:</td>
                    <td><input type="text" size="30" name="txt_movieTime" value="<?php echo $data['movieTime']?>"></td>
                </tr>
                <tr>
                    <td>Số tập:</td>
                    <td><input type="text" size="30" name="txt_movieNumber" value="<?php echo $data['movieNumber']?>"></td>
                </tr>
                <tr>
                    <td>Nhóm phim:</td>
                    <td>
                        <select style="width: 100px; height: 25px; margin-left: 5px;" name="txt_movieGroup">
                            <option value="1">Phim lẻ</option>
                            <option value="2">Phim bộ</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Nội dung phim:</td>
                    <td><textarea style="margin-left: 5px; font-family: sans-serif; line-height: 1.3em;" name="txt_movieContent" cols="33" rows="5"><?php echo $data['movieContent']?></textarea></td>
                  </tr>
                <tr>
                    <td></td>
                    <td style="text-align: center;"><input style=" width: 100px; margin-top: 10px;" type="submit" name="editClick" value="Chỉnh sửa"/></td>
                </tr>
            </table>
        </form>
    </fieldset>
</div>
<?php
    //Đóng kết nối csdl
    mysqli_close($conn);
    require("footer.php");
?>