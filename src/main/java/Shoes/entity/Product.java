/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shoes.entity;

/**
 *
 * @author ADMIN
 */
public class Product {
    private int product_id;
    
    private String product_name;
    
    private int category_id;
    
    private String description;
    
    private double price;
    
    private double sale_price;
    
    private int enable;

    private String productImg_path;
    
    public Product(int product_id, String product_name, int category_id, String description, double price, double sale_price, int enable, String productImg_path) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.category_id = category_id;
        this.description = description;
        this.price = price;
        this.sale_price = sale_price;
        this.enable = enable;
        this.productImg_path = productImg_path;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getSale_price() {
        return sale_price;
    }

    public void setSale_price(double sale_price) {
        this.sale_price = sale_price;
    }

    public int getEnable() {
        return enable;
    }

    public void setEnable(int enable) {
        this.enable = enable;
    }


    public String getProductImg_path() {
        return productImg_path;
    }

    public void setProductImg_path(String productImg_path) {
        this.productImg_path = productImg_path;
    }



    @Override
    public String toString() 
    {
        return "Product{" + "product_id=" + product_id + ", product_name=" + product_name + ", category_id=" + category_id + ", description=" + description + ", price=" + price + ", sale_price=" + sale_price + ", enable=" + enable + "+ , productImg_path=" + productImg_path + "}";
    }

    
}
