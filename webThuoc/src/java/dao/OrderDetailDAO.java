/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.OrderDetail;
import model.Product;

/**
 *
 * @author hellb
 */
public class OrderDetailDAO extends BaseDAO<OrderDetail> {

    public void saveCart(int orderId, Map<Integer, Cart> carts) {
        try {
            String sql = "INSERT INTO OrderDetail\n"
                    + "           ([order_id]\n"
                    + "           ,[productName]\n"
                    + "           ,[productImage]\n"
                    + "           ,[productPrice]\n"
                    + "           ,[quantity]\n"
                    + "           ,[productId])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                ps.setString(2, cart.getProduct().getName());
                ps.setString(3, cart.getProduct().getImage());
                ps.setDouble(4, cart.getProduct().getPrice());
                ps.setDouble(5, cart.getQuantity());
                ps.setInt(6, cart.getProduct().getId());
                ps.executeUpdate();
            }

        } catch (SQLException ex) {
            Logger.getLogger(InforShippingDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<OrderDetail> getListpOrderDetail() {
        List<OrderDetail> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM OrderDetail";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                OrderDetail OrDetail = new OrderDetail(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4), 
                        rs.getString(5),
                        rs.getInt(6), 
                        rs.getInt(7));
                list.add(OrDetail);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<OrderDetail> getOrderDetailById(int orderID) {
        List<OrderDetail> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM OrderDetail WHERE order_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, orderID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                OrderDetail orDetail = new OrderDetail(
                        rs.getInt(1), 
                        rs.getInt(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getInt(6), 
                        rs.getInt(7));
                list.add(orDetail);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static void main(String[] args) {
        OrderDetailDAO c = new OrderDetailDAO();
        
        System.out.println(c.getOrderDetailById(16));
    }

    public void deleteOrderDetail(String oid) {
        try {
            String sql = "DELETE FROM OrderDetail\n" +
"                    WHERE order_id =  ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, oid);
            statement.executeUpdate();
        } catch (Exception e) {
        }
    }

    
}
