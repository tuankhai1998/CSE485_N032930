<?php
    $keyword = $_POST['keyword'];
    require "../../library/config.php";
    $sql = "SELECT movie.*,link.*   FROM `movie`,`link` WHERE movie.movieName like '%$keyword%'  and movie.movieID=link.movieID and link.number=1 limit 0,4 ";
    $query = mysqli_query($conn,$sql);
    if(mysqli_num_rows($query)>0) {
?>  
   
    
    <div class="search_result">
        <div class="list_film">
    <?php
        echo'<h2>Phim được tìm thấy với từ khóa "<strong>'.$keyword.'</strong>"</h2>';
    ?>
<?php
        while($rows= mysqli_fetch_assoc($query)){
            echo'<div class="list-item">
                    <a href="phimviet2.php?id='.$rows['movieID'].'&tap='.$rows['number'].'">
                        <img src="'.$rows['image'].'">
                        <div class="title">
                        <p class="name"> '.$rows['movieName'].'</p>
                        <p class="parameter">Số tập: '.$rows['movieNumber'].' </p>
                        <p class="parameter">Thời lượng: '.$rows['movieTime'].'phút/tập</p>
                        <p class="parameter">Lượt xem: '.$rows['view'].'</p>
                        </div>
                    </a>
                </div>';
        }
    }
    else{
       echo'<br><h2>Không có phim bạn muốn tìm!</h2>';
    }
    mysqli_close($conn);

?>
        
     
               
        </div>
    </div>