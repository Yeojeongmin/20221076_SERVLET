<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="example.*" %>
  <footer class="container">
     <p> <br> &copy; Nintendo <br> 
        <%
    	ShopTime time = new ShopTime();
         %>    
        오늘 날짜와 시간 : <%=time.timenow() %>
        </p>
	</footer>
