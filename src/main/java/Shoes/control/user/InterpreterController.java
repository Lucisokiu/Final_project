package Shoes.control.user;

import Factory.Client;
import Interpreter.ClientInterpreter;
import Interpreter.Context;
import Shoes.dao.DAO;
import Shoes.entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//chua su dung dc controller nay
import static Interpreter.ClientInterpreter.checkInterpreter;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.ResourceBundle;


import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "InterpreterController",urlPatterns = "/InterpreterController")
public class InterpreterController extends HttpServlet  {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        DAO dao = new DAO();
        String acModel = request.getParameter("acModel");
        Context context = new Context(acModel);
        String notice=new String();
        notice = checkInterpreter(context);
        request.setAttribute("notice",notice);
        Product product = dao.FindByAcmodel(context.getModel());
        String id = null;
        if(product!=null){
            id = String.valueOf(product.getProduct_id());
        }
//        Product p = dao.getProductByID(id);
//        request.setAttribute("detail", p);
        if(product!=null){
            response.sendRedirect(request.getContextPath() + "/detail?pid="+id);
        }else{
            response.sendRedirect(request.getContextPath() + "/HomeController?notice="+notice);
        }
    }
    public void doGet(HttpServletRequest request,HttpServletResponse response){

    }
}
