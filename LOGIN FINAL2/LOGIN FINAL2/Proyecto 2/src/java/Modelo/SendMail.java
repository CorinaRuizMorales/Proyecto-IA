/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
    
 
    
 public static void sendPlainTextEmail(String host, String port,
         final String userName, final String password, String toAddress,
         String subject, String message) throws AddressException,
         MessagingException {
     
     Properties properties= new Properties();
     properties.put("mail.smtp.host", host);
     properties.put("mail.smtp.port", port);
     properties.put("mail.smtp.auth", "true");
     properties.put("mail.smtp.starttls.enable", "true");
     
     properties.put("mail.smt.user", userName);
     
       Session session = Session.getDefaultInstance(properties);
       
       Message msg = new MimeMessage(session);

        msg.setFrom(new InternetAddress(userName));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
      
        
        msg.setText(message);


        Transport t = session.getTransport("smtp");
        t.connect(userName, password);
        t.sendMessage(msg, msg.getAllRecipients());
        t.close();
     
 }
  

    
    
}
