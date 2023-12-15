import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MemberDAO {
    public static boolean registerMember(String url, String username, String password,
                                        String j_ID, String j_Password, String j_Name,
                                        String j_Gender, String j_Birth, String j_Email,
                                        String j_Phone, String j_Address, String regist_day) {
        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            String insertQuery = "INSERT INTO member (j_ID, j_Password, j_Name, j_Gender, j_Birth, j_Email, j_Phone, j_Address, regist_day) " +
                                 "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

            try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
                preparedStatement.setString(1, j_ID);
                preparedStatement.setString(2, j_Password);
                preparedStatement.setString(3, j_Name);
                preparedStatement.setString(4, j_Gender);
                preparedStatement.setString(5, j_Birth);
                preparedStatement.setString(6, j_Email);
                preparedStatement.setString(7, j_Phone);
                preparedStatement.setString(8, j_Address);
                preparedStatement.setString(9, regist_day);

                int rowsAffected = preparedStatement.executeUpdate();
                return rowsAffected > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
