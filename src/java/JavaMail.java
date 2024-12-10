
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class JavaMail {
    public static void sendMail(String recepient) throws MessagingException{
        System.out.println("Preparing to send Email");
        Properties properties= new Properties();
        
        properties.put("mail.smtp.auth","true");
         properties.put("mail.smtp.starttls.enable","true");
          properties.put("mail.smtp.host","smtp.gmail.com");
          properties.put("mail.smtp.port","587");
       
          String myAccount="";
          String password="";
          
          Session session = Session.getInstance(properties,new Authenticator(){
            @Override
            protected PasswordAuthentication getPasswordAuthentication(){
              return new PasswordAuthentication(myAccount,password);
          }
            
    });
        Message message = prepareMessage(session,myAccount, recepient); 
        Transport.send(message);
        System.out.println("Message sent Successfully");
    }
    
    private static Message prepareMessage(Session session, String myAccount, String recepient){
        try{
        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(myAccount));
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
        message.setSubject("ABC Cinema Payment Confirmation");
        message.setText("Payment confirmed");
        return message;
        }
        catch(Exception ex){
         Logger.getLogger(JavaMail.class.getName()).log(Level.WARNING,null,ex);
        }
        return null;
        }
    }
    

