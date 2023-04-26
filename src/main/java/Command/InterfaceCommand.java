package Command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Shoes.dao.DAO;

public interface InterfaceCommand {
    void execute(HttpServletRequest request, HttpServletResponse response, DAO dao) throws ServletException, IOException;
}


