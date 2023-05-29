
package Config;

import java.sql.*;


public class Conection {
    public Connection con;
    
    public Conection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingblog?serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true&useSSL=false", "root", "");
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Error: " + e);
        }
    }
    
    public Connection getConnection(){
        return con;
    }

    
    public static void main(String[] args) {
        Conection cn = new Conection();

        Statement st;
        ResultSet rs;

        try {
            st = cn.con.createStatement();
            rs = st.executeQuery("SELECT * FROM tbl_articless");

            while (rs.next()) {
                System.out.println(rs.getInt("art_id"));
                System.out.println(rs.getString("art_gamename"));
                System.out.println(rs.getFloat("art_rating"));
                System.out.println(rs.getString("art_body"));
                System.out.println(rs.getString("art_title"));
            }
            cn.con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    }

}