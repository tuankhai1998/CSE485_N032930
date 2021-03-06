<?php
    session_start();
    if(isset($_SESSION['username'])){
        header('location:home.php');
    }
    else{
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">
    <link rel="stylesheet" href="../../logincss.css">
   
</head>
<body>
    <div class="hello" id="hello">
        <h2>Xin chào bạn!</h2>
        <p>Chào mừng bạn đã đến với website xem phim online.</p>
        <p>Mời bạn đăng nhập để trải nghiệm!</p>
        <a href="#" id="btnlogin">Đã có tài khoản</a>
        <a href="#" id="btnsigninup" >Chưa có tài khoản</a>
    </div>
    <div class="login-signin" id="form-signup">
        <form id="formsignup" class="form" >  
            <a href="#" class="close"><i class="fas fa-sign-out-alt"></i></a>         
            <div id="signupName" class="group">
                <i class="fas fa-user icon_signup"></i>
                <input class="fomat" type="text" id="username" name="username" placeholder="User name">
            </div>
            <div id="signupEmail" class="group">
                <i class="fas fa-envelope icon_signup"></i>
                <input class="fomat" type="text" id="email" name="email"  placeholder="Email">
            </div>
            <div id="signPassword" class="group">
                <i class="fas fa-lock icon_signup"></i>
                <input class="fomat" type="password" id="password" name="password"  placeholder="Password">
            </div>
            <div id="signConfirmPassword" class="group">
                <i class="fas fa-lock icon_signup"></i>
                <input class="fomat" type="password" id="confirm_password" name="confirm_password"  placeholder="Confirm password">
            </div>                
            <!-- <input id="subsignup" value="Sign up" type="button" name="submitacc">  -->
            <a id="subsignup" href="#" >Sign up</a>               
        </form>
    </div>
    <div class="login-signin" id="form-login">
        <form  id="formlogin" class="form">
            <a href="#" class="close"><i class="fas fa-sign-out-alt"></i></a>           
            <div id="loginName" class="group">
                <i class="fas fa-user icon_login"></i>
                <input class="fomat" type="text" id="name" placeholder="User name">
            </div>
            <div id="loginPassword" class="group">
                <i class="fas fa-lock icon_login"></i>
                <input class="fomat" type="password" id="password2" placeholder="Password">
            </div>
            <!-- <div id="sublogin">
                    <input id="login" class="sublogin" value="Log in" type="button" name="submit">
                    <input  id="Signup" class="sublogin" value="Sign up" type="button">
            </div>                -->
            <a href="#" id="login">Login</a>
        </form>  
    </div>
    
    <script src="../../js/jquery-3.3.1.min.js"></script> 
    <script src="../../js/jquery.validate.js"></script>      
    <script src="../../js/loginsignin.js"></script> 
    
</body>
</html>

<?php
    }
?>
