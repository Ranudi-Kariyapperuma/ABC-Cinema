import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class PaymentDAO {
    
    public static PaymentDetails getPaymentDetails(int paymentID) throws SQLException {
        PaymentDetails paymentDetails = null;
        String query = "SELECT p.paymentID, p.Amount, p.paymentDate, u.Name, u.Email " +
                "FROM payment p INNER JOIN user u ON p.userID = u.userID " +
                "WHERE u.Role='Customer'";

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema","root","20242024");

             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, paymentID);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                paymentDetails = new PaymentDetails(
                        rs.getInt("paymentID"),
                        rs.getDouble("Amount"),
                        rs.getTimestamp("paymentDate"),
                        rs.getString("Name"),
                        rs.getString("Email")
                );
            }
        }
        return paymentDetails;
    }
}
