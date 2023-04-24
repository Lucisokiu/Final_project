/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Factory;

/**
 *
 * @author nhut
 */
public class CategoryFactory {
    private CategoryFactory(){
        
    }
    
    public static final Category getCategory(CategoryType categoryType){
        switch(categoryType){
            case NIKE:
                return new Nike();
            case ADIDAS:
                return new Adidas();
            case CONVERSE:
                return new Converse();
            default:
                throw new IllegalArgumentException("This category type is unsupported");
        }
    }
            
}
