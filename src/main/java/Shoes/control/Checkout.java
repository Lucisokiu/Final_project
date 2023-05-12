
package Shoes.control;

import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "Checkout", urlPatterns = {"/checkout"})
public class Checkout extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // String id = request.getParameter("pid");
        String checkoutName = request.getParameter("checkoutName");
        String fullname = request.getParameter("fullname");
        String checkoutAddress = request.getParameter("checkoutAddress");
        String checkoutPhone = request.getParameter("checkoutPhone");
        String checkoutEmail = request.getParameter("checkoutEmail");
        request.setAttribute("checkoutName", checkoutName);
        request.setAttribute("fullname", fullname);
        request.setAttribute("checkoutAddress", checkoutAddress);
        request.setAttribute("checkoutPhone", checkoutPhone);
        request.setAttribute("checkoutEmail", checkoutEmail);



        HttpSession session = request.getSession();


        int id = (int) session.getAttribute("userid");

        String[] productIds = request.getParameterValues("product_id");
        String[] productQuantitys = request.getParameterValues("quantity");

        DAO dao = new DAO();

        for (int i = 0; i < productIds.length; i++) {
            int product_id = Integer.parseInt(productIds[i]);
            System.out.println(product_id);

            
            dao.OderedCart(id, product_id);
            // dao.deleteCart(id, product_id);
        
            int quantity = Integer.parseInt(productQuantitys[i]);
            System.out.println(quantity);
            dao.changeQuantity(product_id, quantity);
        }
        



        // request.setAttribute("ListA", listA);
        request.getRequestDispatcher("checkout.jsp");
        // request.getRequestDispatcher("checkoutMail").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
