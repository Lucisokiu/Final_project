package Command;

import javax.servlet.ServletException;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Shoes.dao.DAO;

public class init extends HttpServlet {

    // Khởi tạo DAO và CommandFactory
    DAO dao = new DAO();
    CommandFactory commandFactory = new CommandFactory();

@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Hiển thị trang giỏ hàng
    // request.setAttribute("cartItems", cartDao.getCartItems());
    request.getRequestDispatcher("cart.jsp").forward(request, response);
}

@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Lấy yêu cầu từ người dùng
    String action = request.getParameter("action");
    // Tạo đối tượng Command tương ứng
    InterfaceCommand command = commandFactory.createCommand(action);
    if (command != null) {
        // Thực hiện yêu cầu
        command.execute(request, response, dao);
    } else {
        // Yêu cầu không hợp lệ
        response.sendError(HttpServletResponse.SC_BAD_REQUEST);
    }
}


}
