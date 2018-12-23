<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <script>
        function show_confirm_deluser() {
            if (confirm("Bạn có muốn xóa thành viên này ?")) {
                return true;
            }else{
                return false;
            }
        }
        function show_confirm_delmovie() {
            if (confirm("Bạn có muốn xóa phim này ?")) {
                return true;
            }else{
                return false;
            }
        }
    </script>
</head>

<body>
    <div id="top">
        <a href="#">Đăng xuất <i class="fas fa-sign-out-alt"></i></a>
        <a href="#">Trang chủ</a>
        <p>Chào mừng quản trị viên</p>
    </div>
    <div id="menu">
        <ul>
            <li><a href="list_user.php">Quản lý thành viên</a></li>
            <li><a href="list_movie.php">Quản lý phim</a></li>
            <li><a href="list_comment.php">Quản lý bình luận</a></li>
        </ul>
    </div>
    <div style="clear: left;"></div>