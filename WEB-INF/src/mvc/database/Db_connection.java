package mvc.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Db_connection {
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException {		
		Connection conn = null;		
		String url = "jdbc:mysql://localhost:3306/ggouppang_20221076?characterEncoding=utf8";
		String user = "root";
		String password = "0324";

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);		
		
		return conn;
	}	
}
