
package Shoes.control;

import java.io.IOException;
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
@WebServlet(name = "BookingMail", urlPatterns = {"/booking"})
public class BookingMail extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/index.jsp";
        //Email
        String from = "nguyenminhnhut435@gmail.com";
        String subject = "Welcome to our Happy Shoes Shop";
        //Confirm Booking Email
        String bookingName = request.getParameter("bookingName");
        String bookingEmail = request.getParameter("bookingEmail");
        String bookingDate = request.getParameter("bookingDate");
        String bookingTime = request.getParameter("bookingTime");
        String bookingQuantity = request.getParameter("bookingQuantity");
        
        Random generate = new Random();
        int bookingCode = generate.nextInt(99999999);
        
        String toBooking = bookingEmail;
        String bodyBooking = "Dear " + bookingName + ", \n\n"
                    + "Thank you for using our our service – Happy Shoes.\n"
                    + "We have pleasure in confirming that we have " + bookingQuantity 
                    + " guests from " + bookingTime + " on " + bookingDate + ".\n"
                    + "Reservation code: " + bookingCode + ".\n"
                    + "(Please keep this code to confirm your reservation.)\n\n"
                    + "Please contact us if you have any questions or problems.\n"
                    + "We look forward to your visit.\n\n" 
                    + "Yours sincerely.";

        if(bookingQuantity.equals("1")){
            bodyBooking = "Dear " + bookingName + ", \n\n"
                    + "Thank you for using our shoes service – Happy Shoes.\n"
                    + "We have pleasure in confirming that we have booked a table for " + bookingQuantity 
                    + " guest from " + bookingTime + " on " + bookingDate + ".\n"
                    + "Please contact us if you have any questions or problems.\n"
                    + "We look forward to your visit.\n\n" 
                    +"Yours sincerely."; 
        }
        
        Boolean bodyIsHTML = false;
        
        HttpSession session = request.getSession();
        
        String username = (String) session.getAttribute("username");
        
        if(username == null){
            url = "/signIn-signUp.jsp";
        }
        else{
            try {
            MailUtilLocal.SendMail(toBooking, from, subject, bodyBooking, bodyIsHTML);
        } catch (MessagingException e) {
            System.out.println("Unable to send your email");
        }
        }
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
