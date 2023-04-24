/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shoes.util;

import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author ADMIN
 */

public class MailUtilLocal {
    public static void SendMail(String to, String from, String subject, 
            String body, boolean bodyIsHTML) throws MessagingException{
        
        System.out.println("Preparing to send email");
        
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "587");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.port", "587");
        
        final String myAccountEmail = "nguyenminhnhut435@gmail.com";
        final String password = "123";
        
        //get Session
        //Session session = Session.getDefaultInstance(props);
        Session session;
        session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(myAccountEmail, password);
            }
        });
        session.setDebug(true);
        
        Message message = new MimeMessage(session);
        message.setSubject(subject);
        
        if(bodyIsHTML){
            message.setContent(body, "text/html");
        }
        else{
            message.setText(body);
        }
        
        Address fromAddress = new InternetAddress(from);
        Address toAddress = new InternetAddress(to);
        message.setFrom(fromAddress);
        message.setRecipient(Message.RecipientType.TO, toAddress);
        Transport.send(message);
        System.out.println("Message sent successfully");
    }
    
}
