/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Shoes.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Shoes.util.MailUtilLocal;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "CheckoutMail", urlPatterns = {"/checkout"})
public class CheckoutMail extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/index.jsp";
        
        //Email
        String from = "Happy Shoes";
        String subject = "Welcome to our Happy Shoes";
        //Confirm Booking Email
        String checkoutName = request.getParameter("checkoutName");
        String fullname = request.getParameter("fullname");
        String checkoutAddress = request.getParameter("checkoutAddress");
        String checkoutPhone = request.getParameter("checkoutPhone");
        String checkoutEmail = request.getParameter("checkoutEmail");
        Random generate = new Random();
        int checkoutNumber = generate.nextInt(99999999);
        
        String toCheckout = checkoutEmail;
        String bodyCheckout = "Dear " + checkoutName + ", \n\n"
                + "Thank you for using our shop service – Happy Shoes.\n"
                + "We are pleased to confirm that you have placed your order with the following information: \n"
                + "\tYour name:  " + fullname +".\n"
                + "\tYour address: " + checkoutAddress + ".\n"
                + "\tYour phone number: " + checkoutPhone + ".\n"
                + "\tYour order code: " + checkoutNumber + ".\n"
                + "\t(Please keep this code to confirm your order.)\n\n"
                + "For a more detailed view of your order, visit our website by the link: \n\n"
                + "Please contact us if you have any questions or problems.\n"
                + "We look forward to your visit.\n\n" 
                +"Yours sincerely.";

        Boolean bodyIsHTML = false;
        
        try {
            MailUtilLocal.SendMail(toCheckout, from, subject, bodyCheckout, bodyIsHTML);
        } catch (MessagingException e) {
            System.out.println("Unable to send your email");
        }
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
        
        
    }

    

}
