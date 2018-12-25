<div class="row">
    <div class="main-left col-8 col-tab-12">  
        <h2><a></a></h2>
        <div class="new-film" id ="listfilm">
        <?php
            require "../library/config.php";
            $groubID = $_GET['groubID'];   
            $theloai = "SELECT movie.movieID, `movieName`, `movieNation`, `movieYear`, `movieTime`, `movieNumber`, `groupID`, `image`, `Link`,`movieContent`,link.number FROM `movie`,`link`  where groupID ='$groubID' and movie.movieID=link.movieID and link.number=1 ORDER BY view DESC limit 0,12";
            $query = mysqli_query($conn,$theloai);   
            if(mysqli_num_rows($query)>0) {
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
                echo 'không có bản ghi nào!';
            }    
            mysqli_close($conn);       
     
        ?>
        </div> 
        <a href="#" class="nextpage">Xem thêm</a> 
    </div>  