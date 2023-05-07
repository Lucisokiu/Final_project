/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shoes.dao;

import Shoes.context.DBContext;
import Shoes.entity.Account;
import Shoes.entity.Category;
import Shoes.entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Builder.ProductBuilder;

/**
 *
 * @author ADMIN
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Product FindByAcmodel(String acmodel) {
        List<Product> listP1 = new ArrayList<>();
        String query = "SELECT * FROM product\n" +"where ac_model = ? and enable = 1 ";
        Product product = null;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, acmodel);
            rs = ps.executeQuery();
            while (rs.next()) {
                product = new Product(
                        rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("category_id"),
                        rs.getString("description"),
                        rs.getDouble("price"),
                        rs.getDouble("sale_price"),
                        rs.getInt("enable"),
                        rs.getString("productImg_path"),
                        rs.getString("ac_model")
                );
            }

        } catch (Exception e) {
            System.out.println("Failed 1: " + e);
        }
        return product;
    }

    public List<Product> getAllProducts(){
        List<Product> list = new ArrayList<>();
        String query = "select *\n" +
                        "FROM product \n" +
                        "WHERE product.enable = 1";  

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while(rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
            System.out.println("Failed Product: " + e);
        }
        return list;
    }

    public List<Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String query = "SELECT * FROM category";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while(rs.next()){
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
            System.out.print("Get category failed: " + e);
            
        }

        return list;
    }

    public List<Product> getProductByCate1(String category_id)
    {
        List<Product> listP1 = new ArrayList<>();
//        String query = "SELECT * FROM product\n" +
//                "where category_id = ? and enable=?";

        String query = "SELECT * FROM product\n" +
                "where category_id = ? and enable = 1 ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, category_id);
            rs = ps.executeQuery();

            while(rs.next()){
                listP1.add(new Product(
                rs.getInt(1),
                rs.getString(2),
                rs.getInt(3),
                rs.getString(4),
                rs.getDouble(5),
                rs.getDouble(6),
                rs.getInt(7),
                rs.getString(8)));
            }
        } catch (Exception e) {
            System.out.println("Failed 1: " + e);
        }

        return listP1;
    }

    public List<Product> getProductByCate2(String category_id){
        List<Product> listP2 = new ArrayList<>();


        String query = "select *\n" +
                        "FROM product\n" +
                        "where category_id = ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, category_id);
            rs = ps.executeQuery();

            while(rs.next()){
                listP2.add(new Product(rs.getInt(1),
                rs.getString(2),
                rs.getInt(3),
                rs.getString(4),
                rs.getDouble(5),
                rs.getDouble(6),
                rs.getInt(7),
                rs.getString(8)));
            }
        } catch (Exception e) {
            System.out.println("Failed 2: " + e);
        }

        return listP2;
    }

    public List<Product> getProductByCate3(String category_id){
        List<Product> listP3 = new ArrayList<>();
//        String query = "SELECT * FROM product\n" +
//                "where category_id = ? and enable= 1";


        String query = "SELECT * FROM product\n" +
                "where category_id = ? and enable= 1";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, category_id);
            rs = ps.executeQuery();

            while(rs.next()){
                listP3.add(new Product(rs.getInt(1),
                rs.getString(2),
                rs.getInt(3),
                rs.getString(4),
                rs.getDouble(5),
                rs.getDouble(6),
                rs.getInt(7),
                rs.getString(8)));
        }
        } catch (Exception e) {
            System.out.println("Failed 3: " + e);
        }
        return listP3;
    }
    
    public List<Account> getAllUser(){
        List<Account> list = new ArrayList<>();
        String query = "select * from account";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Account login(String user, String pass){
        String query = "select * from account\n"
                + "where userName = ?\n"
                + "and password = ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
        } catch (Exception e) {
        }
        return null;
    }
    

    public Product getProductByID(String id){


        String query = "select *\n" +
                        "FROM product\n" +
                        "where product_id = ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();

            while(rs.next()){
                return new Product(rs.getInt(1),
                rs.getString(2),
                rs.getInt(3),
                rs.getString(4),
                rs.getDouble(5),
                rs.getDouble(6),
                rs.getInt(7),
                rs.getString(8));
            }
        } catch (Exception e) {
            System.out.println("Failed 2: " + e);
        }

        return null;
    }
    

    public  void signup(String user, String pass, String fullname, String email, String phone, String address){
        String query = "insert into account(userName, password, fullName, email, phone, address,isAdmin,enable)\n"
                + "values(null,?,?,?, ?, ?, ?,0,1)";
        fullname = "null";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, fullname);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setString(6, address);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public Account checkAccountExistbyUserId(int account_id){
        String query = "select * from account\n"
                + "where account_id = ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, account_id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public  void UpdateUser(int account_id, String username, String pass, String fullname, String email, String phone, String address){
        String query = "UPDATE user\n" +
                "set user_name =?, password = ?, fullname = ?,\n" +
                "email = ?, phone = ?, address = ?\n" +
                "where user_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, pass);
            ps.setString(3, fullname);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setString(6, address);
            ps.setInt(7, account_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public Account checkAccountExistbyEmail(String email){
        String query = "select * from account\n"
                + "where email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
        } catch (Exception e) {
            System.out.println("Failed check email: " + e);
        }
        return null;
    }
    
    public  void DeleteProduct(int product_id){
        String query = "update product\n" +
                        "set enable = 0\n" +
                        "where product_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, product_id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Delete product was failed: " + e);
        }
    }
   
    public  List<ProductBuilder> getCart(int account_id){
        List<ProductBuilder> listcart = new ArrayList<>();

        String query = "SELECT p.product_id,p.product_name,p.category_id,p.description,p.price,p.sale_price,p.enable,p.productImg_path, c.quantity        \n" +
                        "FROM cart c \n" +
                        "JOIN product p ON c.product_id = p.product_id \n" + 
                        "WHERE c.account_id = ?";
        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, account_id);
            ps.executeQuery();
            while(rs.next()){
                ProductBuilder productBuilder = new ProductBuilder.Builder()
                .setProductId(rs.getInt(1))
                .setProductName(rs.getString(2))
                .setCategoryId(rs.getInt(3))
                .setDescription(rs.getString(4))
                .setPrice(rs.getDouble(5))
                .setSalePrice(rs.getDouble(6))
                .setEnable(rs.getInt(7))
                .setProductImgPath(rs.getString(8))
                .setQuantity(rs.getInt(9))
                .build();

                listcart.add(productBuilder);

                // listcart.add(new ProductBuilder(rs.getInt(1),
                // rs.getString(2),
                // rs.getInt(3),
                // rs.getString(4),
                // rs.getDouble(5),
                // rs.getDouble(6),
                // rs.getInt(7),
                // rs.getString(8),
                // rs.getInt(9)));
            }

        } catch (Exception e) {
            System.out.println("Get cart was failed: " + e);
        }
        return listcart;

    }

    public  void addCart(int account_id, int product_id,int quantity){

        String query = "insert into cart(product_id, quantity, account_id, ordered)\n"
                + "values(?,?,?,0)";
        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, product_id);
            ps.setInt(2, quantity);
            ps.setInt(3, account_id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Add cart was failed: " + e);
        }
        
    }
    
    public  void deleteCart(int account_id, int product_id,int quantity){

        String query = "DELETE FROM cart WHERE product_id = ?";

        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, product_id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Delete cart was failed: " + e);
        }
    }

    public  void changeCart(int account_id, int product_id,int quantity){

        String query = "update cart\n" +
                        "set quantity  = ?\n" +
                        "where product_id = ? AND account_id =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setInt(2, product_id);
            ps.setInt(3, account_id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Delete product was failed: " + e);
        }   

    }



    
    public static void main(String[] args) {
        // DAO dao = new DAO();

        // List<Product> list = dao.getAllProducts();
        
        // Factory.Category nike = CategoryFactory.getCategory(CategoryType.NIKE);

        // List<Product> listP1 = dao.getProductByCate1(String.valueOf(nike.getCategoryID()));
        
        // Factory.Category adidas = CategoryFactory.getCategory(CategoryType.ADIDAS);

        // List<Product> listP2 = dao.getProductByCate2(String.valueOf(adidas.getCategoryID()));
        
        // Factory.Category converse = CategoryFactory.getCategory(CategoryType.CONVERSE);

        // List<Product> listP3 = dao.getProductByCate3(String.valueOf(converse.getCategoryID()));
        
        // List<Category> listC = dao.getAllCategory();

        // for (Category o : listC) {
        //     System.out.println(o);
        // }

    }
}
