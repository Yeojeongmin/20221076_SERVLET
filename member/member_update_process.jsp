<%@ page contentType="text/html; charset=utf-8" import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ include file="../db/db_conn.jsp" %>

<%
    // 이미 선언된 변수들을 사용
    String memberId = request.getParameter("j_ID");
    String memberPassword = request.getParameter("j_Password");
    String memberName = request.getParameter("j_Name");
    String memberGender = request.getParameter("j_Gender");
    String memberBirth = request.getParameter("j_Birth");
    String memberEmail = request.getParameter("j_Email");
    String memberPhone = request.getParameter("j_Phone");
    String memberAddress = request.getParameter("j_Address");

    try {
        String sql = "UPDATE member SET j_Password=?, j_Name=?, j_Gender=?, j_Birth=?, j_Email=?, j_Phone=?, j_Address=? WHERE j_ID=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, memberPassword);
        pstmt.setString(2, memberName);
        pstmt.setString(3, memberGender);
        pstmt.setString(4, memberBirth);
        pstmt.setString(5, memberEmail);
        pstmt.setString(6, memberPhone);
        pstmt.setString(7, memberAddress);
        pstmt.setString(8, memberId);

        int rowsAffected = pstmt.executeUpdate();

        if (rowsAffected > 0) {
            // 수정이 성공한 경우
            out.println("<div class='alert alert-success'>");
            out.println("<p>회원 정보가 성공적으로 수정되었습니다.</p>");
            out.println("</div>");
        } else {
            // 수정이 실패한 경우
            out.println("<div class='alert alert-danger'>");
            out.println("<p>회원 정보 수정에 실패했습니다.</p>");
            out.println("</div>");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // 리소스 해제
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>

