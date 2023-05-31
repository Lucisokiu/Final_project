
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
import Interpreter.Context;
import Shoes.dao.DAO;
import Shoes.entity.Category;
import Shoes.entity.Product;
import Shoes.entity.Account;
import javax.servlet.RequestDispatcher;

import static Interpreter.ClientInterpreter.checkInterpreter;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "MainControl", urlPatterns = {"/MainControl"})
public class MainControl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url= "/index.jsp";
        String action = request.getParameter("action");

        HttpSession session = request.getSession();
        DAO dao = new DAO();
        
        if (session.getAttribute("userid") != null) {
            List<ProductBuilder> listCard = dao.getCart((int)session.getAttribute("userid"));
            session.setAttribute("listCard", listCard);
        }
        

        List<Product> listP1 = dao.getProductByCate1("1");
        List<Product> listP2 = dao.getProductByCate2("2");
        List<Product> listP3 = dao.getProductByCate3("3");
        


        request.setAttribute("ListP1", listP1);
        request.setAttribute("ListP2", listP2);
        request.setAttribute("ListP3", listP3);


        if (action == null){
            action = "home";
        }
        if(action.equals("home")){
            request.setAttribute("notice", request.getAttribute("notice"));
            url = "/index.jsp";
        }
        else if(action.equals("about")){
            url = "/about.jsp";
        }
        else if (action.equals("menu")){
            url = "/menu.jsp";
        }
        else if(action.equals("reservation")){
            url = "/reservation.jsp";
        }
        else if(action.equals("blog")){
            url = "/blog.jsp";
        }
        else if(action.equals("contact")){
            url = "/contact.jsp";
        }
        else if(action.equals("login")){
            url = "/signIn-signUp.jsp";
        }
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request, response);
    }
}
