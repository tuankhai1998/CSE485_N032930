<?php 
    session_start();
    if(isset($_SESSION['username'])){
        if($_SESSION['level']!=0){         
      

?>
<?php
    require("header.php");
?>
    
    <div id="wrapper">
        <table>
            <tr style="background-color: rgba(0, 0, 0, 0.5); color: #e6e6e6;">
                <th style="width: 900px;">Link quản lý bình luận</th>
            </tr>
            <tr>
                <td><a href="#">Link</a></td>
            </tr>
           
        </table>
    </div>
<?php
    require("footer.php");
?>
<?php
      }else{
        header("location:../templates/home.php");
    }    
    }
    else {
        header("location:../templates/index.php");
        exit();
    }

?>