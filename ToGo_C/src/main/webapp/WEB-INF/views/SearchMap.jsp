<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>휴게소 지도 SEARCH PAGE</title>
    <script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=tzbwlpiic2"></script>
</head>
<body>
 <form onsubmit="">
        <input id="searchInput" type="text" placeholder="ex) oo휴게소 또는 지역">
        <button onclick="searchAddress()">주소검색</button>
        <div>
            <ul>
                <li>000 휴게소</li>
                <li>000 휴게소</li>
                <li>000 휴게소</li>
                <li>000 휴게소</li>
                <li>000 휴게소</li>
            </ul>
        </div>
    </form>
<div id="map" style="width:100%;height:400px;"></div>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<script>
var mapOptions = {
    center: new naver.maps.LatLng(37.3595704, 127.105399),
    zoom: 10
};

var map = new naver.maps.Map('map', mapOptions);
</script>
</body>
</html>