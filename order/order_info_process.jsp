<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("UTF-8"); // 표준 인코딩 설정 : 한글 깨짐 방지

	Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8")); // 표준 코드 형태로 변환
	Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
	Cookie shippingDate = new Cookie("Shipping_shippingDate", URLEncoder.encode(request.getParameter("shippingDate"), "utf-8"));
	Cookie country = new Cookie("Shipping_country",	URLEncoder.encode(request.getParameter("country"), "utf-8"));
	Cookie zipCode = new Cookie("Shipping_zipCode",	URLEncoder.encode(request.getParameter("zipCode"), "utf-8"));
	Cookie addressName = new Cookie("Shipping_addressName", URLEncoder.encode(request.getParameter("addressName"), "utf-8"));
	Cookie detail1_addressName = new Cookie("Shipping_detail1_addressName", URLEncoder.encode(request.getParameter("detail1_addressName"), "utf-8")); // 도전과제 11주차 3번
	Cookie detail2_addressName = new Cookie("Shipping_detail2_addressName", URLEncoder.encode(request.getParameter("detail2_addressName"), "utf-8")); // 도전과제 11주차 3번

	cartId.setMaxAge(24 * 60 * 60); // 초 단위
	name.setMaxAge(24 * 60 * 60);
	zipCode.setMaxAge( 24 * 60 * 60);
	country.setMaxAge(24 * 60 * 60);
	addressName.setMaxAge(24 * 60 * 60);
	detail1_addressName.setMaxAge(24 * 60 * 60); // 도전과제 11주차 3번
	detail2_addressName.setMaxAge(24 * 60 * 60); // 도전과제 11주차 3번

	response.addCookie(cartId); // 생성된 쿠키 추가
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.addCookie(country);
	response.addCookie(zipCode);
	response.addCookie(addressName);
	response.addCookie(detail1_addressName); // 도전과제 11주차 3번
	response.addCookie(detail2_addressName); // 도전과제 11주차 3번

	response.sendRedirect("order_confirm.jsp");
%>
