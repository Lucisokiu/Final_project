package Command;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Builder.ProductBuilder;
import Shoes.dao.DAO;
import Shoes.entity.Account;

@WebServlet(name = "initcard", urlPatterns = {"/initcard"})
public class init extends HttpServlet {

    // Khởi tạo DAO và CommandFactory
    CommandFactory commandFactory = new CommandFactory();

@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    // Hiển thị trang giỏ hàng

    // response.setContentType("text/html;charset=UTF-8");
    // List<ProductBuilder> productBuilders = new ArrayList<>();

    // for (Product product : listCard) {
    //     ProductBuilder productcart = new ProductBuilder.Builder()
    //     .setProductId(product.getProduct_id())
    //     .build();

    //     productBuilders.add(productcart);

    // }


    // request.setAttribute("listCard", listCard);

    // request.getRequestDispatcher("detail.jsp").forward(request, response);
}

@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Lấy yêu cầu từ người dùng
    String action = request.getParameter("action");
    String account_id_str = request.getParameter("account_id");
    int account_id = Integer.parseInt(account_id_str);
    
    String product_id_str = request.getParameter("product_id");
    int product_id = Integer.parseInt(product_id_str);
    
    String quantity_str = request.getParameter("quantity");
    int quantity = Integer.parseInt(quantity_str);
    

    // Tạo đối tượng Command tương ứng
    InterfaceCommand command = commandFactory.createCommand(action);
    if (command != null) {
        // Thực hiện yêu cầu
        command.execute(request, response,account_id,product_id,quantity);
    } else {
        // Yêu cầu không hợp lệ
        response.sendError(HttpServletResponse.SC_BAD_REQUEST);
    }

}


}
