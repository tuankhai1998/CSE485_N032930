
$(document).ready(function () {   
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
        
        // $('#video source').attr('src', link);
        
    });
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
});
