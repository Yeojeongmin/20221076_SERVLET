<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dao.MemberRepository" %>
<%
    String memberId = request.getParameter("j_ID");
    String password = request.getParameter("j_Password");
    String name = request.getParameter("j_Name");
    String gender = request.getParameter("j_Gender"); // 추가
    String birth = request.getParameter("j_Birth"); // 추가
    String email = request.getParameter("j_Email");
    String phone = request.getParameter("j_phone"); // 추가
    String address = request.getParameter("j_Address");

    MemberRepository memberRepository = MemberRepository.getInstance();
    boolean registrationSuccess = memberRepository.registerMember(memberId, password, name, gender, birth, email, phone, address);

    if (registrationSuccess) {
%>
        <div class='alert alert-success'>
            <p>가입해주셔서 감사합니다! 환영합니다!</p>
        </div>
        <a href="login/login.jsp">로그인 페이지로 이동</a>
<%
    } else {
%>
        <div class='alert alert-danger'>
            <p>이미 존재하는 아이디입니다. 다른 아이디를 선택해주세요.</p>
        </div>
        <a href="member_join.jsp">회원가입 페이지로 이동</a>
<%
    }
%>
