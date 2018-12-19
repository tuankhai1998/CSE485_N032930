 <?php
    require("../../library/config.php");    
    $name = trim($_POST['name']);
    $pass = trim($_POST['password']);    
    $email = trim($_POST['email']);     
    $hash=password_hash($pass,PASSWORD_DEFAULT);
    $activeCode=md5(rand(0,1000));      
   // $pass =$hash;//Mã hóa pass
    //kiểm tra user có trùng không 
    $kiemtratk = "SELECT `userName` FROM `users` where userName = '$name'"; 
    $kiemtra=mysqli_query($conn, $kiemtratk);  
      if(mysqli_num_rows($kiemtra)==0){          
            $sql = "INSERT INTO `users`(`userName`, `userPassword`,  `userEmail`,`activeCode`) VALUES ('$name','$hash','$email','$activeCode')";   
            $query = mysqli_query($conn, $sql);           
            require "send.php";
            echo 1;
           
      }else{            
            echo"Tài khoản đã bị trùng xin vui lòng đổi tên tài khoản khác";
            
      }
      mysqli_close($conn);
  
 ?>
