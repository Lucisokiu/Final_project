package Interpreter;

import java.util.ArrayList;
import java.util.List;

public class ClientInterpreter {
    public static String checkInterpreter(Context context) {
        String notice = new String();
        List<Expression> lstExpressions = new ArrayList<>();
        lstExpressions.add(new CheckExpression());
        lstExpressions.add(new BrandExpression());
        lstExpressions.add(new ModelExpression());
        for (int exp_index = 0; exp_index < lstExpressions.size(); exp_index++) {
            notice= notice+lstExpressions.get(exp_index).InterpretContext(context);
        }
        return notice;
    }
}
