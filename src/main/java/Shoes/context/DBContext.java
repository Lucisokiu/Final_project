package Shoes.context;


import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DBContext {
    
    /*USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE AND MULTILPE SQL SERVER INSTANCE(s)*/
    /*DO NOT EDIT THE BELOW METHOD, YOU MUST USE ONLY THIS ONE FOR YOUR DATABASE CONNECTION*/
     public Connection getConnection()throws Exception {
        String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName+"?reconnect=true";
        if(instance == null || instance.trim().isEmpty())
            connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName+"?reconnect=true";
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(connectionURL, userID, password);
    }
//      public String getImagePath() throws Exception {
//        return "image/";
//    }
  
     //    MySQL - Local Database
    private final String hostName = "us-cdbr-east-06.cleardb.net";
    private final String dbName = "heroku_4888eee88ccd47d";
//    private final String portNumber = "3306";
    private final String instance="";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
    private final String userID = "b13dcedb4f3c6e";
    private final String password = "ebf2823f";
    
    public static void main(String[] args) {
         try {
             System.out.println("Connection ID: " + new DBContext().getConnection());
         } catch (Exception ex) {
             Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
         }
    }
}
 
