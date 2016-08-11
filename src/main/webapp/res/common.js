$(function() {
    $("tr[data-url]").click(function() {
        location.href = $(this).attr("data-url");
    });

    $("div.pagination a").click(function() {
        $("input[name=pg]").val($(this).attr("data-page"));
        $("form").submit();
    });

    $("[data-auto-submit=true]").change(function() {
        $(this).parents("form").submit();
    });
});
/* user.do  소속교회 검색 */

var count=0;
$(function() {
    $(".church").keyup(function() {
     count++;
    console.log(count)
     
    var content=$(".church").val();
     console.log(content)
     
     
     

     $.ajax({
     	type : "GET",
     	url : "http://maps.googleapis.com/maps/api/geocode/json?latlng="+lat+","+lon+"&language=ko",
     	error:function(request,status,error){
     		alert("통신실패")

             console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

            },
     	dataType: "json",
     	success : function(data){	
     		//category_id++;
     		alert("success")
     
     	}
     });
     
     
     
    });

   
});