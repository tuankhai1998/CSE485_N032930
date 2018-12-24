<?php
    require "../../library/config.php";
    $soPhim1Trang = 12;
    $trang=$_GET['trang'];
    $groubID = $_GET['groubID']; 
    settype($trang,'int');//set biến trang về kiểu int 
    $from = ($trang-1)*$soPhim1Trang;
    $sql= "SELECT movie.movieID, `movieName`, `movieNation`, `movieYear`, `movieTime`, `movieNumber`, `groupID`, `image`, `Link`,`movieContent`,link.number FROM `movie`,`link`  where groupID ='$groubID' and movie.movieID=link.movieID and link.number=1 
    limit $from,$soPhim1Trang
    ";
    $phim=mysqli_query($conn,$sql);    
    if(mysqli_num_rows($phim)>0){
        while($rows=mysqli_fetch_assoc($phim)){
            echo '<div class="item">
            <label class="label-status">'.$rows['movieNumber'].'</label>';
            echo ' <a href="phimviet2.php?id='.$rows['movieID'].'&tap='.$rows['number'].'">
                    <img src="'.$rows['image'].'">
                    <div class="title">
                        <p class="name">'.$rows['movieName'].'</p>
                    </div>
                </a>';
            echo ' <div class="hover-item" title="'.$rows['movieName'].'">
                    <a href="phimviet2.php?id='.$rows['movieID'].'&tap='.$rows['number'].'"><i class="fas fa-play-circle"></i></a>
                </div>
                </div>';
        }
    }
    else{
        echo 'không có bản ghi nào!';
    }    
    mysqli_close($conn);       



?>