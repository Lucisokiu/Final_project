/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shoes.entity;

/**
 *
 * @author ADMIN
 */

public class Account {
    private int account_id;
    private String userName;
    private String password;
    private String fullName;
    private String email;
    private String phone;
    private String address;
    private int isAdmin;
    private int enable;
    

    public Account(int account_id, String userName, String password, String fullName, String email, String phone, String address, int isAdmin, int enable) {
        this.account_id = account_id;
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.isAdmin = isAdmin;
        this.enable = enable;
    }
    
    
    public int getAccountId() {
        return account_id;
    }

    public void setAccountId(int accountId) {
        this.account_id = accountId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String pasword) {
        this.password = pasword;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public int getEnable() {
        return enable;
    }

    public void setEnable(int enable) {
        this.enable = enable;
    }

    @Override
    public String toString() {
        return "Account{" + "account_id=" + account_id + ", userName=" + userName + ", password=" + password + ", fullName=" + fullName + ", email=" + email + ", phone=" + phone + ", address=" + address + ", isAdmin=" + isAdmin + ", enable=" + enable + '}';
    }
    
}
