<?php
    require("header.php"); 
    $id = $_GET['id'];
    
    if (isset($_POST['uploadclick']))
    { 
        require("../library/config.php"); 
        // $id = $_GET['id'];
        $tap = mysqli_real_escape_string($conn, $_POST['txtnumber']);
        $file_ext=strtolower(end(explode('.',$_FILES['movie']['name'])));
        $expensions= array("mp4","ogg");
        if ($tap == "") {
            echo '<script> alert("*Bạn chưa nhập tập phim cần thêm.")</script>';
        }
        elseif ($_FILES["movie"]['name'] == "") {
            echo '<script>alert("*Bạn chưa chọn file upload");</script>';
        }elseif ($_FILES["movie"]['error'] > 0) {
            echo '<script>alert("*File upload bị lỗi");</script>';
        }elseif(in_array($file_ext,$expensions) === false){
            //Định dạng file upload
            echo '<script> alert("Chỉ hỗ trợ upload file MP4 và OGG.")</script>';
        }elseif($_FILES['movie']['size'] > 2147483648) {
            echo '<script> alert("Kích thước file không được lớn hơn 2GB.")</script>';
        }
        else{
            // Upload file
            move_uploaded_file($_FILES['movie']['tmp_name'], '../../videos/'.$_FILES['movie']['name']);
            $link = '../../videos/'.$_FILES['movie']['name'];

            // echo 'File Uploaded';                
            $sql_insert_movie = "INSERT INTO `link`( `linkDayUp`, `number`, `movieID`, `Link`) VALUES (CURDATE(),'$tap','$id','$link')";
            $query_insert_movie = mysqli_query($conn, $sql_insert_movie);
            echo '<script>alert("Đã thêm thành công");</script>'; 
        }
    }
    
?>
    <div id="wrapper2">
        <fieldset style="width: 500px; margin:20px auto 10px; color: #ffffff;">
            <legend>Add movie</legend>
            <form action="add_film.php?id=<?php echo $id; ?>" method="POST" enctype="multipart/form-data">
                <table>
                    <?php                     
                        // echo $id;       
                        require("../library/config.php");                 
                        $sql="SELECT * FROM `movie` WHERE `movieID`=$id";
                        $kq = mysqli_query($conn, $sql);   
                        $rows = mysqli_fetch_assoc($kq);                                           
                        // if($rows){                            
                            // mysqli_num_rows($result)>0
                            echo '
                                <tr>
                                    <td>Tên phim:</td>
                                    <td><input type="text" value="'.$rows['movieName'].'" readonly></td>                                    
                                </tr>
                                <tr>
                                    <td>Quốc gia:</td>
                                    <td><input type="text" value="'.$rows['movieNation'].'" readonly></td>                                   
                                </tr>
                                <tr>
                                    <td>Năm phát hành:</td>
                                    <td><input type="text" value="'.$rows['movieYear'].'" readonly></td>                                    
                                <tr>
                                    <td>Thời lượng:</td>
                                    <td><input type="text" value="'.$rows['movieTime'].'" readonly></td>                                    
                                </tr>
                                <tr>
                                    <td>Số tập:</td>
                                    <td><input type="text" value="'.$rows['movieNumber'].'" readonly></td>                                   
                                </tr>                           
                                <tr>
                                    <td>Nội dung phim:</td>
                                    <td><textarea cols="30" rows="10" readonly>'.$rows['movieContent'].'</textarea></td>                           
                                </tr>                                  
                        
                            ';            
                    ?>
                    <tr>
                        <td>Tập số:</td>
                        <td><input type="text" name="txtnumber"/></td>
                    </tr>  
                    <tr>
                        <td>Phim:</td>
                        <td><input type="file" name="movie"/></td>
                    </tr>    
                    <tr>
                        <td></td>
                        <td style="text-align: center;"><input style=" width: 100px; margin-top: 10px;" type="submit" name="uploadclick" value="Add"/></td>
                    </tr>
                </table>
            </form>
        </fieldset>
    </div>
    <div style="width: 250px; margin 10px auto; text-align: center; color: red;">

    </div>
<?php
    mysqli_close($conn);
    require("footer.php");
?>