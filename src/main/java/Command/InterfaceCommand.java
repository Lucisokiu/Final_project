package Command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface InterfaceCommand {
    void execute(HttpServletRequest request, HttpServletResponse response,int account_id,int product_id,int quantity) throws ServletException, IOException;
}


