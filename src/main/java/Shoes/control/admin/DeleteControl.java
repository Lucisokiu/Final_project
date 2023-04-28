/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Shoes.control.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Shoes.dao.DAO;

/**
 *
 * @author Nhut
 */
@WebServlet(name = "DeleteControl", urlPatterns = {"/DeleteControl"})
public class DeleteControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int pid =  Integer.valueOf(request.getParameter("pid"));
        
        System.out.println("Get product id: " + pid);
        
        DAO dao = new DAO();
        
        dao.DeleteProduct(pid);
        
        response.sendRedirect("ManagerProductControl");
        
        // String from = "nguyenminhnhut435@gmail.com";
        // String subject = "Welcome to our Happy Shoes Shop";
        
        // List<Account> listA = dao.getAllUser();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    

}
