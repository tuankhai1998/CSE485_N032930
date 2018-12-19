//jquery 
$(document).ready(function () {
    // $('#btnlogin').click(function (e) { 
    //     e.preventDefault();        
    // //    $('#form-login').css({'display':'block',
    // //     'margin-top':'0'}); 
    //     loginshow();
    //     signuphidden();            
    // });
    // $('#Signup').click(function (e) { 
    //     e.preventDefault();
    //    loginhidden();
    //    signupshow();
    // });
    // // $('#exit').click(function (e) { 
    // //     e.preventDefault();        
    // //     $('#form-signup').animate({
    // //         marginLeft:900,
    // //         opacity: 0
    // //     });
    // // });
    // $('.closse').click(function (e) { 
    //     e.preventDefault();        
    //    loginhidden();
    //    signuphidden();
    // });
    // //kiểm tra form đăng ký 
    // $("#form-signup").validate({
    //     rules: {
    //         username: {   // đây là trường name của input
    //             required: true  // không được để trống
    //         },
    //         email: {
    //             required: true,
    //             email: true // bắt lỗi định dạng mail
    //         },
    //         confirm_password: { 
    //             required: true,               
    //             equalTo: "#password" // phải giống với input có id password
    //         },
    //         password : { 
    //             required: true, 
    //             //number : true, //  bắt buộc là kiểu số
    //             // digits :true,  // không được tồn tại số âm
    //             maxlength: 30 // giới hạn số ký tự được nhập vào
    //         }
    //     },
    //     messages: {
    //         username: {
    //             required: "Xin vui lòng nhập tên đăng nhập !"
    //             },
    //         email: {
    //             required: "Xin vui lòng nhập email !",
    //             email: "Email sai định dạng, xin vui lòng kiểm tra lại !"
    //             },
    //         confirm_password: {
    //             required: "Xin vui lòng nhập mật khẩu xác nhận !",            
    //             equalTo: "Mật khâu xác nhận không khớp với mật khâu,xin vui lòng kiểm tra lại !"
    //             },
    //             password: {
    //             required: "Xin vui lòng nhập mật khẩu !",
    //             // number : "Số điện thoại bắt buộc là kiểu số !",
    //             // digits : "Số điện thoại không được nhập số âm !",
    //             maxlength : "Số điện thoại không được nhập quá 20 ký tự !"
    //             }
    //     }
        
    // });   
    //  // lock btn 
    //  function lockbtnsignup(){         
    //     $('#subsignup').click(function () {
    //         var name = $('#form-signup #username').val();
    //         var password= $('#form-signup #password').val();
    //         var confirm_password= $('#form-signup #confirm_password').val();
    //         var email= $('#form-signup #email').val(); 
    //         if(name==""||password==""||confirm_password==""||email==""){              
    //             alert("bạn phải nhập đủ thông tin!");
    //         }  
    //         // ajax đăng ký 
    //         else{             
    //             if(password==confirm_password){
    //                 $.ajax({
    //                     type: 'POST',
    //                     url: '../control/controlsignin/signup.php',
    //                     data: {
    //                         name:name,
    //                         password:password,
    //                         email:email,
    //                     },           
    //                     success: function (kq) {
    //                         if(kq){
    //                             alert("bạn đã đăng khí thành công, xin hãy và mail để xác nhận mật khẩu.");
    //                             $('#form-signup').animate({
    //                                 marginLeft:900,
    //                                 opacity: 0
    //                             }).delay(2000);
    //                             $('.top .logout').css({opacity: 1,zindex: 1});   
    //                         }
    //                         else{
    //                         alert("<p>"+kq+"</p>");
    //                         }
    //                     }  
    //                 });
    //             }
    //         }    
            
    //     });            
            
    //  }
    //  //hidden/show form 
    //  function signupshow(){
    //     $('#form-signup').animate({
    //         marginLeft:0,
    //         opacity: 1
    //     });
    //     lockbtnsignup();
    //  }
    //  function signuphidden(){
    //     $('#form-signup').animate({
    //         marginLeft:900,
    //         opacity: 0
    //     });
    //  }
    //  function loginshow(){
    //     $('#form-login').animate({
    //         marginLeft:0,
    //         opacity: 1
    //     });
    //  }
    //  function loginhidden(){
    //     $('#form-login').animate({
    //         marginLeft:900,
    //         opacity: 0
    //     });
    //  } 
    

        

        
    

    


});
//sử lý js
function openslidemenu(){
    document.getElementById('slide-menu').style.width='200px';
    document.getElementById('main').style.marginRight='200px';
    document.getElementById('main').style.marginLeft='-200px';
}
function closeslidemenu(){
    document.getElementById('slide-menu').style.width='0';
    document.getElementById('main').style.marginRight='0';
    document.getElementById('main').style.marginLeft='0';
}
//than menu ghim trên đây web 
window.onscroll = function(){myfunction()};
var nav_sticky = document.getElementById("menu-row");
var sticky = nav_sticky.offsetTop;
function myfunction(){
    if(window.pageYOffset >= sticky){
        nav_sticky.classList.add("pin-to-top");

    }
    else{
        nav_sticky.classList.remove("pin-to-top");
    }
}






