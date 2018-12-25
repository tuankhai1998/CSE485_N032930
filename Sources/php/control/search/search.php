<?php
    $keyword = $_POST['keyword'];
    require "../../library/config.php";
    $sql = "SELECT movie.movieID, `movieName`, `movieNation`, `movieYear`, `movieTime`, `movieNumber`, `groupID`, `image`, `Link`,`movieContent`,link.number FROM `movie`,`link` WHERE movie.movieName like '%$keyword%'  and movie.movieID=link.movieID and link.number=1 limit 0,12";
    $query = mysqli_query($conn,$sql);
    if(mysqli_num_rows($query)>0) {
?>   
        <!-- <div class="main-left col-8 col-tab-12">   -->
            <h2><a></a></h2>
            <div class="new-film" id ="listfilm">
        
<?php
        while($rows= mysqli_fetch_assoc($query)){
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
       echo'<br><h2>Không có phim bạn muốn tìm!</h2>';
    }
    mysqli_close($conn);

?>
             </div> 
                <!-- <a href="#" class="nextpage">Xem thêm</a>  -->
        </div>  
