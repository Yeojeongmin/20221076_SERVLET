<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
     String name = (String) request.getAttribute("name");	
%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
     String name = (String) request.getAttribute("name");	
%>
<html>
<head>
부트스트랩…
<title> 고객센터 게시판 </title>
</head>
<script type="text/javascript">
   function checkForm() {
     if (!document.newWrite.name.value) {
	alert("성명을 입력하세요.");
	return false;
     }
     if (!document.newWrite.subject.value) {
	alert("제목을 입력하세요.");
	return false;
     }
     if (!document.newWrite.content.value) {
	alert("내용을 입력하세요.");
	return false;
     }		
}
</script>
    


