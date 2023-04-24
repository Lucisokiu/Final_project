/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Factory;

/**
 *
 * @author nhut
 */
public class Client {
     public static void main(String[] args) {
        Category category = CategoryFactory.getCategory(CategoryType.ADIDAS);
        System.out.println(category.getCategoryID());
    }
}
