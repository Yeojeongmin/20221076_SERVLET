<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    // 데이터베이스 연결 정보
    String url = "jdbc:mysql://localhost:3306/ggouppang_2022176";
    String username = "ggouppang_2022176";
    String password = "0324";

    // 사용자로부터 입력 받은 정보
    String j_ID = request.getParameter("j_ID");
    String j_Password = request.getParameter("j_Password");
    String j_Name = request.getParameter("j_Name");
    String j_Gender = request.getParameter("j_Gender");
    String j_Birth = request.getParameter("j_Birth");
    String j_Email = request.getParameter("j_Email");
    String j_Phone = request.getParameter("j_phone");
    String j_Address = request.getParameter("j_Address");

    // 현재 날짜 및 시간
    java.util.Date currentDate = new java.util.Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String regist_day = dateFormat.format(currentDate);

    // 데이터베이스 연결 및 회원가입 처리
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(url, username, password);

        String insertQuery = "INSERT INTO member (j_ID, j_Password, j_Name, j_Gender, j_Birth, j_Email, j_Phone, j_Address, regist_day) " +
                             "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        preparedStatement = connection.prepareStatement(insertQuery);
        preparedStatement.setString(1, j_ID);
        preparedStatement.setString(2, j_Password);
        preparedStatement.setString(3, j_Name);
        preparedStatement.setString(4, j_Gender);
        preparedStatement.setString(5, j_Birth);
        preparedStatement.setString(6, j_Email);
        preparedStatement.setString(7, j_Phone);
        preparedStatement.setString(8, j_Address);
        preparedStatement.setString(9, regist_day);

        int rowsAffected = preparedStatement.executeUpdate();

        // 회원가입이 성공했을 경우
        if (rowsAffected > 0) {
            // 세션 체크 후 처리 (여기서는 생략)
            // ...

            // 회원가입이 성공하면 index.jsp로 리다이렉트
            response.sendRedirect("../index.jsp");
        } else {
            // 회원가입이 실패한 경우에 대한 처리
       out.println("<div class='alert alert-danger'>");
out.println("<p>회원가입에 실패했습니다.</p>");
out.println("</div>");

        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
