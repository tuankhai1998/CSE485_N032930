<div class="comment col-12 col-tab12">
                <h3>Viết bình luận <i class="fas fa-pencil-alt"></i></h3><br>
                <form class="comment_form">                   
                    <textarea name="comment" cols="100" rows="6" class="txtcomment"></textarea>
                    <button class="submit" >Gửi</button>
                </form><br><br>
                <div class="listcomment col-12 col-tab12">                   
                    <?php
                        require '../library/config.php'; 
                        $sql="SELECT comment.*,users.userName FROM `comment`,`users` WHERE users.ID = comment.ID and comment.movieID=$id  ORDER BY comment.cmtDate DESC limit 0,10";
                        $list_cm=mysqli_query($conn,$sql);                       
                        if(mysqli_num_rows($list_cm)>0){                        
                            while($rows=mysqli_fetch_assoc($list_cm)){
                            ?> 
                                <h2><i class="fas fa-user-edit"></i>&ensp;<?=$rows['userName']?></h2>
                                <span><?=$rows['cmtDate']?> </span>
                                <textarea cols="100" rows="6" class="txtcomment" readonly ><?=$rows['cmtContent']?></textarea><br>
                                <hr><br>                       
                
                            <?php
                            }
                        }else{
                            echo"Hãy là người bình luận đầu tiên cho phim này .";
                        }             
                 
                    ?>
                </div>
                <button id="load_cm" >Xem thêm 10 bình luận </button>
        </div>

    </div>
</div>
