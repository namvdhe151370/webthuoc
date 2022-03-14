/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author hellb
 */
public class Account {
    private int id;
    private String user;
    private String pass;
    private String displayName;
    private String Address;
    private String email;
    private String Phone;
    private String avatar;

    public Account() {
    }

    public Account(int id, String user, String pass, String displayName, String Address, String email, String Phone, String avatar) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.displayName = displayName;
        this.Address = Address;
        this.email = email;
        this.Phone = Phone;
        this.avatar = avatar;
    }

    public Account(String user, String pass, String displayName, String Address, String email, String Phone, String avatar) {
        this.user = user;
        this.pass = pass;
        this.displayName = displayName;
        this.Address = Address;
        this.email = email;
        this.Phone = Phone;
        this.avatar = avatar;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", user=" + user + ", pass=" + pass + ", displayName=" + displayName + ", Address=" + Address + ", email=" + email + ", Phone=" + Phone + ", avatar=" + avatar + '}';
    }

    
}
