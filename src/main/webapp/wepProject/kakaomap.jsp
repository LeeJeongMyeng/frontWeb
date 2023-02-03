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

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=23fbea4a8cc689d8192434226e5baee4&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=23fbea4a8cc689d8192434226e5baee4"></script>


<script>

</script>
<style>
.map_wrap {
	position:relative;
    width:100%;
   	height:350px;}
.hAddr .title {
	font-weight:bold;
	display:block;}
.hAddr {
	position:absolute;
	left:10px;
	top:10px;
	border-radius:2px;
	background:#fff;
	background:rgba(255,255,255,0.8);
	z-index:1;
	padding:5px;}
#centerAddr{
	display:block;
	margin-top:2px;
	font-weight: normal;
}
#centerAddr2{
	display:block;
	margin-top:2px;
	font-weight: normal;
}
.bAddr {
	padding:5px;
	text-overflow:ellipsis;
	overflow: hidden;
	white-space: nowrap;
	border-radius:10px;
}
</style>
</head>
<body>

<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    <div class="hAddr">
        <span class="title">주소정보</span>
        <span id="centerAddr"></span>
        
        <span class="title">선택한 위치의 주소정보(상세)</span>
        <span id="centerAddr2">  </span>
        <span id="centerAddr3">  </span>
    </div>
</div>
 

 
 <form name="aform" id="aform" action="kakaoaddressexp.jsp" method="post">
            <Input Type="hidden" name="addressval" value="">    
            <Input Type="hidden" name="addressval2" value="">    
 </form>
 
 
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

// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시
searchAddrFromCoords(map.getCenter(), displayCenterInfo);

// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', function() {
    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
});
function searchAddrFromCoords(coords, callback) {// 좌표로 행정동 주소 정보를 요청합니다
   geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

function searchDetailAddrFromCoords(coords, callback) {// 좌표로 법정동 상세 주소 정보를 요청합니다
   geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
   
}


// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
 function displayCenterInfo(result, status) {
    if (status === kakao.maps.services.Status.OK) {
      var infoDiv = document.getElementById('centerAddr');
	console.log(result)
        for(var i = 0; i < result.length; i++) {
            // 행정동의 region_type 값은 'H' 이므로
            
            if (result[i].region_type === 'H') {
                infoDiv.innerHTML = result[i].address_name;
                break;
            }
        }
    }    
} 

 
 
 
 
 
/* function serar */
geocoder.addressSearch('목1동', function(result, status) {
	var infoDiv2 = document.getElementById('centerAddr2');
	var infoDiv3 = document.getElementById('centerAddr3');

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
           content: '<div style="width:150px;text-align:center;padding:6px 0;">현재 지정 위치</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
        
        var infoDiv = document.getElementById('centerAddr');

        for(var i = 0; i < result.length; i++) {
            // 행정동의 region_type 값은 'H' 이므로
            if (result[i].region_type === 'H') {
                infoDiv.innerHTML = result[i].address_name;
                break;
            }
        }
    }
     kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
    	    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
    	        if (status === kakao.maps.services.Status.OK) {
    	            var detailAddr2 = !!result[0].road_address ? result[0].road_address.address_name : '';
    	            detailAddr3 = result[0].address.address_name;
    	           		
    	            		
    	            	console.log("도로명주소:"+result[0].road_address.address_name)
    	            	console.log("지번주소:"+result[0].address)
    	            
    	            var content = '<div class="bAddr">' +
    	                            '<span class="title">법정동 주소정보</span>' + 
    	                            detailAddr2 + 
    	                        '</div>';

    	            // 마커를 클릭한 위치에 표시합니다 
    	            marker.setPosition(mouseEvent.latLng);
    	            marker.setMap(map);

    	            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
    	            infowindow.setContent(content);
    	            infowindow.open(map, marker);
    	            infoDiv=detailAddr2;
    	            infoDiv2.innerHTML=detailAddr2;
    	            infoDiv3.innerHTML=detailAddr3;
    	            
    	            var aform = document.querySelector("#aform")
    	            aform.addressval.value = document.getElementById("centerAddr2").innerText;
    	            aform.addressval2.value = document.getElementById("centerAddr3").innerText;   	            
    	        }   
    	    });
    	});
});    
</script>
</html>