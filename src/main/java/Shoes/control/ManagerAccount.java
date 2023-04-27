package Shoes.control;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Shoes.dao.DAO;
import Shoes.entity.Account;


/**
 *
 * @author Nhut
 */
@WebServlet(name = "ManagerAccount", urlPatterns = {"/ManagerAccount"})
public class ManagerAccount extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // HttpSession session = request.getSession();
        // Account a = (Account) session.getAttribute("acc");
        
        DAO dao = new DAO();
        
        List<Account> listA = dao.getAllUser();

        request.setAttribute("ListA", listA);
        
        // List<Product> list = dao.getAllProducts();
        // List<Category> listC = dao.getAllCategory();
            
        // request.setAttribute("listP", list);
        // request.setAttribute("ListC", listC);
            
        request.getRequestDispatcher("manager_account.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    

}

