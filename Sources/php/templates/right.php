        <div class="main-right col-4 col-tab-12">
            <H2>
                <a href="#" title="Xem tất cả">Xem nhiều nhất <i class="fas fa-chevron-right"></i></a>
            </H2>
            <div class="list-top">
                <?PHP
                require "../library/config.php";
                $Xuatphimmoi = "SELECT `movieID`, `movieName`, `movieNation`, `movieYear`, `movieTime`, `movieNumber`, `groupID`, `image`, `movieContent` FROM `movie` limit 0,5 ";
                $KETQUAPHIMMOI = mysqli_query($conn,$Xuatphimmoi);
                if (mysqli_num_rows($KETQUAPHIMMOI)>0) {
                    while($rows= mysqli_fetch_assoc($KETQUAPHIMMOI)){
                    echo'<div class="list-item">
                            <a href="phimviet2.php?id='.$rows['movieID'].'">
                                <img src="'.$rows['image'].'">
                                <div class="title">
                                <p class="name">'.$rows['movieName'].'</p>
                                <p class="parameter">Số tập:'.$rows['movieNumber'].' </p>
                                <p class="parameter">Thời lượng:'.$rows['movieTime'].'phút/tập</p>
                                <p class="parameter">Lượt xem:</p>
                                </div>
                            </a>
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
    </div>
</div>