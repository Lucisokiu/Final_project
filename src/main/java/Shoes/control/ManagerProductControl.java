/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Shoes.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Shoes.dao.DAO;
import Shoes.entity.Account;
import Shoes.entity.Category;
import Shoes.entity.Product;

/**
 *
 * @author Nhut
 */
@WebServlet(name = "ManagerProductControl", urlPatterns = {"/ManagerProductControl"})
public class ManagerProductControl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        
        DAO dao = new DAO();
        
        List<Product> list = dao.getAllProducts();
        List<Category> listC = dao.getAllCategory();
        
        request.setAttribute("listP", list);
        request.setAttribute("ListC", listC);
        
        request.getRequestDispatcher("manager_product.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    

}

