import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.*;
import javax.mail.internet.MimeMessage;

    public class JavaMail2 {

    public static void sendMail(String recepient) throws MessagingException{
        System.out.println("Preparing to send Email");
        
         String From="gailluna62@gmail.com";
         String receiver ="gailluna62@gmail.com";
         String Username="gailluna62@gmail.com";
         String host="smtp.gmail.com";
         String password="pchh ccbl bufi qbmr ";
        
        Properties properties= new Properties();
        properties.put("mail.smtp.auth","true");
        properties.put("mail.smtp.starttls.enable","true");
        properties.put("mail.smtp.host",host);
        properties.put("mail.smtp.port","587");
       
          Authenticator authenticator = new Authenticator(){
            @Override
            protected PasswordAuthentication getPasswordAuthentication(){
              return new PasswordAuthentication(From,password);
          }
            
    };
        Session session = Session.getInstance(properties,authenticator);     
        System.out.println("Message sent Successfully");
        try{
        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(From));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(receiver));
        message.setSubject("ABC Cinema Payment Confirmation");
        message.setText("Payment confirmed");
        Transport.send(message);
        System.out.println("Email sent successfully");
        }
        catch(MessagingException ex){
            System.err.println("error found"+ ex.getMessage());
            throw new RuntimeException(ex);        }
        }
    
    }
    
    
