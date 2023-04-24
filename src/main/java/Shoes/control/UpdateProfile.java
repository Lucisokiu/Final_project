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
@WebServlet(name = "UpdateProfile", urlPatterns = {"/saveprofile"})
public class UpdateProfile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/user-profile.jsp";
        
        String username = request.getParameter("usernameup");
        String pass = request.getParameter("passup");
        String fullname = request.getParameter("fullnameup");
        String email = request.getParameter("emailup");
        String phone = request.getParameter("phoneup");
        String address = request.getParameter("addressup");
        
        HttpSession session = request.getSession();
        int userid = (int) session.getAttribute("userid");

        DAO dao = new DAO();
        dao.UpdateUser(userid, username, pass, fullname, email, phone, address);
        
        Account a = dao.checkAccountExistbyUserId(userid);
        
        session.setAttribute("userid", a.getAccountId());
        session.setAttribute("username", a.getUserName());
        session.setAttribute("pass", a.getPassword());
        session.setAttribute("fullname", a.getFullName());
        session.setAttribute("email", a.getEmail());
        session.setAttribute("phone", a.getPhone());
        session.setAttribute("address", a.getAddress());
        
        username = (String) session.getAttribute("username");
        pass = (String) session.getAttribute("pass");
        fullname = (String) session.getAttribute("fullname");
        email = (String) session.getAttribute("email");
        phone = (String) session.getAttribute("phone");
        address = (String) session.getAttribute("address");
        
        System.out.println("Userid: " + userid);
        System.out.println("User name: " + username);
        System.out.println("Pass: " + pass);
        System.out.println("Full name: " + fullname);
        System.out.println("Email: " + email);
        System.out.println("Phone: " + phone);
        System.out.println("Address: " + address);
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    
    
}
