package Shoes.control;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpClient;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nhut
 */
@WebServlet(name = "AddProduct", urlPatterns = {"/addAccount"})
public class AddProduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // String pname = request.getParameter("account_id");
        String pimage = request.getParameter("userName");
        String pprice = request.getParameter("password");
        String pcategory = request.getParameter("email");
        int pphone = request.getParameter("phone");
        String paddress = request.getParameter("address");

        HttpSession session = request.getAttribute("acc");
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                doPost(request, response);

    }

    
}
