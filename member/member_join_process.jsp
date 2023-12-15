<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dao.MemberDAO" %>
<%
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter myOut = response.getWriter();

    // 데이터베이스 연결 정보
    String url = "jdbc:mysql://localhost:3306/ggouppang_20221076";
    String username = "root";
    String password = "0324";

    // 사용자로부터 입력 받은 정보
    String j_ID = request.getParameter("j_ID");
    String j_Password = request.getParameter("j_Password");
    String j_Name = request.getParameter("j_Name");
    String j_Gender = request.getParameter("j_Gender");
    String j_Birth = request.getParameter("j_Birth");
    String j_Email = request.getParameter("j_Email");
    String j_Phone = request.getParameter("j_Phone");
    String j_Address = request.getParameter("j_Address");
    String regist_day = request.getParameter("regist_day");

    // 데이터베이스 연결 및 회원가입 처리
    Connection connection = null;
    PreparedStatement preparedStatement = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(url, username, password);

        // MemberDAO 객체 생성
        MemberDAO memberDAO = new MemberDAO();

        // 회원가입 처리 메서드 호출
        int rowsAffected = memberDAO.registerMember(connection, j_ID, j_Password, j_Name, j_Gender, j_Birth, j_Email, j_Phone, j_Address, regist_day);

        // 회원가입이 성공했을 경우
        if (rowsAffected > 0) {
            // 회원가입이 성공하면 환영 메시지를 출력하고 index.jsp로 리다이렉트
            myOut.println("<div class='alert alert-success'>");
            myOut.println("<p>가입해주셔서 감사합니다! 환영합니다!</p>");
            myOut.println("</div>");
            response.sendRedirect("login/login.jsp");
        } else {
            // 회원가입이 실패한 경우에 대한 처리
            myOut.println("<div class='alert alert-danger'>");
            myOut.println("<p>회원가입에 실패했습니다.</p>");
            myOut.println("</div>");
        }
    } catch (Exception e) {
        e.printStackTrace();

        // 예외 발생 시 클라이언트에게 메시지 전송
        myOut.println("<div class='alert alert-danger'>");
        myOut.println("<p>오류가 발생했습니다. 다시 시도해주세요.</p>");
        myOut.println("<p>에러 메시지: " + e.getMessage() + "</p>");
        myOut.println("</div>");
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
