package Interpreter;
import Shoes.dao.DAO;

import Shoes.entity.Product;

public class ModelExpression implements Expression {
    @Override
    public String InterpretContext(Context context) {
        if(context.getIsShoe() == true){
            DAO dao = new DAO();
            //tim model xong mới tiếp tục
            Product product = dao.FindByAcmodel(context.getModel());
            if(product!=null){
                System.out.println("Model is " + context.getModel().substring(1,4));
                return "Model is " + context.getModel().substring(1,4)+", ";
            }else{
                System.out.println("Model could not be interpreted, ");
                return "Model could not be interpreted, ";
            }
        }else{
            System.out.println("Model could not be interpreted, ");
            return "Model could not be interpreted, ";
        }
    }
}
