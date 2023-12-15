package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import dto.Member;
import util.DBUtil;

public class MemberRepository {
    private ArrayList<Member> listOfMembers = new ArrayList<>();
    private static MemberRepository instance = new MemberRepository();

    public static MemberRepository getInstance() {
        return instance;
    }

    private MemberRepository() {
        // 초기화 코드는 비워둡니다.
    }

    public ArrayList<Member> getAllMembers() {
        return listOfMembers;
    }

    public Member getMemberById(String memberId) {
        Member memberById = null;

        for (int i = 0; i < listOfMembers.size(); i++) {
            Member member = listOfMembers.get(i);
            if (member != null && member.getMemberId() != null && member.getMemberId().equals(memberId)) {
                memberById = member;
                break;
            }
        }

        return memberById;
    }

    public void addMember(Member member) {
        listOfMembers.add(member);
    }

    // 회원가입 로직을 추가합니다.
    public boolean registerMember(String memberId, String password, String name, String gender, String birth, String email, String phone, String address) {
        // 이미 존재하는 아이디인지 확인
        for (Member member : listOfMembers) {
            if (member.getMemberId().equals(memberId)) {
                return false; // 아이디 중복
            }
        }

        // 존재하지 않는 경우 회원 추가
        Member newMember = new Member();
        newMember.setMemberId(memberId);
        newMember.setPassword(password);
        newMember.setName(name);
        newMember.setGender(gender); // 추가
        newMember.setBirth(birth); // 추가
        newMember.setEmail(email);
        newMember.setPhone(phone); // 추가
        newMember.setAddress(address); // 추가
        // regist_day는 현재 날짜 등록으로 가정하고 처리
        newMember.setRegist_day("2023-12-18"); // 수정 필요
        listOfMembers.add(newMember);

        // 여기서 데이터베이스에 저장하는 로직을 추가해야 함
        saveToDatabase(newMember);

        return true; // 회원가입 성공
    }

    // 데이터베이스에 회원 정보 저장
    private void saveToDatabase(Member member) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DBUtil.getConnection();
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
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, null);
        }
    }
}
