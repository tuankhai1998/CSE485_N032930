//jquery 
$(document).ready(function () {  
    var trang =1;
  // load page 
  //phân tích đường dẫn 
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

    $('.nextpage').click(function (e) {         
        var groubID=GetURLParameter('groubID');
        e.preventDefault();
        trang = trang +1 ;
        $.ajax({
            type: "GET",
            url: "../control/loadPage/loadpage.php",
            data: {
                trang:trang,
                groubID:groubID,
            },            
            success: function (data) {
                $('#listfilm').append(data);
            }
        });        
    });   
  // load page close  
  //search 
    $('.search-box .search-btn').click(function (e) { 
        e.preventDefault();
        $('.search-box  .search_result').hide(500);
        var keyword = $('.search-box .search-txt').val();
        if(keyword!=""){
            $.ajax({
                type: "POST",
                url: "../control/search/search.php",
                data: {
                    keyword:keyword,
                },                
                success: function (data) {
                    $('.main-left').html(data);
                    // $('.row').html(data);
                }
            });
        }
        
    });



  //search close  
 
   
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






