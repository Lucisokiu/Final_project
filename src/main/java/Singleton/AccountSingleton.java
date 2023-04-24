/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Singleton;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Shoes.context.DBContext;
import Shoes.entity.Account;

/**
 *
 * @author nhut
 */
public final class AccountSingleton {
    private static AccountSingleton instance;
    
    public AccountSingleton(){
    }
    
    public static AccountSingleton getInstance(){
        if (instance == null){
            instance = new AccountSingleton();
        }
        return instance;
    }
    
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public Account checkAccountExist(String user){
        String query = "select * from account\n"
                + "where userName = ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
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
}
