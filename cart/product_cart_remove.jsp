<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>


<%
    //if(session == null || !request.isRequestedSessionIdValid()) { // 세션이 무효화된 상태라면 (세션이 무효화(invalidate)된 상태인지 먼저 검사 ==> 전체 삭제 버튼을 눌러 이미 삭제된 경우)
        //response.sendRedirect("../index.jsp");
        //return;
    //}

	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
	    response.sendRedirect("../product_detail.jsp");
		return;
	}

	ProductRepository dao = ProductRepository.getInstance();
	
	Product product = dao.getProductById(id);
	if (product == null) {
		response.sendRedirect("../exception/product_not_found.jsp");
	}

	Product goodsQnt = new Product();
    ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");

    if(cartList == null) // 10주차 도전 문제 해답 
    { // 참고자료 : https://www.youtube.com/watch?v=W1m0QgrG5Tw
        response.sendRedirect("product_cart.jsp");
        return;
        //문제 현상 : 장바구니 전체 비우기 -> 뒤로가기 -> 일반 선택 삭제 시 NullPointerException 오류 발생
        //나만의 해설 : NullPointerException 오류 => 장바구니 전체 비우기를 통해 cartList가 비어서 session.getAttribute("cartlist")로 받은 속성값이 null이고
        // 이 오브젝트를 cartList ArrayList<Product> 가변 리스트에 null을 저장하게 된다. 
        // null 값을 어떤 변수에 저장하고 그 것을 이용하는 것 자체가 오류를 야기할 수 있기 때문에 cartList 가변 리스트 변수가 null인지 먼저 조건 체크가 필요하다.
        // 만약 cartList 가변 리스트 변수가 null인 경우 product_cart.jsp 페이지로 이동시키고 return; 을 통해 product_cart_remove.jsp 페이지를 빠져나오도록 한다.
        // 참고자료 : https://www.youtube.com/watch?v=W1m0QgrG5Tw
    } // 10주차 도전 문제 해답 끝

        for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기 
		goodsQnt = cartList.get(i);
		if (goodsQnt.getProductId().equals(id)) { // 삭제할 상품의 id 값을 받아서 해당하는 id와 같은 물품을 삭제
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("product_cart.jsp");
%>

