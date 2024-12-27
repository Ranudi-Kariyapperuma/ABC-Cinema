import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.RequestDispatcher;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", urlPatterns = {"/Login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uemail = request.getParameter("email");
        String upswd = request.getParameter("pswd");

        System.out.println("Login Controller: Attempting login");
        System.out.println("Email: " + uemail);
        System.out.println("Password: " + upswd);

        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;

        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            // Load JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish Database Connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shenal", "root", "1234");

            // Prepare SQL Query
            String query = "SELECT * FROM user WHERE email = ? AND password = ?";
            pst = con.prepareStatement(query);
            pst.setString(1, uemail);
            pst.setString(2, upswd);

            // Execute Query
            rs = pst.executeQuery();

            if (rs.next()) {
                // Login successful, set session attributes
                session.setAttribute("uname", rs.getString("name")); // Ensure column name matches database
                session.setAttribute("uid", rs.getString("userid"));     // Ensure column name matches database
                request.setAttribute("status", "loginSuccess");
                dispatcher = request.getRequestDispatcher("index.jsp");
            } else {
                // Login failed
                request.setAttribute("status", "loginFailed");
                dispatcher = request.getRequestDispatcher("login.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Log the error for debugging
            request.setAttribute("status", "loginError");
            dispatcher = request.getRequestDispatcher("login.jsp");
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (dispatcher != null) {
            dispatcher.forward(request, response);
        }
    }
}
