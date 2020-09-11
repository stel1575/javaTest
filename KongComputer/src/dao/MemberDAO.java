package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MemberDAO {
    private Connection getConnection() throws SQLException {
        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/KScom";
            conn = DriverManager.getConnection(url, "java", "java");
        }
        catch (ClassNotFoundException e) {
            System.out.println(" 드라이버 로딩 실패 ");
        }

        return conn;
    }

    public boolean insert(vo.Member member ) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = getConnection();

            // Column
            // PK , name , email , password
            String sql = "INSERT INTO user VALUES (null, ?, ?, ?);";
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, member.getName());
            pstmt.setString(2, member.getEmail());
            pstmt.setString(3, member.getPasswd());
            int count = pstmt.executeUpdate();

            result = (count == 1);
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            try {
                if( conn != null ) {
                    conn.close();
                }
                if( pstmt != null ) {
                    pstmt.close();
                }
            }
            catch(SQLException e) {
                e.printStackTrace();
            }
        }

        return result;
    }
}