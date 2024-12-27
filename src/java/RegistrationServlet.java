import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "RegistrationServlet", urlPatterns = {"/Register"})
public class RegistrationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String uemail = request.getParameter("email");
        String upswd = request.getParameter("pswd");
                
        System.out.println("data catched........");
        System.out.println(uname);
        System.out.println(uemail);
        System.out.println(upswd);
        RequestDispatcher dispatcher = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shenal", "root", "1234");


            PreparedStatement checkStmt = con.prepareStatement("SELECT * FROM user WHERE email=?");
            checkStmt.setString(1, uemail);
            ResultSet rs = checkStmt.executeQuery();

            if (rs.next()) {

                request.setAttribute("status", "emailExists");
                dispatcher = request.getRequestDispatcher("register.jsp");
            } else {
  
                PreparedStatement pst = con.prepareStatement("INSERT INTO user (name, email, role, password) VALUES (?, ?, ?, ?)");
                pst.setString(1, uname);
                pst.setString(2, uemail);
                pst.setString(3, "Customer");
                pst.setString(4, upswd);
                int result = pst.executeUpdate();

                if (result > 0) {

                    request.setAttribute("status", "signupSuccess");
                } else {

                    request.setAttribute("status", "signupFailed");
                }
                dispatcher = request.getRequestDispatcher("register.jsp");
            }

        } catch (ClassNotFoundException | SQLException e) {
            request.setAttribute("status", "signupFailed");
            dispatcher = request.getRequestDispatcher("register.jsp");
        }

        if (dispatcher != null) {
            dispatcher.forward(request, response);
        }
    }
}
