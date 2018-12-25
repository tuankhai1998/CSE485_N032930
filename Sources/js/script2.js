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
});
