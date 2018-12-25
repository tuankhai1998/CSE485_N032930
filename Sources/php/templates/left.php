<div class="row">
    <div class="main-left col-8 col-tab-12">  
        <h2><a href="#" title="Xem tất cả">Phim mới <i class="fas fa-chevron-right"></i></a></h2>
        <div class="new-film">
            <?PHP
                 require "../library/config.php";
                 $Xuatphimmoi = "SELECT movie.movieID, `movieName`, `movieNation`, `movieYear`, `movieTime`, `movieNumber`, `groupID`, `image`, `Link`,`movieContent`,link.number FROM `movie`,`link` where movie.movieID=link.movieID and link.number=1 limit 0,6  ";
                 $KETQUAPHIMMOI = mysqli_query($conn,$Xuatphimmoi);
                 if (mysqli_num_rows($KETQUAPHIMMOI)>0){
                     while($rows= mysqli_fetch_assoc($KETQUAPHIMMOI)){
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
        <h2><a href="phimle.php?groubID=1" title="Xem tất cả">Phim lẻ <i class="fas fa-chevron-right"></i></a> </i></h2>
        <div class="movie">
        <?PHP
            require "../library/config.php";            
            $theloai = "SELECT movie.movieID, `movieName`, `movieNation`, `movieYear`, `movieTime`, `movieNumber`, `groupID`, `image`, `Link`,`movieContent`,link.number FROM `movie`,`link`  where groupID =1 and movie.movieID=link.movieID and link.number=1 limit 0,6";
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
            <!-- <div class="item">
                <label class="label-status">full</label>
                <a href="#">
                    <img src="images/anh-hung-xa-dieu-201612899.jpg">
                    <div class="title">
                        <p class="name">Anh Hùng Xạ Điêu(2003)</p>
                    </div>
                </a>
                <div class="hover-item" title="Anh Hùng Xạ Điêu(2003)">
                    <a href="#"><i class="fas fa-play-circle"></i></a>
                </div>
            </div>
            <div class="item">
                <label class="label-status">full</label>
                <a href="#">
                    <img src="images/than_dieu_dại_hiep.jpg">
                    <div class="title">
                        <p class="name">Thần điêu đại hiệp (2006) </p>
                    </div>
                    <div class="hover-item" title="Thần điêu đại hiệp (2006)">
                        <a href="#"><i class="fas fa-play-circle"></i></a>
                    </div>
                </a>
            </div>
            <div class="item">
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut, distinctio!
            </div>
            <div class="item">
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut, distinctio!
            </div>
            <div class="item">
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut, distinctio!
            </div>
            <div class="item">
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut, distinctio!
            </div> -->

        </div>
        <h2><a href="phimle.php?groubID=2" title="Xem tất cả">Phim bộ <i class="fas fa-chevron-right"></i></a> </h2>
        <div class="tivishow">
            <?PHP
                require "../library/config.php";
                  
                $theloai = "SELECT movie.movieID, `movieName`, `movieNation`, `movieYear`, `movieTime`, `movieNumber`, `groupID`, `image`, `Link`,`movieContent`,link.number FROM `movie`,`link`  where groupID =2 and movie.movieID=link.movieID and link.number=1 limit 0,6";
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
    </div>