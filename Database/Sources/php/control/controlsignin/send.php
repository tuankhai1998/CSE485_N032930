<?php
include ("../../PHPMailer-master/src/PHPMailer.php");
include  ("../../PHPMailer-master/src/Exception.php");
include ("../../PHPMailer-master/src/OAuth.php");
include  ("../../PHPMailer-master/src/POP3.php");
include  ("../../PHPMailer-master/src/SMTP.php");
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
// $name = trim($_POST['name']);
// $email =trim($_POST['email']);
$mail = new PHPMailer(true);                              // Passing `true` enables exceptions
try {
    //Server settings
    // $mail->SMTPDebug = 2;                                 // Enable verbose debug output
    // $mail->SMTP;                              
    $mail->isSMTP();                                      // Set mailer to use SMTP
    $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
    $mail->SMTPAuth = true;                               // Enable SMTP authentication
    $mail->Username = 'honganh7434@gmail.com';                 // SMTP username
    $mail->Password = 'anhthanhoai';                           // SMTP password
    $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
    $mail->Port = 587;                                    // TCP port to connect to
 
    //Recipients
    $mail->setFrom('honganh7434@gmail.com', 'Admin phimonline.com');
    // $mail->addAddress('honganh7434@gmail.com', 'Joe User');     // Add a recipient
    $mail->addAddress($email);               // Name is optional
    // $mail->addReplyTo('info@example.com', 'Information');
    // $mail->addCC('cc@example.com');
    // $mail->addBCC('bcc@example.com');
 
    //Attachments
    // $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
    // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
 
    //Content
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'Active accout PhimOnline.com';
    $mail->Body    = 'Hello'.$name.'.<br>Bạn đã là thành viên của website Phimonline. Chúng tôi rất vui mừng khi bạn tham gia cùng với chúng tôi.<br>Bạn vui lòng click vào link để kích hoạt tài khoản:<br>http://localhost/project/php/control/controlsignin/active.php?username='.$name.'&activecode='.$activeCode.'';
    $mail->AltBody = ''; 
    $mail->send();
    // echo 'Message has been sent';
} catch (Exception $e) {
    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
}
?>

