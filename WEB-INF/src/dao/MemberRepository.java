package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import dto.Member;

public class MemberRepository {
    private ArrayList<Member> listOfMembers = new ArrayList<>();
    private static MemberRepository instance = new MemberRepository();

    // ... (이하 생략)

    // 데이터베이스에 회원 정보 저장
    private void saveToDatabase(Member member) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // JDBC 드라이버 로딩 (드라이버 클래스는 사용하는 DBMS에 따라 달라질 수 있습니다.)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 데이터베이스 연결
            String url = "jdbc:mysql://localhost:3306/ggouppang_20221076"; // 데이터베이스 URL
            String user = "root"; // 데이터베이스 사용자명
            String password = "0324"; // 데이터베이스 비밀번호
            conn = DriverManager.getConnection(url, user, password);

            // 여기에 데이터베이스 연결 코드 추가

            String sql = "INSERT INTO member (j_ID, j_Password, j_Name, j_Gender, j_Birth, j_Email, j_Phone, j_Address, regist_day) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getMemberId());
            pstmt.setString(2, member.getPassword());
            pstmt.setString(3, member.getName());
            pstmt.setString(4, member.getGender());
            pstmt.setString(5, member.getBirth());
            pstmt.setString(6, member.getEmail());
            pstmt.setString(7, member.getPhone());
            pstmt.setString(8, member.getAddress());
            pstmt.setString(9, member.getRegist_day());
            pstmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                // 연결과 관련된 리소스 해제
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
