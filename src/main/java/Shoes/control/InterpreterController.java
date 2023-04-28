package Shoes.control;

import Factory.Client;
import Interpreter.ClientInterpreter;
import Interpreter.Context;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//chua su dung dc controller nay
import static Interpreter.ClientInterpreter.checkInterpreter;

@WebServlet(name = "InterpreterController",urlPatterns = "/InterpreterController")
public class InterpreterController {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String acModel = request.getParameter("acModel");
        Context context = new Context(acModel);
        String notice = new String();
        checkInterpreter(context);
        response.sendRedirect(request.getContextPath() + "/MainControl");
    }
    public void doGet(HttpServletRequest request,HttpServletResponse response){

    }
}
