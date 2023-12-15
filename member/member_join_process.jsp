<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        String jdbcUrl = "jdbc:mysql://localhost/ggouppang_20221076";
        String dbUser = "root";
        String dbPassword = "0324";

        conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

        String j_ID = request.getParameter("j_ID");
        String j_Password = request.getParameter("j_Password");
        String j_Name = request.getParameter("j_Name");
        String j_Gender = request.getParameter("j_Gender");
        String j_Birth = request.getParameter("j_Birth");
        String j_Email = request.getParameter("j_Email");
        String j_Phone = request.getParameter("j_phone");
        String j_Address = request.getParameter("j_Address");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String regist_day = sdf.format(new java.util.Date());

        String insertQuery = "INSERT INTO member VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(insertQuery);
        pstmt.setString(1, j_ID);
        pstmt.setString(2, j_Password);
        pstmt.setString(3, j_Name);
        pstmt.setString(4, j_Gender);
        pstmt.setString(5, j_Birth);
        pstmt.setString(6, j_Email);
        pstmt.setString(7, j_Phone);
        pstmt.setString(8, j_Address);
        pstmt.setString(9, regist_day);

        int result = pstmt.executeUpdate();

        if (result > 0) {
            response.sendRedirect("../index.jsp");
        } else {
            out.println("<div class='alert alert-danger'>");
            out.println("회원가입에 실패했습니다. 다시 시도해주세요.");
            out.println("</div>");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        out.println("<div class='alert alert-danger'>");
        out.println("데이터베이스 연결 오류: " + e.getMessage());
        out.println("</div>");
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("<div class='alert alert-danger'>");
        out.println("데이터베이스 오류: " + e.getMessage());
        out.println("</div>");
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
