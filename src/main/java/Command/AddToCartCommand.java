package Command;
import java.io.IOException;
import java.util.List;
import Builder.ProductBuilder;
import Shoes.dao.DAO;
import Shoes.entity.Product;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Shoes.dao.DAO;
public class AddToCartCommand implements InterfaceCommand{

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response,int account_id,int product_id,int quantity) throws ServletException, IOException {
        // xử lý hành vi addcart
        DAO dao = new DAO();

        String product_id_string = String.valueOf(product_id);
        Product product = dao.getProductByID(product_id_string);
        if ( quantity <= product.getQuantity())
        {
        dao.addCart(account_id,product_id,quantity);
        HttpSession session = request.getSession();
        List<ProductBuilder> listCard = dao.getCart(account_id);
        session.setAttribute("listCard", listCard);

        request.getRequestDispatcher("MainControl?action=menu").forward(request, response);
        }
        else{
            String notice = "Không đủ số lượng";
            request.setAttribute("notice", notice);
            request.getRequestDispatcher("MainControl?action=menu").forward(request, response);
        }
    }
    

}
