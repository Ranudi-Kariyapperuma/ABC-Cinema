/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/EmailNotification")
public class EmailNotification extends HttpServlet {
  @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String recipientEmail = request.getParameter("email");
        String messageBody = request.getParameter("message");
        String subject = "ABC Cinema Notification";
       
        // Email configuration
        String senderEmail = "naduni@xx.com";
        String senderPassword = "1234";
        String smtpHost = "smtp.gmail.com"; //gmail
        
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", smtpHost);
        props.put("mail.smtp.port", "587");
        
        // Session and Message
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, senderPassword);
            }
        });
        
         try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(senderEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
            message.setSubject(subject);
            message.setText(messageBody);

            // Send email
            Transport.send(message);
            response.getWriter().write("Email sent successfully!");

        } catch (MessagingException e) {
            response.getWriter().write("Failed to send email: " + e.getMessage());
        } 
// processRequest(request, response);
    }   
}
