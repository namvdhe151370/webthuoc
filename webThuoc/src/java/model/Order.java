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
public class Order {
    private int id;
    private int accountId;
    private double totalPrice;
    private String note;
    private String createdate;
    private int shippingId;

    public Order() {
    }

    public Order(int id, int accountId, double totalPrice, String note, String createdate, int shippingId) {
        this.id = id;
        this.accountId = accountId;
        this.totalPrice = totalPrice;
        this.note = note;
        this.createdate = createdate;
        this.shippingId = shippingId;
    }

    public Order(int accountId, double totalPrice, String note, String createdate, int shippingId) {
        this.accountId = accountId;
        this.totalPrice = totalPrice;
        this.note = note;
        this.createdate = createdate;
        this.shippingId = shippingId;
    }

    public Order(int accountId, double totalPrice, String note, int shippingId) {
        this.accountId = accountId;
        this.totalPrice = totalPrice;
        this.note = note;
        this.shippingId = shippingId;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public int getShippingId() {
        return shippingId;
    }

    public void setShippingId(int shippingId) {
        this.shippingId = shippingId;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", accountId=" + accountId + ", totalPrice=" + totalPrice + ", note=" + note + ", createdate=" + createdate + ", shippingId=" + shippingId + '}';
    }
    
}
