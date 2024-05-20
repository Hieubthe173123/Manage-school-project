/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Hompage;

import java.util.*;
import jakarta.mail.*;
import jakarta.mail.internet.*;
import java.security.SecureRandom;

/**
 *
 * @author DELL
 */
public class SendMail {

    private static final String CHA_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    private static final int PASS_WORD_LENGTH = 10;
    private static final SecureRandom RANDOM_PASSWORD = new SecureRandom();

    public static void send(String to, String title, String msg, final String user, final String pass) {
        //Cấu hình Properties
        Properties pop = new Properties();
        pop.put("mail.smtp.host", "smtp.gmanl.com");
        //SMTP server
        pop.put("mail.smtp.port", "587");
        pop.put("mail.smtp.auth", "true");
        pop.put("mail.smtp.starttls.enable", "true");

        //Tạo phiên để gửi mail
        Session session = Session.getInstance(pop, new jakarta.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(title);
            message.setContent(msg, "text/html");
            Transport.send(message);
        } catch (MessagingException e) {
//            e.printStackTrace();
            System.out.println("Send Mail is Failed !!!");
        }

    }

    private static String generateRandomPassword() {
        StringBuilder pass = new StringBuilder(PASS_WORD_LENGTH);
        for (int i = 0; i < PASS_WORD_LENGTH; i++) {
            pass.append(CHA_STRING.charAt(RANDOM_PASSWORD.nextInt(CHA_STRING.length())));
        }
        return pass.toString();
    }

    public static void main(String[] args) {
        String to = "kiend1364@gmail.com";
        String title = "Sakura school - Forgot Password";
        String from = "kienpdhe170155@fpt.edu.vn";
        String password = "lrrq jpje rszs cann";

        String newPassword = generateRandomPassword();

        String contentToSendMail = "<!DOCTYPE html>\n"
                + "<html>\n"
                + "<head>\n"
                + "    <title>Email</title>\n"
                + "    <style>\n"
                + "        body { font-family: Arial, sans-serif; }\n"
                + "        .container { padding: 20px; }\n"
                + "        .header { background-color: #f4f4f4; padding: 10px; text-align: center; }\n"
                + "        .content { margin-top: 20px; }\n"
                + "        .footer { margin-top: 20px; text-align: center; font-size: 12px; color: #777; }\n"
                + "    </style>\n"
                + "</head>\n"
                + "<body>\n"
                + "    <div class='container'>\n"
                + "        <div class='header'>\n"
                + "            <h1>Hello Parent !!</h1>\n"
                + "        </div>\n"
                + "        <div class='content'>\n"
                + "            <p>Your PassWord will be change here!!</p>\n"
                + "            <p>" + newPassword + "</p>\n"
                + "        </div>\n"
                + "        <div class='footer'>\n"
                + "            <p>&copy; 2024 Sakura School. Make your best day</p>\n"
                + "        </div>\n"
                + "    </div>\n"
                + "</body>\n"
                + "</html>";

        SendMail.send(to, title, contentToSendMail, from, password);

    }
}
