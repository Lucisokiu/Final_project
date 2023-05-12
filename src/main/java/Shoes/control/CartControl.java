package Shoes.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Builder.ProductBuilder;
import Shoes.dao.DAO;

/**
 *
 * @author ADMIN
 */

@WebServlet(name = "CartControl", urlPatterns = {"/cartcontrol"})
public class CartControl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        // int id = (int) session.getAttribute("userid");
        DAO dao = new DAO();
        List<ProductBuilder> listAllCard = dao.getAllCart();
        session.setAttribute("listAllCard", listAllCard);
        request.getRequestDispatcher("cartcontrol.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
