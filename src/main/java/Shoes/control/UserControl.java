/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Shoes.control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Shoes.dao.DAO;
import Shoes.entity.Account;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "UserControl", urlPatterns = {"/profile"})
public class UserControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/edit-profile.jsp";
        HttpSession session = request.getSession();
        if(session != null){
            int userid = (int) session.getAttribute("userid");
            String username = (String) session.getAttribute("username");
            String pass = (String) session.getAttribute("pass");
            String fullname = (String) session.getAttribute("fullname");
            String email = (String) session.getAttribute("email");
            String phone = (String) session.getAttribute("phone");
            String address = (String) session.getAttribute("address"); 
            
            System.out.println("Userid: " + userid);
            System.out.println("User name: " + username);
            System.out.println("Pass: " + pass);
            System.out.println("Full name: " + fullname);
            System.out.println("Email: " + email);
            System.out.println("Phone: " + phone);
            System.out.println("Address: " + address);
        }
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    

}
