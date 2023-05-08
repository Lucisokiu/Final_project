package Interpreter;

public class CheckExpression implements Expression {
    @Override
    public String InterpretContext(Context context) {
        String ac_model = context.getModel();
        if(ac_model.startsWith("N")||ac_model.startsWith("A")||ac_model.startsWith("C")){
            if (ac_model.length() == 4)
            {
                context.setIsShoe(true);
                System.out.println(ac_model + " is an shoe... ");
                return ac_model+"is an shoe, ";
            }
            else{
                context.setIsShoe(false);
                System.out.println(ac_model + " is not shoe... ");
                return ac_model+"is not shoe, ";

            }
        }
        else{
            context.setIsShoe(false);
            System.out.println(ac_model + " is not shoe... ");
            return ac_model+"is not shoe, ";

        }
    }
}
