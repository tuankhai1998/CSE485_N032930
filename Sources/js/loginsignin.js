$(document).ready(function () {
    $('#btnlogin').click(function (e) { 
        e.preventDefault();
        loginshow();
        hellohidden();        
    });
    $('#btnsigninup').click(function (e) { 
        e.preventDefault();
        signupshow();
        hellohidden();        
    });
    $('.close').click(function (e) { 
        e.preventDefault();
        loginhidden();
        signuphidden();
        helloshow();
    });
    //hidden/show form 
    function signupshow(){
        $('#form-signup').animate({
            marginLeft:0,
            opacity: 1
        });   
        lockbtnsignup();     
    }
    function signuphidden(){
        $('#form-signup').animate({
            marginLeft:-900,
            opacity: 0
        });
    }
    function loginshow(){
        $('#form-login').animate({
            marginLeft:0,
            opacity: 1
        });
        lockbtnlogin();
       
    }
    function loginhidden(){
        $('#form-login').animate({
            marginLeft:-900,
            opacity: 0
        });
    }
    function hellohidden(){
        $('#hello').animate({
            marginLeft:-900,
            opacity: 0
        });
    }
    function helloshow(){
        $('#hello').animate({
            marginLeft:0,
            opacity: 1
        });
    } 
    // kiểm tra thông tin đăng ký có đứng chuẩn 
    $("#formsignup").validate({
        rules: {
            username: {   // đây là trường name của input
                required: true  // không được để trống
            },
            email: {
                required: true,
                email: true // bắt lỗi định dạng mail
            },
            confirm_password: { 
                required: true,               
                equalTo: "#password" // phải giống với input có id password
            },
            password : { 
                required: true, 
                //number : true, //  bắt buộc là kiểu số
                // digits :true,  // không được tồn tại số âm
                maxlength: 30 // giới hạn số ký tự được nhập vào
            }
        },
        messages: {
            username: {
                required: "Xin vui lòng nhập tên đăng nhập !"
                },
            email: {
                required: "Xin vui lòng nhập email !",
                email: "Email sai định dạng, xin vui lòng kiểm tra lại !"
                },
            confirm_password: {
                required: "Xin vui lòng nhập mật khẩu xác nhận !",            
                equalTo: "Mật khâu xác nhận không khớp với mật khâu,xin vui lòng kiểm tra lại !"
                },
                password: {
                required: "Xin vui lòng nhập mật khẩu !",
                // number : "Số điện thoại bắt buộc là kiểu số !",
                // digits : "Số điện thoại không được nhập số âm !",
                maxlength : "Số điện thoại không được nhập quá 20 ký tự !"
                }
        }
        
    });  
    function lockbtnsignup(){
        $('#subsignup').click(function () {            
            var name = $('#formsignup #username').val();
            var password= $('#formsignup #password').val();
            var confirm_password= $('#formsignup #confirm_password').val();
            var email= $('#formsignup #email').val(); 
            if(name==""||password==""||confirm_password==""||email==""){              
                alert("bạn phải nhập đủ thông tin!");
            }  
            // ajax đăng ký 
            else{             
                if(password==confirm_password){
                    $.ajax({
                        type: 'POST',
                        url: '../control/controlsignin/signup.php',
                        data: {
                            name:name,
                            password:password,
                            email:email,
                        },           
                        success: function (kq) {
                            if(kq==1){//?????
                                alert("bạn đã đăng khí thành công, xin hãy vào mail để xác nhận mật khẩu.");
                                $('#form-signup').animate({
                                    marginLeft:900,
                                    opacity: 0
                                }).delay(5000);
                                alert("mời bạn vào mail để có thể vào được tài khoản.");
                               
                            }
                            else{
                            alert(kq);
                            }
                        }  
                    });
                }
            }    
            
        }); 
    }  
    function lockbtnlogin(){
        $('#login').click(function (e) { 
            e.preventDefault();
            var name = $('#name').val();
            var password= $('#password2').val();
            if(name==""||password==""){              
                alert("bạn phải nhập đủ thông tin!");
            } else{                               
            $.ajax({                
                type: "POST",
                url: "../control/controlsignin/login.php",
                data: {
                  usrename:name,
                  password:password
                },               
                success: function (kq) {                  
                    if(kq==1){                     
                        window.location.href='home.php';
                    }
                    else{
                        alert(kq);
                    }
                }
            });
            } 
        });
       
    }         
     
});
