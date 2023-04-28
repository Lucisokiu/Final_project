package Interpreter;

public class ModelExpression implements Expression {
    @Override
    public String InterpretContext(Context context) {
        if(context.getIsShoe() == true){
            System.out.println("Model is " + context.getModel().substring(1,4));
            return "Model is " + context.getModel().substring(1,4)+", ";
        }else{
            System.out.println("Model could not be interpreted, ");
            return "Model could not be interpreted, ";
        }
    }
}
