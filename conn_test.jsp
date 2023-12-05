<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %> 
<html> 
<head>
    <title>MySQL 데이터베이스 접속 테스트</title>
</head>
<body>
<%
    Statement stm = null;
    ResultSet rs = null;
    boolean conn_state = false;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        String myUrl = "jdbc:mysql://localhost/ggouppang_20221076";
        Connection conn = DriverManager.getConnection(myUrl, "root", "0324");
        
        stm = conn.createStatement();
        conn_state = true;

        if (stm.execute("SELECT * FROM product")) {
            rs = stm.getResultSet();

            while (rs.next()) {
                out.println(rs.getString("p_id"));
                out.println(rs.getString("p_name"));
                out.println(rs.getString("p_unitPrice"));
                out.println(rs.getString("p_description"));
                out.println(rs.getString("p_manufacture")); // 수정: 열 이름을 p_manufacturer에서 p_manufacture로 변경
                out.write("<br><br>");
            }

            rs.close();
            stm.close();
        } else {
            out.println("Query execution failed.");
        }

        conn.close();
    } catch (Exception e) {
        out.println("Exception: " + e.getMessage());
    }
%>

<%
    if (conn_state){
%>
    데이터베이스에 연결되었습니다.
<%
    } else {
%>
    연결에 실패하였습니다.
<% 
    } 
%>
</body>
</html>

GRANT ALL PRIVILEGES ON *.* TO 'ggouppang_20221076'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

