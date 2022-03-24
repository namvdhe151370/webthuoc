/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.InforShipping;
import model.Order;

/**
 *
 * @author hellb
 */
public class InforShippingDAO extends BaseDAO<InforShipping> {

    public int createReturnId(InforShipping shipping) {
        try {
            String sql = "INSERT INTO InforShipping\n"
                    + "           ([name]\n"
                    + "           ,[phone]\n"
                    + "           ,[address]\n"
                    + "           ,[email])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, shipping.getName());
            ps.setString(2, shipping.getPhone());
            ps.setString(3, shipping.getAddress());
            ps.setString(4, shipping.getEmail());
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

    public InforShipping getInforById(int shippingId) {
        List<InforShipping> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM InforShipping WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, shippingId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                InforShipping inforShipping = new InforShipping(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));

                return inforShipping;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        InforShippingDAO i = new InforShippingDAO();
        System.out.println(i.getInforById(16));
    }
}
