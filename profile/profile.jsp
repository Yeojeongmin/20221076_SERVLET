<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 주석은 웹 브라우저에 표시되지 않습니다. -->
<html lang="en">
<head>
    <title>구글 메인화면 예제</title>
    <meta name="author" content="20221076">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="https://g--jrcmf.run.goorm.site/">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <style>
        /* 추가적인 스타일링이 필요한 경우 작성하세요. */
    </style>

    <script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=YOUR_APP_KEY"></script>
    <script type="text/javascript" src="../js/map.js" defer></script>
    <script type="text/javascript" src="js/basic_test.js" defer></script>
    <script type="text/javascript" src="js/data_type.js" defer></script>
</head>
<body>
    <section style="background-color:#D2B48C;">
        <div class="container py-5">
            <div class="row">
                <div class="col">
                    <!-- 네비게이션 바 등 추가 요소 -->
                    <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4" style="background-image: url('https://proxy.goorm.io/service/642d08182f471256aaca473f_dxJ8njLvAELuMoXPDPf.run.goorm.io/9080/file/load/bg1.jpg?path=d29ya3NwYWNlJTJGMjAyMjEwNzYtJTJGaW1nJTJGYmcxLmpwZw==&docker_id=dxJ8njLvAELuMoXPDPf&secure_session_id=5Xgl_uaffNulLhdmFk5iHSJroJRhOhZ6'); background-size: cover; background-position: center; padding-bottom: 5%;">
                        <ol class="breadcrumb mb-0">
                            <li class="nav-item" style="display: flex; gap: 10px; margin-left: auto;">
                                <button class="btn btn-sm" type="submit" onclick="location.href='https://g--jrcmf.run.goorm.site/index_login.html?'" style="background-color: #964B00; color: #fff;">HOME</button>
                                <button class="btn btn-sm" type="submit" onclick="location.href='https://tablog.neocities.org/keywordposition'" style="background-color: #964B00; color: #fff;">MAP</button>
                            </li>
                        </ol>
                    </nav>
                </div>
            </div>

           <div class="col-lg-8" style="float: right; margin-top: -1220px;">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
				<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/5D77uH3j1g0" width="800" height="600" frameborder="0" allowfullscreen></iframe>
</div><br><br>
              <div class="col-sm-3">
                <p class="mb-0">이름</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">누리</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
				  <p class="mb-0">인스타 아이디  <i class="bi bi-instagram" style="color: #ac2bac; font-size:2rem;"></i></p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">NURI_HARU</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">좋아하는 것</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">산책,간식</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">싫어하는 것</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">목욕,채소</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">인스타<div class="col-sm-9">
                <p class="text-muted mb-0"></p>
				 
				  
              </div>
				
					
</div>
              
				  <div class="col-sm-9">
  <img src="https://proxy.goorm.io/service/642d08182f471256aaca473f_dxJ8njLvAELuMoXPDPf.run.goorm.io/9080/file/load/IMG_4505.jpg?path=d29ya3NwYWNlJTJGMjAyMjEwNzYtJTJGaW1nJTJGSU1HXzQ1MDUuanBn&docker_id=dxJ8njLvAELuMoXPDPf&secure_session_id=5Xgl_uaffNulLhdmFk5iHSJroJRhOhZ6"
	   alt="이미지" class="img-fluid">
              </div>
            </div>
          </div>		
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status
                </p>
                <p class="mb-1" style="font-size: .77rem;">Web Design</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
                <div class="progress rounded mb-2" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status
                </p>
                <p class="mb-1" style="font-size: .77rem;">Web Design</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
                <div class="progress rounded mb-2" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                    aria-valuemin="0" aria-valuemax="100"></div>
				  </div>
                </div>
        </div>
            </div></div></div></div></section></body></html>