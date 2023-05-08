package Interpreter;

public class BrandExpression implements Expression{
    @Override
    public String InterpretContext(Context context) {
        if(context.getIsShoe() == true){
            if(context.getFirstChar().equals("A")){
                System.out.println("brand is Adidas... ");
                return "brand is Adidas, ";
            }
            else if(context.getFirstChar().equals("C")){
                System.out.println("brand is Converse... ");
                return "brand is Converse, ";

            }else if(context.getFirstChar().equals("N")){
                System.out.println("brand is Nike ");
                return "brand is Nike, ";
            }
        }
        return null;
    }
}
