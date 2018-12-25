<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../../style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
        crossorigin="anonymous">  

</head>
<title>Phim Online.com</title>
</head>

<body id="main">
    <div class="header-1 col-12">
        <div class="top">
            <a href="#" id="btnadmin"><i class="fas fa-users"></i>&ensp;Login</a><!--tạo khoản trắng bằng &ensp; -->
            <!-- <a href="#">Liên hệ quản cáo</a>                 -->
            <a href="../control/controlsignin/logout.php">Đăng xuất</a>
            <!-- <form id="form-signup" class="form" >
                <a href="#" class="closse"><i class="fas fa-users"></i></a>
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
                <input id="subsignup" value="Sign up" type="button" name="submitacc">                
            </form>
            <form id="form-login" class="form">
                <a href="#" class="closse"><i class="fas fa-users"></i></a>
                <div id="loginName" class="group">
                    <i class="fas fa-user icon_login"></i>
                    <input class="fomat" type="text" id="name" placeholder="User name">
                </div>
                <div id="loginPassword" class="group">
                    <i class="fas fa-lock icon_login"></i>
                    <input class="fomat" type="password" id="password" placeholder="Password">
                </div>
                <div id="sublogin">
                        <input id="login" class="sublogin" value="Log in" type="button" name="submit">
                        <input  id="Signup" class="sublogin" value="Sign up" type="button">
                </div>               
            </form> -->
        </div>
        <div class=" search-box">
            <input type="text" placeholder="Tìm kiếm" class="search-txt">
            <a href="#" class="search-btn">
                <i class="fas fa-search"></i>
            </a>
        </div>
    </div>
    <div class="container">
        <div class="header-2 col-12">
            <div class="logo">
                <h1><a href="home.php">Phim<span style="color: #FFCD43;">Online</span> </a></h1>
                <p>PhimOnline.com</p>
            </div>
            <nav class="navbar" id="nav-menu">
                <div class="nav-wrapper">
                    <ul>
                        <li><a href="home.php">Trang chủ</a></li>                     
                        <li><a href="">Phim mới</a></li>
                        <li><a href="phimle.php?groubID=1">Phim lẻ</a></li>
                        <li><a href="phimle.php?groubID=2">Phim bộ</a></li>
                        <li><a href="">Khác...</a></li>
                    </ul>
                </div>
                <a href="#" class="open-slide" onclick="openslidemenu()"><i class="fas fa-sliders-h"></i></a>
            </nav>
            <div id="slide-menu" class="slide-nav">
                <a href="#" onclick="closeslidemenu()" class="closemenu"><i class="fas fa-times"></i></a>
                <a href="">Trang chủ</a>
                <a href="">Phim mới</a>
                <a href="">Phim lẻ</a>
                <a href="">Phim bộ</a>
                <a href="">Khác...</a>
            </div>
        </div>