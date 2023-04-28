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

/**
 *
 * @author nhut
 */
@WebServlet(name = "AddProduct", urlPatterns = {"/add"})
public class AddProduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
<<<<<<< HEAD:src/main/java/Shoes/control/admin/AddProduct.java
        String pname = request.getParameter("name");
        String pimage = request.getParameter("image");
        String pprice = request.getParameter("price");
        String pdescription = request.getParameter("description");
        String pcategory = request.getParameter("category");
=======
        // String pname = request.getParameter("name");
        // String pimage = request.getParameter("image");
        // String pprice = request.getParameter("price");
        // String pdescription = request.getParameter("description");
        // String pcategory = request.getParameter("category");
        
>>>>>>> f7b04e2c5cf3c26ff3ef523daf666eb4487a80d8:src/main/java/Shoes/control/AddProduct.java
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    
}
