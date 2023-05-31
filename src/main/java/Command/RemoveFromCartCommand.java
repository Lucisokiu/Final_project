package Command;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Builder.ProductBuilder;
import Shoes.dao.DAO;



public class RemoveFromCartCommand implements InterfaceCommand{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response,int account_id,int product_id,int quantity) throws ServletException, IOException {
        // xử lý hành vi remove cart
        DAO dao = new DAO();
        dao.deleteCart(account_id,product_id);
        HttpSession session = request.getSession();
        int id = (int) session.getAttribute("userid");
        List<ProductBuilder> listCard = dao.getCart(id);
        session.setAttribute("listCard", listCard);

        request.getRequestDispatcher("MainControl?action=menu").forward(request, response);
    }
}
