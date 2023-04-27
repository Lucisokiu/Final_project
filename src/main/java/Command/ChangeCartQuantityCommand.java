package Command;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Shoes.dao.DAO;



public class ChangeCartQuantityCommand implements InterfaceCommand{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response,int account_id,int product_id,int quantity) throws ServletException, IOException {
               // xử lý hành vi quality

        DAO dao = new DAO();
        dao.changeCart(account_id,product_id,quantity);
       
        response.sendRedirect("init");
    }
}
