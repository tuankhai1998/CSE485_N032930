
$(document).ready(function () {   
    var trang=1;
    $('.contenmain ul li a ').click(function () {
        //hiển thị tập 
        $('.contenmain ul li a').removeClass();
        $(this).addClass('chontap');
        //đổi video
        var link= $(this).attr('href');
        $.ajax({
            type: "GET",
            url: "../control/controlvide/video.php",
            data: {
                link:link,
            }           
        });         
    });
    function GetURLParameter(sParam) {
        var sPageURL = window.location.search.substring(1);
        var sURLVariables = sPageURL.split('&');
        for (var i = 0; i < sURLVariables.length; i++){
            var sParameterName = sURLVariables[i].split('=');
            if (sParameterName[0] == sParam)
            {
                return sParameterName[1];
            }
        }
    }
    $('.search-box  .search_result').hide(500);
    $('.search-box .search-txt').keyup(function (e) {        
        var keyword = $('.search-box .search-txt').val();
        if(keyword!=""){ 
            $.ajax({
                type: "POST",
                url: "../control/search/searchform.php",
                data: {
                    keyword:keyword,
                },                
                success: function (data) {                    
                    $('.search_result').html(data);
                    $('.search_result ').show(500);
                    // $('.row').html(data);
                    
                }
            });
        }else{
            $('.search-box  .search_result').hide(500);
        }
    });

    $(".comment .comment_form .submit").click(function (e) { 
        e.preventDefault();        
        var m = $(".comment_form .txtcomment").val();    
        var id_film= GetURLParameter('id');        
        $.ajax({
            type: "POST",
            url: "../control/comment/xuly_cm.php",
            data: {
                mess:m,                
                id:id_film,
            },           
            success: function (kq) {
                $(".listcomment").html(kq);
            }
        });

    });
    
    $('#load_cm').click(function (e) {         
        var id_film= GetURLParameter('id');  
        e.preventDefault();
        trang = trang +1 ;
        $.ajax({
            type: "GET",
            url: "../control/comment/load_cm.php",
            data: {
                trang:trang,
                movieID:id_film,
            },            
            success: function (data) {
                if(data!=1){
                    $('.listcomment ').append(data);
                }else{
                    trang = trang -1 ;
                    
                }
            }
        });        
    }); 
});
