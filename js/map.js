 var mapContainer = document.getElementById('Map'),
        mapOption = {
            center: new kakao.maps.LatLng(37.5665, 126.9780), // 서울의 좌표로 변경
            level: 5 // 원하는 줌 레벨로 변경
        };

    var map = new kakao.maps.Map(mapContainer, mapOption);

    var mapTypeControl = new kakao.maps.MapTypeControl();
    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

    var zoomControl = new kakao.maps.ZoomControl();
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

var mapOption = {
    center: new kakao.maps.LatLng(37.5665, 126.9780), // 서울의 좌표로 변경
    level: 5
};
