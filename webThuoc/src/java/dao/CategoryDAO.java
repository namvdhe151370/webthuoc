/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import model.Category;

/**
 *
 * @author hellb
 */
public class CategoryDAO extends BaseDAO<Category> {


    public List<Category> getListCategory(){
        List<Category> list = new ArrayList<>();
       
        try {
            String sql = "SELECT * FROM Category";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {                
                Category category = new Category(rs.getInt(1), rs.getString(2));
                list.add(category);
            }
        } catch (Exception e) {
        }
        return list;
    }
        public static void main(String[] args) {
        CategoryDAO c = new CategoryDAO();
        System.out.println(c.getListCategory());
    }
}
