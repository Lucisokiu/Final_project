
package Shoes.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Shoes.dao.DAO;
import Shoes.entity.Category;
import Shoes.entity.Product;
import Shoes.entity.Account;
import Shoes.util.MailUtilLocal;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "Checkout", urlPatterns = {"/Checkout"})
public class Checkout extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // String id = request.getParameter("pid");

        DAO dao = new DAO();
        List<Account> listA = dao.getAllUser();
        // Product p = dao.getProductByID(id);
        // request.setAttribute("product", p);
        request.setAttribute("ListA", listA);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
