<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.*, javax.naming.Context, javax.naming.InitialContext, javax.sql.DataSource" %>
<%@ page import="java.sql.*" %>
<html>
    <head>
<title> 프로필 </title>
		<meta name="keywords" content="computer">
		<base herf="https://g--jrcmf.run.goorm.site/">
		<script type="text/javascript" src="../js/map.js" defer></script>
		<script type="text/javascript" src="js/basic_test.js" defer></script>
		<script type="text/javascript" src="js/data_type.js" defer></script>
		<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=YOUR_APP_KEY"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=834045f77b930959ae9974d6704fda08" autoload=false></script>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
  </head>
	
	<body>
	<section style="background-color:#A1887F;">
  <div class="container py-5">
    <div class="row">
      <div class="col">

        <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4" style="background-image: url('https://proxy.goorm.io/service/642d08182f471256aaca473f_dxJ8njLvAELuMoXPDPf.run.goorm.io/9080/file/load/bg1.jpg?path=d29ya3NwYWNlJTJGMjAyMjEwNzYtJTJGaW1nJTJGYmcxLmpwZw==&docker_id=dxJ8njLvAELuMoXPDPf&secure_session_id=5Xgl_uaffNulLhdmFk5iHSJroJRhOhZ6');
																				background-size: cover; background-position: center; padding-bottom: 5%;">
    <ol class="breadcrumb mb-0">
      <li class="nav-item" style="display: flex; gap: 10px; margin-left:0px;">
<button class="btn btn-sm" type="button" onclick="redirectToIndex()" style="background-color: #8D6E63; color: #fff;">HOME</button>
<button class="btn btn-sm" type="submit" onclick="location.href='https://tablog.neocities.org/keywordposition'" 
		style="background-color: #8D6E63; color: #fff;">MAP</button>
    </ol>
</nav>
      </div>
    </div>

   <div class="row">
  <div class="col-lg-4">
    <div class="card mb-4" style="background-image: url('https://proxy.goorm.io/service/642d08182f471256aaca473f_dxJ8njLvAELuMoXPDPf.run.goorm.io/9080/file/load/bg0.png?path=d29ya3NwYWNlJTJGMjAyMjEwNzYtJTJGaW1nJTJGYmcwLnBuZw==&docker_id=dxJ8njLvAELuMoXPDPf&secure_session_id=5Xgl_uaffNulLhdmFk5iHSJroJRhOhZ6'); 
								  background-size: cover; background-position: center; padding-bottom: 5%;">


      <div class="card-body text-center">
<button class="profile-upload-btn" onclick="document.getElementById('fileInput').click()" style="background-color: #8D6E63; color: #fff; font-weight: bold; border: none;">Image Upload</button>

   
        <!-- 파일 업로드 input -->
        <input type="file" id="fileInput" accept="image/*" style="display: none;" onchange="previewImage(this)">
    
        <!-- 업로드한 이미지 미리보기 -->
        <div id="imageContainer">
            <div id="imagePreview"></div>
        </div>
        <%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // JDBC 연결 설정
        Class.forName("com.mysql.jdbc.Driver");
        String jdbcUrl = "jdbc:mysql://localhost/ggouppang_20221076";
        String dbUser = "root";
        String dbPassword = "0324";

        conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

        // SQL 쿼리 작성 및 실행
        String query = "SELECT * FROM member ORDER BY regist_day DESC LIMIT 1";
        pstmt = conn.prepareStatement(query);
        rs = pstmt.executeQuery();

        // 결과를 HTML 테이블에 동적으로 추가
        while (rs.next()) {
%>  
        <h5 class="my-3" style="color: #0000000; font-weight: bold; font-size: 23pt;"><%=rs.getString("j_ID")%></h5>

       <p class="text-muted mb-1; font-weight-bold; font-size: 23pt;"><%=rs.getString("j_Birth")%></p>
        <p class="text-muted mb-4"><%=rs.getString("j_Address")%></p>
        <div class="d-flex justify-content-center mb-2">
          <li class="nav-item" style="display: flex; gap: 10px; margin-left: auto;">
  <button class="btn btn-sm" type="submit" onclick="location.href='https://www.instagram.com/?hl=ko'" 
		style="background-color: #8D6E63; color: #fff;">Folow</button>
			  <button class="btn btn-sm" type="submit" onclick="location.href=' https://www.instagram.com/direct/inbox/?hl=ko'" 
		style="background-color: #8D6E63; color: #fff;">Message</button>
			  <br>
			  <br><audio src="Media/msc.mp3" controls="controls"></audio>
        </div>
      </div>
    </div>
  </div>
</div>


        <div class="card mb-4" style="background-image: url('https://proxy.goorm.io/service/642d08182f471256aaca473f_dxJ8njLvAELuMoXPDPf.run.goorm.io/9080/file/load/bg0.png?path=d29ya3NwYWNlJTJGMjAyMjEwNzYtJTJGaW1nJTJGYmcwLnBuZw==&docker_id=dxJ8njLvAELuMoXPDPf&secure_session_id=5Xgl_uaffNulLhdmFk5iHSJroJRhOhZ6'); 
								  background-size: cover; background-position: left; padding-bottom: 5%; width: 420px; height: 700px;">
  <div class="card-body p-0">
    <ul class="list-group list-group-flush rounded-3">
      <li class="list-group-item d-flex justify-content-between align-items-center p-3">
        <i class="fas fa-globe fa-lg text-warning"></i>
        <p class="mb-0">동물의 숲 공식 홈페이지 - https://www.nintendo.co.kr/switch/acbaa/index.html</p>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center p-3">
        <i class="fab fa-github fa-lg" style="color: #333333;"></i>
        <p class="mb-0">닌텐도 공식 홈페이지 - https://www.nintendo.co.kr/</p>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center p-3">
        <i class="fab fa-twitter fa-lg" style="color: #55acee;"></i>
        <p class="mb-0">동숲 팝업스토어 예약 - https://booking.naver.com/error/bizes/993423</p>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center p-3">
        <i class="fab fa-instagram fa-lg" style="color: #ac2bac;"></i>
        <p class="mb-0">팝업 스토어 위치 - https://www.instagram.com/?hl=ko</p>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center p-3">
        <i class="fab fa-facebook-f fa-lg" style="color: #3b5998;"></i>
        <p class="mb-0">@Nintendo</p>
		  <img src="http://chart.apis.google.com/chart?cht=qr&chs=150x150&chl=https://url.kr/g7mslx"
	   alt="이미지" class="img-fluid">
		  <li class="list-group-item d-flex justify-content-between align-items-center p-3">
    <div id="Map" style="width: 350px; height: 200px; margin: 0 auto;"></div>
</li>

    </ul>
  </div>
</div>



	  
   <div class="col-lg-8" style="float: right; margin-top: -1220px;">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
				<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/t3AhWazDL0Q" width="800" height="600" frameborder="0" allowfullscreen></iframe>
</div><br><br><br><br>
              <div class="col-sm-3"><br>
                <p class="mb-0">이름</p>
              </div>
              <div class="col-sm-9"><br>
                <p class="text-muted mb-0"><%=rs.getString("j_Name")%></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
				  <p class="mb-0">성별</p>
              </div>
              <div class="col-sm-9">
               <p class="text-muted mb-0"><%=rs.getString("j_Gender")%></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">가입 년도 / 날짜</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%=rs.getString("regist_day")%></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">이메일</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%=rs.getString("j_Email")%></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">관심 품목<div class="col-sm-9">
                <!-- 프레임으로 감싸진 iframe 추가 -->
<iframe id="profileFrame" src="../body_main.jsp" width="600px" height="600px"></iframe>
<div id="interestItems" class="text-muted mb-0"></div>  
              </div>
                </div>     
                 <div class="col-sm-9">
                <p class="text-muted mb-0"></p>
              </div>
            </div>
          </div>		
        </div>
                </div>
        </div>
        <%
        }
    } catch (Exception e) {
        out.println("Exception: " + e.getMessage());
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
        </section>
     <script>
function redirectToIndex() {
    // index.jsp 페이지로 이동
    window.location.href = '../index.jsp';
}
           function previewImage(input) {
            var imagePreview = document.getElementById('imagePreview');

            // 선택한 파일이 있는지 확인
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    // 이미지 미리보기 업데이트
                    imagePreview.innerHTML = '<img src="' + e.target.result + '" width="150" height="150" />';
                };

                // 파일을 읽어서DataURL로 변환
                reader.readAsDataURL(input.files[0]);
            }
        }
         
    // 프로필 페이지에서 온 메시지를 처리하는 함수
    window.addEventListener('message', function (event) {
        const { index, isFavorite, pname, description, unitPrice, filename } = event.data;
        toggleFavoriteState(index, isFavorite, pname, description, unitPrice, filename);
    });

    function toggleFavoriteState(index, isFavorite, pname, description, unitPrice, filename) {
        const interestItems = document.getElementById('interestItems');

        // 즐겨찾기 상태에 따라 처리
        if (isFavorite) {
            // 즐겨찾기한 상품 중 노란색 별 버튼만 표시
            const button = document.querySelector(`.favorite-button[data-index="${index}"]`);
            if (button && button.querySelector('.favorite-icon-yellow')) {
                const existingItem = document.querySelector(`#interestItems p[data-index="${index}"]`);
                if (!existingItem) {
                    const itemInfo = document.createElement('p');
                    itemInfo.textContent = `상품명: ${pname}, 설명: ${description}, 가격: ${unitPrice}, 이미지: ${filename}`;
                    itemInfo.style.color = "#FFD700"; // 노란색으로 표시
                    itemInfo.setAttribute('data-index', index);
                    interestItems.appendChild(itemInfo);
                }
            }
        } else {
            // 즐겨찾기를 취소한 상품을 제거
            const existingItem = document.querySelector(`#interestItems p[data-index="${index}"]`);
            if (existingItem) {
                interestItems.removeChild(existingItem);
            }
        }
    }
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
</script>
    </body></html>