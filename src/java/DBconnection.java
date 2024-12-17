/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author HP
 */
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

public class DBconnection {
     // Update with MySQL server details
    private static final String URL = "jdbc:mysql://localhost:3306/abc_cinema"; // MySQL URL
    private static final String USERNAME = "root"; // MySQL username
    private static final String PASSWORD = "20242024"; // MySQL password

    public static Connection getConnection() {
        Connection conn = null;
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish connection
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            if (conn != null) {
                System.out.println("Database connection successful!");
            } else {
                System.out.println("Failed to connect to the database.");
            }
        } catch (ClassNotFoundException e) {
            System.err.println("MySQL Driver not found! " + e.getMessage());
        } catch (SQLException e) {
            System.err.println("Connection failed! " + e.getMessage());
        }
        return conn;
    }
}