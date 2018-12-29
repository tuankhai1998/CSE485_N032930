<div class="row">
        <div class="captionmain col-12 col-tab-12">   
            <?php                
                $id=$_GET['id'];                   
                $tap = $_GET['tap'];
                require '../library/config.php'; 
                require '../library/view.php';     
                $truyvanlink="SELECT `Link` FROM `link` WHERE `number`=$tap and movieID = $id ";
                $src=mysqli_query($conn,$truyvanlink);
                $rows=mysqli_fetch_assoc($src);
                echo'<video  width="100%" height="auto" src="'.$rows['Link'].'" controls autoplay></video>';
                count_view($id);
            ?>       
            
            <div class="conten">
            <?PHP             
                                  
                $xemphim = "SELECT `movieID`, `movieName`, `movieNation`, `movieYear`, `movieTime`, `movieNumber`, `groupID`, `image`, `movieContent` FROM `movie` WHERE movieID='$id'";
                $KETQUAXEM = mysqli_query($conn,$xemphim);
                if(mysqli_num_rows($KETQUAXEM)>0) {
                    while($rows= mysqli_fetch_assoc($KETQUAXEM)){
                        echo '<h3 id="filmname">
                                    '.$rows["movieName"].' 
                                </h3>
                                <div id="fimlconten">
                                    <p>Nội dung:'.$rows["movieContent"].'</p>  
                                </div>                           
                                <div id="information">
                                    <p>Quốc gia:<span id="nation">'.$rows["movieNation"].'</span></p>
                                    <p>Thời lượng:<span id="time">'.$rows["movieTime"].'</span>phút/tập</p>
                                    <p>Số tập:<span id="sotap">'.$rows["movieNumber"].'</span></p>
                                </div>';
                    }
                }else{
                    echo 'không có bản ghi nào!';
                }     
                
            ?>                
            </div>
        </div>
        <div class="contenmain col-12 col-tab12">
            <ul>
                <?php
                    $tapphim="SELECT `linkID`, `linkDayUp`, `number`, `movieID`, `Link` FROM `link` WHERE movieID='$id' ORDER BY `number`";
                    $ketquatap=mysqli_query($conn,$tapphim); 
                    $tap = $_GET['tap'];              
                    if(mysqli_num_rows($ketquatap)>0){      
                        for($i=0;$i<$rows2=mysqli_fetch_assoc($ketquatap);$i++){
                            if($i==$tap-1){
                                echo'<li><a href="phimviet2.php?id='.$id.'&tap='.$rows2['number'].'" class="chontap">'.$rows2['number'].'</a></li>';
                            }else{
                                echo'<li><a href="phimviet2.php?id='.$id.'&tap='.$rows2['number'].'">'.$rows2['number'].'</a></li>';
                            }
                        }       
                                         
                        // while($rows2=mysqli_fetch_assoc($ketquatap)){                            
                        //     echo'<li><a href="phimviet2.php?id='.$id.'&link='.$rows2['Link'].'">'.$rows2['number'].'</a></li>';
                        // }
                    } else{
                        echo"không có bản ghi nào.";
                    }          
                    mysqli_close($conn);  
                ?>
                
               
            </ul>
        </div>
        