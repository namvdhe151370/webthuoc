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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author hellb
 */
public class OrderDAO extends BaseDAO<Order> {

    public int createReturnId(Order order) {
        try {
            String sql = "INSERT INTO Orders\n"
                    + "           ([account_id]\n"
                    + "           ,[totalPrice]\n"
                    + "           ,[note]\n"
                    + "           ,[shipping_id]\n"
                    + "           ,[Status])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,1)";
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, order.getAccountId());
            ps.setDouble(2, order.getTotalPrice());
            ps.setString(3, order.getNote());
            ps.setInt(4, order.getShippingId());

            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(InforShippingDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<Order> getListpOrder() {
        List<Order> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Orders";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order order = new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7));

                list.add(order);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Order getOrderById(int orderID) {
        List<Order> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Orders WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, orderID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order order = new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7));
                return order;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void editStatus(int id, int statusOrder){
        try {
            String sql = "UPDATE Orders\n"
                    + "SET [Status] = ?\n"
                    + "WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, statusOrder);
            statement.setInt(2, id);
            statement.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        OrderDAO o = new OrderDAO();
        o.editStatus(16,2);
    }

}
