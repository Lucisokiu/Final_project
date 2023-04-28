package Interpreter;
public class Context {
    private String ac_model = "";
    private boolean isShoe = false;
    public Context(String _ac_model){
        this.ac_model = _ac_model;
    }
    public String getModel(){
        return this.ac_model;
    }
    public int getLenght(){
        return this.ac_model.length();
    }
    public String getLastChar(){
        return  String.valueOf(ac_model.charAt(ac_model.length()-1));
    }
    public String getFirstChar(){
        return String.valueOf(ac_model.charAt(0));
    }
    public void setIsShoe(boolean _isShoe)
    {
        this.isShoe = _isShoe;
    }
    public boolean getIsShoe(){
        return this.isShoe;
    }
}
