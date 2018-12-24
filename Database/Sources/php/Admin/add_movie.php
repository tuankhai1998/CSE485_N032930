<?php
    require("header.php");
?>
<?php // Xử Lý Add
  
    // Nếu người dùng click Upload
    require("../library/config.php"); 
    if (isset($_POST['addClick']))
    {
        $movieName = mysqli_real_escape_string($conn, $_POST['txt_movieName']);
        $movieNation = mysqli_real_escape_string($conn, $_POST['txt_movieNation']);
        $movieYear = mysqli_real_escape_string($conn, $_POST['txt_movieYear']);
        $movieTime = mysqli_real_escape_string($conn, $_POST['txt_movieTime']);
        $movieNumber = mysqli_real_escape_string($conn, $_POST['txt_movieNumber']);
        $movieGroup = mysqli_real_escape_string($conn, $_POST['txt_movieGroup']);
        $movieContent = mysqli_real_escape_string($conn, $_POST['txt_movieContent']);

        $file_ext=strtolower(end(explode('.',$_FILES['avatar']['name'])));
        $expensions= array("jpeg","jpg","png");

        if($movieName == "" || $movieNation == "" || $movieYear == "" || $movieTime == "" || $movieNumber == "" || $movieGroup == "" || $movieContent == ""){
            echo '<script> alert("*Bạn chưa nhập đầy đủ thông tin.")</script>';
        }elseif ($_FILES["avatar"]['name'] == " ") {
            echo '<script>alert("*Bạn chưa chọn file upload");</script>';
        }else if ($_FILES['avatar']['error'] > 0) {
            echo '<script>alert("*File upload bị lỗi");</script>';
        }elseif(in_array($file_ext,$expensions) === false){
            //Định dạng file upload
            echo '<script> alert("Chỉ hỗ trợ upload file JPEG, JPG hoặc PNG.")</script>';
        }elseif($_FILES['movie']['size'] > 2097152) {
            echo '<script> alert("Kích thước file không được lớn hơn 2MB.")</script>';
        }
        else {
            // Upload file
            move_uploaded_file($_FILES['avatar']['tmp_name'], '../../images/'.$_FILES['avatar']['name']);
            echo '<script>alert("Đã tải lên thành công");</script>';
            $link = '../../images/'.$_FILES['avatar']['name'].'';
            //Insert phim
            $sql_insert_movie = "INSERT INTO movie(`movieName`, `movieNation`, `movieYear`, `movieTime`, `movieNumber`, `groupID`, `movieContent`,`image`) 
            VALUES('$movieName','$movieNation','$movieYear','$movieTime','$movieNumber','$movieGroup','$movieContent','$link')";
            $query_insert_movie = mysqli_query($conn, $sql_insert_movie);
            echo '<script>alert("Đã thêm thành công");</script>';          
            header("location: list_movie.php");
            // exit();
        }
    }
    mysqli_close($conn);
    
?>
    <div id="wrapper2">
        <fieldset style="width: 500px; margin:20px auto 10px; color: #ffffff;">
            <legend>Thêm phim mới</legend>
            <form action="add_movie.php" method="post" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td>Tên phim:</td>
                        <td><input type="text" size="30" name="txt_movieName"></td>
                    </tr>
                    <tr>
                        <td>Quốc gia:</td>
                        <td><input type="text" size="30" name="txt_movieNation"></td>
                    </tr>
                    <tr>
                        <td>Năm phát hành:</td>
                        <td><input type="text" size="30" name="txt_movieYear"></td>
                    </tr>
                    <tr>
                        <td>Thời lượng:</td>
                        <td><input type="text" size="30" name="txt_movieTime"></td>
                    </tr>
                    <tr>
                        <td>Số tập:</td>
                        <td><input type="text" size="30" name="txt_movieNumber"></td>
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
                        <td><textarea style="margin-left: 5px;" name="txt_movieContent" cols="30" rows="5"></textarea></td>
                    </tr>
                    <tr>
                        <td>Chọn ảnh phim:</td>
                        <td><input type="file" name="avatar"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="text-align: center;"><input style=" width: 100px; margin-top: 10px;" type="submit" name="addClick" value="Thêm"/></td>
                    </tr>
                </table>

            </form>
        </fieldset>
    </div>
<?php
    // echo"<a href=".$link."> dowload </a>";
    require("footer.php");
?>