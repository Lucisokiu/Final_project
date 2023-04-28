package Shoes.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Shoes.dao.DAO;
import Shoes.entity.Account;
import Singleton.AccountSingleton;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "LoginControl", urlPatterns = {"/signin"})
public class LoginControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String username = request.getParameter("user");
        String password = request.getParameter("pass");

        DAO dao = new DAO();
        Account a = dao.login(username, password);
        AccountSingleton accountsingleton = new AccountSingleton();

        if(a == null){
            request.setAttribute("mess", "Wrong username or password");
            request.getRequestDispatcher("signIn-signUp.jsp").forward(request, response);
        }
        else{
            
           Account acc = (Account) session.getAttribute("acc");
           Account accExist = accountsingleton.checkLogiAccount(acc);
            if ( accExist == null )
            {
           session.setAttribute("acc", a);
           session.setAttribute("userid", a.getAccountId());
           session.setAttribute("username", a.getUserName());
           session.setAttribute("pass", a.getPassword());
           session.setAttribute("fullname", a.getFullName());
           session.setAttribute("email", a.getEmail());
           session.setAttribute("phone", a.getPhone());
           session.setAttribute("address", a.getAddress());
           
           request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            else{
                request.setAttribute("mess", "Accounts are logged in the other");
                request.getRequestDispatcher("signIn-signUp.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    
    
    

}
