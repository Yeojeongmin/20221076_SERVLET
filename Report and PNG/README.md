#주제선정
예전부터하고싶었던 제가 좋아하는게임인 동물의 숲을 주제로하였습니다
직접 굿즈를 판매하는 사이트를 만들었습니다!

1. 메인화면 
       (1) Main : 기본화면
           처음에 배너를 클리하면, 구글 검색창에 동숲 공식 굿즈라고 검색할 수 있도록 <a href= "구글 검색 링크">로 만들었습니다.
           가장 먼저 창을 여시면, 왼쪽부터 차례대로 카테고리버튼과 동숲 로고, 기본 홈 버튼, 로그인 버튼, 회원가입 버튼, 게시판, 관리자, 프로필 마지막으로 
           가장 오른쪽에 장바구니가 존재합니다. 
           쇼핑몰 같은 사이트를 보면, 항상 장바구니가 오른쪽에 위치해있는 것을 보고 아이콘으로 한번 쇼핑몰같은 느낌을 주고싶어서 
     <i class="fas fa-shopping-cart fa-flip-horizontal"></i> 코드를 이용하여 아이콘을 버튼으로 만들었습니다.
     
     카테고리 버튼을 클릭하게 될 경우, (Category.png) 사진처럼 굿즈 종류별로 분류를 하였고,
     5개의 종류 중 하나로 들어가게 될 경우 (C_cloth.png) 처럼 나머지는 다 가려지고, 옷 종류만 보여지게 됩니다.
     그리고 (C_bag.png) 사진 역시 가방 드롭다운 메뉴를 클릭할 경우, 가방 종류만 보여지게 됩니다.
         function setCategory(category) {
        // 모든 상품 아이템 숨기기
        var products = document.getElementsByClassName("product-item");
        for (var i = 0; i < products.length; i++) {
            products[i].style.display = "none";
        }

        // 선택한 카테고리에 해당하는 상품 아이템만 표시
        var selectedCategoryProducts = document.getElementsByClassName(category.toLowerCase());
        for (var j = 0; j < selectedCategoryProducts.length; j++) {
            selectedCategoryProducts[j].style.display = "block";
        }
    } 카테고리는 이 자바스크립트를 사용하여 선택한 카테고리에 해당하는 상품 아이템만을 표시하게 했습니다.
     
     그리고 바디에는 동숲 공식 굿즈 사이트에 오신 것을 환영합니다! 라는 문구가 뜨게하였고,
     아래부터는 동숲의 다양한 굿즈들을 보여줍니다.
     이떄 상품 상제 정보로 상품의 더욱더 다양한 정보들을 볼 수 있으며, 
     오른쪽 별 표시 (찜하기) 버튼을 누르게 되면 관심품목에 추가되게됩니다.  이 코드는     
    function toggleFavorite(button, pname, description, unitPrice, filename) {
        const icon = button.querySelector('.favorite-icon');
        const index = button.getAttribute('data-index');
        const localStorageKey = "favorite_" + index;

        if (icon.classList.contains('favorite-icon-gray')) {
            icon.classList.remove('favorite-icon-gray');
            icon.classList.add('favorite-icon-yellow');
            localStorage.setItem(localStorageKey, 'true');
        } else {
            icon.classList.remove('favorite-icon-yellow');
            icon.classList.add('favorite-icon-gray');
            localStorage.setItem(localStorageKey, 'false');  --> 별 버튼 (찜하기)을 클릭하게되면, 푱소에 회색이었던 버튼이 노란색으로 변하는
        } 함수 입니다.

        // 프로필 페이지에 즐겨찾기 상태 업데이트
        updateProfileFavorites(index, icon.classList.contains('favorite-icon-yellow'), pname, description, unitPrice, filename);
    }

    function updateProfileFavorites(index, isFavorite, pname, description, unitPrice, filename) {
        const iframe = document.getElementById('profileFrame');
        if (iframe) {
            iframe.contentWindow.postMessage({ index, isFavorite, pname, description, unitPrice, filename }, 'http://your_domain_or_origin');
        }
    } -> 프로필 페이지에 찜했던 상품들이 전해집니다.
    이 두개의 함수를 주로 사용하여서 프로필 페이지에 관심 상품이 뜨도록 구성해봤습니다.
    
2.Sign_up: 회원가입 (위에서부터 차례대로 아이비, 비밀번호, 이름, 성별, 생년월일, 이메일, 휴대전화 번호, 주소로 이루어져있습니다.)
           Calender.png: 생년월일을 입력할 떄, 굳이 치지 않아도, <input type="date">를 이용하여 캘린더를 통해 한번에 쉽게 찾을 수 있도록 하였습니다.
           주소 찾기 버튼을 클릭하여 들어가면, Find_Address.png파일 이미지처럼, 지역이 헷갈리거나 잘 모르겠을떄 이 버튼을 사용하면 
           어렵지않게 찾을 수 있게끔 사용자에게 중점을 두었습니다.
           버튼은 1학기때 배운, onclick="location.href='https://tablog.neocities.org/keywordposition'"과 
           function searchAddress() {
            window.open('https://map.kakao.com/?q=' + encodeURIComponent(document.getElementById('inputAddress').value));
        } 
        카카오맵 2개를 써봤지만, 확실히 1학기때 배운 지도가 지금 우리가 쓰는 사이트에 더 적합하다는 생각이 듷어서 탭로그를 사용하게되었습니다.
        Signup_Last처럼 모든 입력창에 빠짐없이 쓰고나서 가입 버튼을 누르게 될 경우, 입력값이 데이터베이스 member 테이블의 값으로 전송되어서
        정상적으로 회원가입이 완료되게됩니다.
        그리고 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String regist_day = sdf.format(new java.util.Date()); 
        이 함수를 사용하여 가입한 시간을 알 수 있도록하였고, 이 역시 데이터베이스 member 테이블의 값으로 전송되었습니다.
        뒤로가기 버튼을 누르게되면, 바로 직전 페이지로 넘어갈 수 있게되고
        function goBack() {
            window.history.back();
        } 이 함수를 이용하여서 만들었습니다.

3.mamber_view: 회원 목록 (회원 목록은 데이터베이스에서 테이블을 불러와서, 표로 정리했습니다.)
  Member_view는 회원가입한 아이디와 비밀번호, 그외의 정보를 표로 한눈에 보기 쉽게 정리했습니다.
   <tr>
                    <th>j_ID</th>
                    <th>j_Password</th>
                    <th>j_Name</th>
                    <th>j_Gender</th>
                    <th>j_Birth</th>
                    <th>j_Email</th>
                    <th>j_Phone</th>
                    <th>j_Address</th>
                    <th>regist_day</th>
                </tr> 이 코드를 이용하여 표(열)를 만들고,
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
                        String query = "SELECT * FROM member";
                        pstmt = conn.prepareStatement(query);
                        rs = pstmt.executeQuery();

                        // 결과를 HTML 테이블에 동적으로 추가
                        while (rs.next()) {
                            out.println("<tr>");
                            out.println("<td>" + rs.getString("j_ID") + "</td>");
                            out.println("<td>" + rs.getString("j_Password") + "</td>");
                            out.println("<td>" + rs.getString("j_Name") + "</td>");
                            out.println("<td>" + rs.getString("j_Gender") + "</td>");
                            out.println("<td>" + rs.getString("j_Birth") + "</td>");
                            out.println("<td>" + rs.getString("j_Email") + "</td>");
                            out.println("<td>" + rs.getString("j_Phone") + "</td>");
                            out.println("<td>" + rs.getString("j_Address") + "</td>");
                            out.println("<td>" + rs.getString("regist_day") + "</td>");
                            out.println("</tr>");
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
                %> -> 이 코드를 이용하여 데이터베이스 member 테이블에 연결하고, 표의 값을 데이터베이스 값으로 채워넣었습니다.
                Member_view_DB.png 파일에서도 데이터베이스와 값이 일치한다는 것을 보실 수 있습니다.
        4.회원수정 : 회원수정 역시 member_view와 마찬가지로 표 형식으로 만들었습니다.
        여기서 조금 다른 점은, Membeer_Update.png를 보시면 값들을 모두 입력창 안에 넣어서, 입력창에서 값을 수정하고나서 
        수정 버튼을 클릭하게 되면, Update_check처럼 회원 수정이 완료되었습니다 라는 문구와 함께 회원 수정이 완료되게됩니다.
          <%
                    while (rs.next()) {
                        String j_ID = rs.getString("j_ID");
                        이 코드를 사용하면, 결과를 HTML 폼에 채울 수 있습니다.
                %>
                <% <tr>
                    <!-- ID 출력 -->
                    <td><input type="text" name="j_ID" value="<%= j_ID %>" required readonly></td>
                    <!-- Password, 이름, 성별, 생년월일, 이메일, 전화번호, 주소 입력 폼 추가 -->
                    데이터베이스의 자바스크립트를 입력창에 각 member 테이블의 값을 불러옵니다.
                    function showConfirmation() {
            alert("회원 정보가 성공적으로 수정되었습니다!");
            window.location.href = 'member_update.jsp';
        } 이 함수를 사용하여, 수정 버튼을 클릭시, 함수가 성공적으로 수정되었음을 알려줍니다.
      String query = "UPDATE member SET j_Password=?, j_Name=?, j_Gender=?, j_Birth=?, j_Email=?, j_Phone=?, j_Address=? WHERE j_ID=?";
            pstmt = conn.prepareStatement(query); 이 쿼리를 사용해서 값을 업데이트 해줍니다.
     
     5.회원 삭제
      <button type="button" class="btn btn-success delete-button" style="width: 70px; height: 35px; text-align: center; font-weight: bold;" onclick="deleteRow('회원의_ID')">삭제</button>
                         <form id="deleteForm_회원의_ID" action="member_delete_process.jsp" method="post">
                             <input type="hidden" name="j_ID" value="회원의_ID">
                         </form> -> 이 버튼을 클릭하게 될 경우, 
             function deleteRow(j_ID) {
    // 삭제 여부 확인
    if (confirm("정말로 삭제하시겠습니까?")) {
        // form 전송
        var form = document.getElementById("deleteForm_" + j_ID);

        if (form) {
            form.submit();
            // 추가: 페이지 이동
            window.location.href = 'member_delete_process.jsp';
        } else {
            console.error("Element not found with ID: deleteForm_" + j_ID);
            alert("Element not found with ID: deleteForm_" + j_ID);
        }
    } --> 버튼에서 이 함수로 전달하여서 버튼을 클릭시, 정말로 삭제하시겠습니까? 라는 문구가 뜨면서 <Member_Delete.png 파일 확인>
          아니오를 클릭할 경우, 원래 페이지로 돌아가고 예를 클릭 할 경우 member_delete_process.jsp 페이지로 이동하게됩니다. <Delete_Complete.png 파일 확인>
  // 폼에서 값을 가져오기
            String j_ID = request.getParameter("j_ID");

            // 삭제할 SQL 쿼리
            String query = "DELETE FROM member WHERE j_ID=?";
            pstmt = conn.prepareStatement(query);

            pstmt.setString(1, j_ID);

            // 삭제 쿼리 실행
            int rowsAffected = pstmt.executeUpdate();
         DELETE FROM member WHERE j_ID= sql 문을 활용하여, j_ID와 같은 줄에있는 값들이 모두 지워지게됩니다.
        그다음, 회원 삭제를 완료했습니다라는 문구와 함께 회원 삭제가 완료됩니다. <DELETE_LAST.png 파일 확인>
        그리고 <Delete_View.png> 파일과 <Delete_DB.png> 파일을 확인해보면
        올바르게 삭제되어서  View 페이지에도 없어진 것을 확인해볼 수 있고, member 테이블에도 올바르게 지워진 것을 확인해볼 수 있습니다.
            
    +@ 만든 프로필이라는 파일을 만들었습니다.
       1학기때 만든 프로필 파일을 한번 활용해보면 어떨까?라는 아이디어가 떠올라서, 프로필 파일을 JSP 파일 형태로 변형시켰습니다.
       
       <profile_basic.png> 이미지를 확인해보시면, 메뉴창에는 홈 버튼과 맵버튼이 있습니다.
       홈버튼을 클릭 할 경우, Index.jsp 파일로 이동하면서, 기본 페이지로 돌아가게 됩니다.
       그 밑으로는 섹션별로 나누어져있습니다.
       왼쪽의 첫번째 섹션에는 이미지 업로드 버튼이 뜨도록 만들었는데, 이 이미지 업로드 버튼을 클릭할 경우,
       <Image_Upload.png>사진처럼 이미지를 선택하는 창이 뜨게 되고, 이미지를 선책하면 
       <Image_Complete.png> 사진처럼 이미지가 프로필에 잘 뜨게 됩니다.
        
        <div class="card-body text-center">
        <button class="profile-upload-btn" onclick="document.getElementById('fileInput').click()" style="background-color: #8D6E63; color: #fff; font-weight: bold; border: none;">Image Upload</button>
        <!-- 파일 업로드 input -->
        <input type="file" id="fileInput" accept="image/*" style="display: none;" onchange="previewImage(this)">
    
        <div id="imageContainer">
            <div id="imagePreview"></div>
        </div> -> 여기에 이미지가 뜨도록 하였고,
         var imagePreview = document.getElementById('imagePreview');
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    imagePreview.innerHTML = '<img src="' + e.target.result + '" width="150" height="150" />';
                }
                // 파일을 읽어서DataURL로 변환
                reader.readAsDataURL(input.files[0]);
            }
        } --> 이 함수를 사용하여 이미지를 선택했으면 이미지를 업데이트 해줍니다.
        
        그리고 그 아래로는 사용자가 최근 회원가입했던 정보로 뜨게 되는데,
        마찬가지로 데이터베이스를 연결해서,  String query = "SELECT * FROM member ORDER BY regist_day DESC LIMIT 1"; 이 SQL 문을 쓰게 되면
        가입 날짜 순으로 정렬하면서, 가장 최근에 가입한 값만 1개가 뜨도록 설정했습니다.
        이 readme.md를 쓰면서 다른 값인 yeojm1234라는 값으로 회원가입하였지만, 누리라고 뜨는 이유는 
        가장 최근 값을 지웠기떄문에 남은 2개중에서 가장 최근값인 Nuri가 뜨게 됩니다.
        순서대로 위에서부터 j_ID, j_Birth, j_Address 순으로 불러오도록 하였습니다.
         <h5 class="my-3" style="color: #0000000; font-weight: bold; font-size: 23pt;"><%=rs.getString("j_ID")%></h5>

       <p class="text-muted mb-1; font-weight-bold; font-size: 23pt;"><%=rs.getString("j_Birth")%></p>
        <p class="text-muted mb-4"><%=rs.getString("j_Address")%></p> 이 코드로 값을 불러오도록 하였습니다.
        
        그리고 아래 섹션으로 넘어가게되면,
        첫번째는 동물의 숲 공식 홈페이지 주소가있고, 두번째는 닌텐도 공식 홈페이지 주소, 세번째로는 동숲 팝업스토어 위치 
        마지막으로는 제조사와 함께 QR코드가 있습니다.
        
        그리고 이제 오른쪽 가장 큰 섹션을 보시면,
        가장 처음에는 닌텐도 팝업스토어를 소개하면서 다양한 굿즈를 리뷰하는 영상을 링크로 걸어두었고,
         <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/t3AhWazDL0Q" width="800" height="600" frameborder="0" allowfullscreen></iframe>
         이 코드로 불러왔습니다.
         
         그리고 그 아래로는, 왼쪽 섹션과같이, 이름, 성별, 가입년도 및 날짜, 이메일을 가장 최근에 가입했던 값이 뜨도록 설정하였습니다.
          <p class="text-muted mb-0"><%=rs.getString("j_Name")%></p>
          <p class="text-muted mb-0"><%=rs.getString("j_Gender")%></p>
          <p class="text-muted mb-0"><%=rs.getString("regist_day")%></p>
           <p class="text-muted mb-0"><%=rs.getString("j_Email")%></p>
           이 코드로 불러왔습니다.
           
           그리고 스크롤을 내려보면, body_main.jsp파일에서했었던 별버튼 (찜하기)을 눌러서 별색이 노란색으로 바뀐 삼품들의 목록을
           이미지와 설명과 함꼐 보여줍니다.<Interest_P.png> (1)~(2) 
           <iframe id="profileFrame" src="../body_main.jsp" width="600px" height="600px"></iframe>
<div id="interestItems" class="text-muted mb-0"></div>   --> 프로필에서 관심 품목을 표시하는 부분입니다.
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
    } --> 이 함수를 통해서 노란색 별 버튼인 부분은 표시하고, 회색 별인 부분은 제거합니다.