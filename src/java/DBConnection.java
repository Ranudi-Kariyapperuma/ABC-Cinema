import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/*public class DBConnection {
    private static final String url = "jdbc:mysql://localhost:3306/abc_cinema";
    private static final String user= "root";
    private static final String password = "20242024";

    public static Connection getConnection() 
            throws SQLException {
        return DriverManager.getConnection(url, user, password);
    }  
}*/

public class DBConnection {
    public static void main(String[] args) {
        try {
            // Register the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the connection
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/abc_cinema", "root", "20242024");
            System.out.println("Connection successful!");
            conn.close();
        } catch (ClassNotFoundException e) {
            System.err.println("MySQL Driver not found!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("SQL error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}