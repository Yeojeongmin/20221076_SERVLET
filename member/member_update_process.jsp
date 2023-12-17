<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>회원 수정 처리</title>
    <script>
        function showConfirmation() {
            alert("회원 정보가 성공적으로 수정되었습니다!");
            window.location.href = 'member_update.jsp';
        }
    </script>
</head>
<body>
    <%
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // JDBC 연결 설정
              Class.forName("com.mysql.jdbc.Driver");
            String jdbcUrl = "jdbc:mysql://localhost/ggouppang_20221076";
            String dbUser = "root";
            String dbPassword = "0324";

            conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // 폼에서 값을 가져오기
            String j_ID = request.getParameter("j_ID");
            String updatedPassword = request.getParameter("j_Password");
            String updatedName = request.getParameter("j_Name");
            String updatedGender = request.getParameter("j_Gender");
            String updatedBirth = request.getParameter("j_Birth");
            String updatedEmail = request.getParameter("j_Email");
            String updatedPhone = request.getParameter("j_Phone");
            String updatedAddress = request.getParameter("j_Address");

            // 업데이트할 SQL 쿼리
            String query = "UPDATE member SET j_Password=?, j_Name=?, j_Gender=?, j_Birth=?, j_Email=?, j_Phone=?, j_Address=? WHERE j_ID=?";
            pstmt = conn.prepareStatement(query);

            // 업데이트할 값 설정
            pstmt.setString(1, updatedPassword);
            pstmt.setString(2, updatedName);
            pstmt.setString(3, updatedGender);
            pstmt.setString(4, updatedBirth);
            pstmt.setString(5, updatedEmail);
            pstmt.setString(6, updatedPhone);
            pstmt.setString(7, updatedAddress);
            pstmt.setString(8, j_ID);
            // 업데이트 쿼리 실행
            int rowsAffected = pstmt.executeUpdate();

            // 업데이트가 성공적인지 확인
            if (rowsAffected > 0) {
    %>
                <script>
                    // Show confirmation alert
                    showConfirmation();
                </script>
    <%
            } else {
    %>
                <p>회원 정보 수정에 실패했습니다.</p>
    <%
            }
        } catch (Exception e) {
            out.println("Exception: " + e.getMessage());
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>