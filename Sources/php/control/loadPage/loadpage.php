<?php
     require "../library/config.php";
    $soPhim1Trang = 12;
    $trang=$_GET['trang'];
    $maNhom=$_GET['manhom'];
    settype=($trang,'int');//set biến trang về kiểu int 
    $from = ($trang-1)*$soPhim1Trang;
    $sql= "SELECT * FROM `phim`
    WHEN manhom ='$maNhom' 
    limit $from,$soPhim1Trang
    ";
    $phim=mysqli_query($conn,$sql);
    $rows=mysqli_fetch_assoc($phim)
    if(mysqli_num_rows($phim)>0){
        while($rows){
            echo '<div class="item">
            <label class="label-status">'.$rows['SOTAP'].'</label>';
            echo ' <a href="phimviet2.php?id='.$rows['MAPHIM'].'">
                        <img src="'.$rows['ANH'].'">
                        <div class="title">
                            <p class="name">'.$rows['TENPHIM'].'</p>
                        </div>
                    </a>';
            echo ' <div class="hover-item" title="'.$rows['TENPHIM'].'">
                        <a href="phimviet2.php?id='.$rows['MAPHIM'].'"><i class="fas fa-play-circle"></i></a>
                    </div>
                    </div>';
        }
    }
    else{
        echo 'không có bản ghi nào!';
    }    
    mysqli_close($conn);       



?>