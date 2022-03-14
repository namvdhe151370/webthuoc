/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author hellb
 */
public class ProductDAO extends BaseDAO<Product> {

    public List<Product> getListProduct() {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM product";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product Product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
                list.add(Product);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getlistProductByCid(int categoryid) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Product WHERE C_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, categoryid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product Product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
                list.add(Product);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> search(String productname) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Product WHERE Pname like ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + productname + "%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product Product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
                list.add(Product);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public Product getproductById(int productId) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Product WHERE Pid = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1,productId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product Product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
                return Product;
            }
        } catch (Exception e) {
        }
        return null;
    }


    public static void main(String[] args) {
        ProductDAO c = new ProductDAO();
        System.out.println(c.getproductById(1));
    }

}
