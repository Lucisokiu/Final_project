/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shoes.entity;

/**
 *
 * @author ADMIN
 */
public class Category {
    private int category_id;
    private String categoryName;

    public Category(int category_id, String categoryName) {
        this.category_id = category_id;
        this.categoryName = categoryName;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    @Override
    public String toString() {
        return "Category{" + "category_id=" + category_id + ", category_name=" + categoryName + '}';
    }
    
    
}
