package Command;

import javax.servlet.ServletException;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Shoes.dao.DAO;
import Shoes.entity.Account;
import Shoes.entity.Product;

public class init extends HttpServlet {

    // Khởi tạo DAO và CommandFactory
    CommandFactory commandFactory = new CommandFactory();

@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    // Hiển thị trang giỏ hàng
    response.setContentType("text/html;charset=UTF-8");
    HttpSession session = request.getSession();
    Account a = (Account) session.getAttribute("acc");
    DAO dao = new DAO();
    List<Product> listCart = dao.getCart(a.getAccountId());

    request.setAttribute("listCart", listCart);

    request.getRequestDispatcher("detail.jsp").forward(request, response);
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
