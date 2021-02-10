<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/example/inc/asset.jsp"%>
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
			Kakao Map <small>기본 지도</small>
		</h1>

		<div id="map" ></div>
		

	</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=775d31cad8ed3352ed197ee1a04cc700"></script>
	<script>
		var container = document.getElementById('map');
		
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
</body>
</html>