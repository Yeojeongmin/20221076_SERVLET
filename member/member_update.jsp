<%@ page contentType="text/html; charset=utf-8" import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ include file="../db/db_conn.jsp" %>

<%
    try {
        // 이미 선언된 변수들을 사용
        String memberId = request.getParameter("id");
        String sql = "select * from member where j_ID = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, memberId);
        rs = pstmt.executeQuery();

        if (rs.next()) {
%>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <!-- 이미지를 표시하는 부분은 회원 수정에서는 필요하지 않으므로 제외합니다. -->
        </div>
        <div class="col-md-8">
            <form name="updateMember" action="member_update_process.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
                <!-- 나머지 폼 입력 부분은 동일하게 유지 -->
                <!-- ... -->
            </form>
        </div>
    </div>
</div>
<%
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // 리소스 해제
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
<hr>


