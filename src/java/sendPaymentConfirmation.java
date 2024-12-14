import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



    @WebServlet("/sendPaymentConfirmation")
public class sendPaymentConfirmation extends HttpServlet {
        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
                throws ServletException, IOException {
        int         paymentID = Integer.parseInt(request.getParameter("paymentID"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            PaymentDetails paymentDetails = PaymentDAO.getPaymentDetails(paymentID);

            if (paymentDetails != null) {
                String subject = "ABC Cinema Payment Confirmation";
                String body = String.format("Dear %s,\n\nThank you for your payment!\n\nPayment Details:\n" +
                                "Payment ID: %d\nAmount: $%.2f\nDate: %s\n\nBest regards,\nABC Cinema",
                        paymentDetails.getName(),
                        paymentDetails.getPaymentId(),
                        paymentDetails.getAmount(),
                        paymentDetails.getPaymentDate()
                );

                JavaMail2.sendMail(paymentDetails.getEmail(), subject, body);
                response.getWriter().println("Email sent successfully!");
            } else {
                System.out.println("Payment details not found");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred: " + e.getMessage());
             }
    }
}



