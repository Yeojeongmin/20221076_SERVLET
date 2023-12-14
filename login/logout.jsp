<%@ page contentType="text/html; charset=utf-8"%>

<%
	session.invalidate(); // 현재 세션 객체 전체 삭제
	//response.sendRedirect("../admin/product_add.jsp");
    response.sendRedirect("../admin/index_ad.jsp"); // 도전 과제 [9주차]
%>
