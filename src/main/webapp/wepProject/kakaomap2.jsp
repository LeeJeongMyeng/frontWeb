<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.vo.*"
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=23fbea4a8cc689d8192434226e5baee4&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=23fbea4a8cc689d8192434226e5baee4"></script>


<script>

</script>
<style>
.map_wrap {
	position:relative;
    width:100%;
   	height:350px;
}

</style>
</head>
<body>

<div class="map_wrap">
    <div id="map" style="width:40%;height:40%;position:relative;overflow:hidden;"></div>

</div>
 

 
 	<input type="text" name="bigmap" value="" placeholder="시"/>
 	<input type="text" name="middlemap" value="" placeholder="구"/>
 	<input type="text" name="smallmap" value="" placeholder="동"/>
 	<input type="text" name="detailmap" value="" placeholder="상세주소"/>
 
 
</body>
<script>
var container = document.getElementById('map');// 지도를 표시할 div 
var options = {
	center: new kakao.maps.LatLng(33.450701, 126.570667),// 지도의 중심좌표
	level: 3 // 지도의 확대 레벨
};

//지도를 생성합니다    
var map = new kakao.maps.Map(container, options);

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커
	 infowindow = new kakao.maps.InfoWindow({zindex:1}); 


function searchDetailAddrFromCoords(coords, callback) {// 좌표로 법정동 상세 주소 정보를 요청합니다
   geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
   
}


 
/* function serar */
geocoder.addressSearch('영등포', function(result, status) {


    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {
        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
           content: '<div style="width:150px;text-align:center;padding:6px 0;">현재 지정 위치</div>'});
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    }
     kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
    	    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
    	        if (status === kakao.maps.services.Status.OK) {
    	            var detailAddr2 = !!result[0].road_address ? result[0].road_address.address_name : '도로명주소 없음';
    	            var	detailAddr3 = result[0].address.address_name;
    	            
    	            var content = '<div class="bAddr">' +
    	                            '<span class="title"><strong><도로명 주소정보> : </strong></span>' + detailAddr2 + "<br>" +
    	                            '<span class="title"><strong><행정동 주소정보> : </strong></span>' + detailAddr3 + "<br>" +  	                            
    	                        '</div>';

    	            // 마커를 클릭한 위치에 표시합니다 
    	            marker.setPosition(mouseEvent.latLng);
    	            marker.setMap(map);
    	            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
    	            infowindow.setContent(content);
    	            infowindow.open(map, marker);
    	            infoDiv=detailAddr2;		
    	            //console.log(result[0].address.region_1depth_name) //시
    	           	//console.log(result[0].address.region_2depth_name) //구
    	           	//console.log(result[0].address.region_3depth_name) //동
    	          	//console.log(result[0])
    	           $("input[name=bigmap]").val(result[0].address.region_1depth_name);
    	           	$("input[name=middlemap]").val(result[0].address.region_2depth_name)
    	           	$("input[name=smallmap]").val(result[0].address.region_3depth_name)
    	           	
    	           	
    	            
    	        }   
    	    });
    	});
});    
</script>
</html>