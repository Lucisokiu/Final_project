
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
import Shoes.entity.Product;

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
            String product_id_string = Integer.toString(product_id);
            int quantity = Integer.parseInt(productQuantitys[i]);


            System.out.println(product_id);

            Product product_quantity = dao.getProductByID(product_id_string);
            if(quantity <= product_quantity.getQuantity())
            {
            dao.OderedCart(id, product_id);
            // dao.deleteCart(id, product_id);
            System.out.println(quantity);
            dao.changeQuantity(product_id, quantity);
            request.getRequestDispatcher("checkoutMail").forward(request, response);
            }
            else
            {
                String notice = "Không đủ số lượng";
                request.setAttribute("notice", notice);
                request.getRequestDispatcher("MainControl?action=menu").forward(request, response);
            }
        }
        



        // request.setAttribute("ListA", listA);
        // request.getRequestDispatcher("checkout.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
