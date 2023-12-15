package dto;

public class Member {
    private String memberId;
    private String password;
    private String name;
    private String gender;
    private String birth;
    private String email;
    private String phone;
    private String address;
    private String regist_day;

    // 생성자, 게터, 세터 등은 필요에 따라 추가하십시오.

    // 예시로 게터와 세터를 추가한 코드:
    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRegist_day() {
        return regist_day;
    }

    public void setRegist_day(String regist_day) {
        this.regist_day = regist_day;
    }
}
