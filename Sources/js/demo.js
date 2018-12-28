$(document).ready(function(){
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
    $("#cmt_Sub").click(function(){
        var m = $("#cmt_Mess").val();
        var n = $("#cmt_Name").val(); 
        var id_film= GetURLParameter('id');      
        $.ajax({
            type: "post",
            url: "xuly_cmt.php",
            data: {
                mess:m,
                name:n,
                id:id_film,
            },
            async: true,
            success: function (kq) {
                $("ul li:eq(0)").before(kq);
            }
        });
        return false;
    });
});