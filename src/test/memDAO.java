package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class memDAO {
	public boolean getMemInfo(String userid, String userpw){
		boolean result = false;
		Connection conn = DBConnection.getConnection();
		String sql = "SELECT * FROM member WHERE id=? AND pw=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("id");
				String password = rs.getString("password");
				int point = rs.getInt("point");
				new Member(name, id, password, point);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
