package Shoes.control.user;

import Interpreter.Context;
import Shoes.dao.DAO;
import Shoes.entity.Cart;
import Shoes.entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static Interpreter.ClientInterpreter.checkInterpreter;

@WebServlet(name = "initProductToCartController",urlPatterns = "/initProductToCartController")
public class initProductToCartController extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        if(session.getAttribute("userid")==null){
            request.getRequestDispatcher("signIn-signUp.jsp").forward(request, response);

        }else{
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int product_id = Integer.parseInt(request.getParameter("product_id"));
            int account_id = (int) session.getAttribute("userid");
            Cart cart = new Cart(account_id,product_id,quantity);
            response.sendRedirect(request.getContextPath() + "/detail?pid="+product_id);
        }
    }
    @Override
    public void doGet(HttpServletRequest request,HttpServletResponse response){

    }
}
