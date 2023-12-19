var mapContainer = document.getElementById('Map');
var mapOption = {
    center: new kakao.maps.LatLng(37.5665, 126.9780), // 서울의 좌표로 설정
    level: 5
};

var map = new kakao.maps.Map(mapContainer, mapOption);

    var map = new kakao.maps.Map(mapContainer, mapOption);

    var mapTypeControl = new kakao.maps.MapTypeControl();
    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

    var zoomControl = new kakao.maps.ZoomControl();
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

