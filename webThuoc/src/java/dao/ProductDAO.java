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

    public int getTotalProduct() {
        try {
            String sql = "select COUNT(Pid) from Product";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
               return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
    
    public List<Product> getListProductPagg(int page, int PAZE_SIZE) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM \n"
                    + "(SELECT  p.*, ROW_NUMBER() OVER (ORDER BY pid ASC) AS ROWNUM\n"
                    + "FROM Product p)t\n"
                    + "WHERE ROWNUM >= (? - 1)*? + 1 AND ROWNUM <= ? * ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, page);
            statement.setInt(2, PAZE_SIZE);
            statement.setInt(3, page);
            statement.setInt(4, PAZE_SIZE);
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
            statement.setInt(1, productId);
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

    public void deleteProduct(String pid) {

        try {
            String sql = "DELETE FROM Product\n"
                    + "WHERE Pid = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, pid);
            statement.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void insertProduct(String name, String image, String price, String quantity, String description, String category) {

        try {
            String sql = "insert into Product (Pname, quantity, price, [description], images, C_id) \n"
                    + "values (?,?,?,?,?,?);";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setNString(1, name);
            statement.setString(2, quantity);
            statement.setDouble(3, Double.parseDouble(price));
            statement.setNString(4, description);
            statement.setString(5, image);
            statement.setString(6, category);
            statement.executeUpdate();
        } catch (Exception e) {
        }

    }
    
    
    public void editProduct(String name, String quantity, String price, String description, String image, String category, String pid) {

        try {
            String sql = "UPDATE Product\n"
                    + "   SET [Pname] = ?\n"
                    + "      ,[quantity] = ?\n"
                    + "      ,[price] = ?\n"
                    + "      ,[description] = ?\n"
                    + "      ,[images] = ?\n"
                    + "      ,[C_id] = ?\n"
                    + " WHERE Pid = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setNString(1, name);
            statement.setString(2, quantity);
            statement.setDouble(3, Double.parseDouble(price));
            statement.setNString(4, description);
            statement.setString(5, image);
            statement.setString(6, category);
            statement.setString(7, pid);
            statement.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public static void main(String[] args) {
        ProductDAO c = new ProductDAO();
        
        c.editProduct("a","1","1","a","a","1","49");
    }

}
