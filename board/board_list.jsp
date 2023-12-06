<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="mvc.model.Board_dto"%>

<%
    String sessionId = (String) session.getAttribute("JSESSIONID");
    List<Board_dto> boardList = (List<Board_dto>) request.getAttribute("boardlist");
    int total_record = (Integer) request.getAttribute("total_record");
    int pageNum = (Integer) request.getAttribute("pageNum");
    int total_page = (Integer) request.getAttribute("total_page");
%>

<html>
<head>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>고객센터 게시판</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>

    <script type="text/javascript">
        function checkForm() {
            if ("<%=sessionId%>" === null) {
                alert("로그인 해주세요.");
                location.href = "../login/login.jsp";
                return false;
            }
            location.href = "./BoardWriteForm.do?id=<%=sessionId%>";
        }
    </script>
</head>
<body>

<jsp:include page="../top_menu.jsp" />

<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">게시판(고객센터)</h1>
    </div>
</div>

<div class="container">
    <form action="<c:url value='/BoardWriteAction.do'/>" method="post">

        <div>
            <div class="text-right">
                <span class="badge badge-success">전체 <%=total_record%>건</span>
            </div>
        </div>

        <div style="padding-top: 50px">
            <table class="table table-hover">
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성일</th>
                    <th>조회</th>
                    <th>글쓴이</th>
                </tr>

                <c:forEach var="notice" items="${boardList}">
                    <tr>
                        <td>${notice.num}</td>
                        <td><a href="./BoardViewAction.do?num=${notice.num}&pageNum=${pageNum}">${notice.subject}</a></td>
                        <td>${notice.regist_day}</td>
                        <td>${notice.hit}</td>
                        <td>${notice.name}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        <div align="center">
            <c:set var="pageNum" value="${pageNum}" />
            <c:forEach var="i" begin="1" end="${total_page}">
                <a href="<c:url value='/BoardListAction.do?pageNum=${i}'/>">

                    <c:choose>
                        <c:when test="${pageNum==i}">
                            <font color='4C5317'><b> [${i}]</b></font>
                        </c:when>
                        <c:otherwise>
                            <font color='4C5317'> [${i}]</font>
                        </c:otherwise>
                    </c:choose>
                </a>
            </c:forEach>
        </div>

        <div align="left">
            <table>
                <tr>
                    <td width="100%" align="left">&nbsp;&nbsp;
                        <select name="items" class="txt">
                            <option value="subject">제목에서</option>
                            <option value="content">본문에서</option>
                            <option value="name">글쓴이에서</option>
                        </select> <input name="text" type="text" /> <input type="submit" id="btnAdd" class="btn btn-primary " value="검색 " />
                    </td>
                    <td width="100%" align="right">
                        <a href="#" onclick="checkForm(); return false;" class="btn btn-primary">&laquo;글쓰기</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>

    <hr>
</div>

<jsp:include page="../footer.jsp" />
</body>
</html>
