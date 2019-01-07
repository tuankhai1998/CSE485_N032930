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
            <?php
                if(isset($_SESSION['username'])){
                    echo'<a href="../Admin/index.php" id="btnadmin"><i class="fas fa-users">&ensp;</i>Hello,'.$_SESSION['username'].'!</a>';
                }      
            ?>
            <!-- <a href="#">Liên hệ quản cáo</a>     -->
            <a href="index.php">Đăng Nhập</a>
            <a href="../control/controlsignin/logout.php">Đăng xuất</a>
           
        </div>
        <div class=" search-box">
            <input type="text" placeholder="Tìm kiếm" class="search-txt" id="txtsearch">
            <a href="#" class="btn_search" id="btnsearch">
                <i class="fas fa-search"></i>
            </a>
            <div class="search_result">
             
            </div>
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
                        <li><a href="phimmoi.php">Phim mới</a></li>
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