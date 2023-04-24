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
@WebServlet(name = "DetailControl", urlPatterns = {"/detail"})
public class DetailControl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("pid");

        DAO dao = new DAO();
        // List<Product> list = dao.getAllProducts();
        List<Product> listP1 = dao.getProductByCate1("1");
        List<Product> listP2 = dao.getProductByCate2("2");
        List<Product> listP3 = dao.getProductByCate3("3");
        Product p = dao.getProductByID(id);
        request.setAttribute("detail", p);
        // request.setAttribute("ListP", list);
        request.setAttribute("ListP1", listP1);
        request.setAttribute("ListP2", listP2);
        request.setAttribute("ListP3", listP3);
        request.getRequestDispatcher("detail.jsp").forward(request, response);
        
     
       
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
