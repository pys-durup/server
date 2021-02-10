<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/example/inc/asset.jsp" %>
<style>
	#map {
		width: 100%;
		height: 500px;
	}
</style>
</head>
<body>
	<!--  -->
	<div class="container">
		<h1 class="page-header">
			Kakao Map <small>지도 좌표 이동하기 + 레벨 바꾸기</small>
		</h1>

		<div id="map"></div>
		
		<hr>
		
		<div>
			<div class="btn-group">
				<input type="button" value="경복궁으로 이동하기" class="btn btn-default" id="btn1">
				<input type="button" value="역삼역으로 이동하기" class="btn btn-default" id="btn2">
				<input type="button" value="강남역으로 이동하기" class="btn btn-default" id="btn3">
			</div>
			
			<div class="btn-group">
				<input type="button" value="확대하기" class="btn btn-default" id="btn4">
				<input type="button" value="축소하기" class="btn btn-default" id="btn5">
			</div>
		</div>
		

	</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=775d31cad8ed3352ed197ee1a04cc700"></script>
	<script>
		var container = document.getElementById('map');
		
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		map.setDraggable(false); // 드래그 기능 제어
		map.setZoomable(false); // 휠로 줌 기능 제어
		
		
		//지도 좌표(중심점) 이동하기
		$("#btn1").click(function() {
			// 좌표 객체를 생성하기
			var p1 = new kakao.maps.LatLng(37.577964, 126.976886);
			//map.setCennter(p1);
			map.panTo(p1);
			
		});
		
		$("#btn2").click(function() {
			// 좌표 객체를 생성하기
			var p1 = new kakao.maps.LatLng(37.500632, 127.036416);
			//map.setCennter(p1);
			map.panTo(p1);
			
		});
		
		$("#btn3").click(function() {
			// 좌표 객체를 생성하기
			var p1 = new kakao.maps.LatLng(37.577964, 126.976886);
			//map.setCennter(p1);
			map.panTo(p1);
			
		});
		
		
		$("#btn4").click(function() {
			
			// 확대하기(1~14) - 숫자가 작을수록 확대
			map.setLevel(map.getLevel() - 1);
		});
		
		
		$("#btn5").click(function() {
			
			// 축소하기(1~14) - 숫자가 작을수록 확대
			map.setLevel(map.getLevel() + 1);
		});
		
		
		
	</script>
</body>
</html>






















