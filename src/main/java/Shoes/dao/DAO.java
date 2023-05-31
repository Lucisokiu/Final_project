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
                list.add(new Product(
                        rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("category_id"),
                        rs.getString("description"),
                        rs.getDouble("price"),
                        rs.getDouble("sale_price"),
                        rs.getInt("enable"),
                        rs.getString("productImg_path"),
                        rs.getString("ac_model"),
                        rs.getInt("quantity")));
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
                        rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("category_id"),
                        rs.getString("description"),
                        rs.getDouble("price"),
                        rs.getDouble("sale_price"),
                        rs.getInt("enable"),
                        rs.getString("productImg_path"),
                        rs.getString("ac_model"),
                        rs.getInt("quantity")));

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
                listP2.add(new Product(
                        rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("category_id"),
                        rs.getString("description"),
                        rs.getDouble("price"),
                        rs.getDouble("sale_price"),
                        rs.getInt("enable"),
                        rs.getString("productImg_path"),
                        rs.getString("ac_model"),
                        rs.getInt("quantity")));

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
                listP3.add(new Product(
                        rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("category_id"),
                        rs.getString("description"),
                        rs.getDouble("price"),
                        rs.getDouble("sale_price"),
                        rs.getInt("enable"),
                        rs.getString("productImg_path"),
                        rs.getString("ac_model"),
                        rs.getInt("quantity")));

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
                        rs.getInt("account_id"),
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
                rs.getString(8),
                rs.getString(10),
                rs.getInt(9));

            }
        } catch (Exception e) {
            System.out.println("Failed 2: " + e);
        }
        return null;
    }
    

    public  void signup(String user, String pass, String fullname, String email, String phone, String address, String admin){
        String query = "";
        System.out.println(admin);
        if ("admin".equals(admin))
        {
        query = "insert into account(userName, password, fullName, email, phone, address,isAdmin,enable)\n"
                + "values(?,?,?, ?, ?, ?,1,1)";
        }
        else{
            query = "insert into account(userName, password, fullName, email, phone, address,isAdmin,enable)\n"
            + "values(?,?,?, ?, ?, ?,0,1)";
        }

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
            System.out.println("Failed signup: " + e);

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
        String query = "UPDATE account\n" +
                "set userName =?, password = ?, fullName = ?,\n" +
                "email = ?, phone = ?, address = ?\n" +
                "where account_id = ?";
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
            System.out.println("Failed UpdateUser: " + e);
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
    public List<ProductBuilder> getAllCart(){
        List<ProductBuilder> listCard = new ArrayList<>();

        String query = "SELECT p.product_id,p.product_name,p.category_id,p.description,p.price,c.ordered,c.ordered,p.productImg_path, c.quantity, c.account_id\n" +
                        "FROM cart c \n" +
                        "JOIN product p ON c.product_id = p.product_id";
        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                ProductBuilder productBuilder = new ProductBuilder.Builder(rs.getInt(1))
                .setProductName(rs.getString(2))
                .setCategory_id(rs.getInt(3))
                .setDescription(rs.getString(4))
                .setPrice(rs.getDouble(5))
                .setSalePrice(rs.getDouble(6))
                .setEnable(rs.getInt(7))
                .setProductImgPath(rs.getString(8))
                .setQuantity(rs.getInt(9))
                .setAccount_id(rs.getInt(10))
                .build();

                System.out.println(productBuilder.getAccount_id());

                

                listCard.add(productBuilder);


                // listCard.add(new ProductBuilder(rs.getInt(1),
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
        return listCard;

    }

    public  List<ProductBuilder> getCart(int account_id){
        List<ProductBuilder> listCard = new ArrayList<>();

        String query = "SELECT p.product_id,p.product_name,p.category_id,p.description,p.price,p.sale_price,p.enable,p.productImg_path, c.quantity        \n" +
                        "FROM cart c \n" +
                        "JOIN product p ON c.product_id = p.product_id \n" + 
                        "WHERE c.account_id = ? and ordered = 0";
        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, account_id);
            rs = ps.executeQuery();
            while(rs.next()){
                ProductBuilder productBuilder = new ProductBuilder.Builder(rs.getInt(1))
                .setProductName(rs.getString(2))
                .setCategory_id(rs.getInt(3))
                .setDescription(rs.getString(4))
                .setPrice(rs.getDouble(5))
                .setSalePrice(rs.getDouble(6))
                .setEnable(rs.getInt(7))
                .setProductImgPath(rs.getString(8))
                .setQuantity(rs.getInt(9))
                .build();

                System.out.println(productBuilder.getProduct_id());

                

                listCard.add(productBuilder);


                // listCard.add(new ProductBuilder(rs.getInt(1),
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
        return listCard;

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
    
    public  void deleteCart(int account_id, int product_id){

        String query = "DELETE FROM cart WHERE product_id = ? and account_id = ?";

        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, product_id);
            ps.setInt(2, account_id);
            ps.executeUpdate();
            System.out.println("Delete cart was sucess with id: " + product_id);

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



    public  void OderedCart(int account_id, int product_id){

        String query = "UPDATE cart SET ordered = 1 WHERE product_id = ? and account_id = ?";

        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, product_id);
            ps.setInt(2, account_id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Delete cart was failed: " + e);
        }
    }



    public  void changeQuantity(int product_id,int quantity){

        String query = "UPDATE product SET quantity = quantity - ? WHERE product_id = ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setInt(2, product_id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Delete product was failed: " + e);
        }   

    }


    public  void addProduct(String id, String image, String name, String price, String description, String category){
        String query = "insert into product(product_id, productImg_path, product_name, price, description,category_id,enable,quantity)\n"
                + "values(?, ?, ?, ?,?,?,1,100)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, image);
            ps.setString(3, name);
            ps.setString(4, price);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Add product was failed: " + e);

        }
    }
    public static void main(String[] args) {
        // DAO dao = new DAO();


        
        
        


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
