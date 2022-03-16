package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.List;
import model.Account;

public class AccountDAO extends BaseDAO<Account> {

    public Account login(String user, String pass) {
        String sql = "select * from Account \n"
                + "where UserName = ? and Password = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, pass);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt(1));
                a.setUser(rs.getString(2));
                a.setPass(rs.getString(3));
                a.setDisplayName(rs.getString(4));
                a.setAddress(rs.getString(5));
                a.setEmail(rs.getString(6));
                a.setPhone(rs.getString(7));
                a.setAvatar(rs.getString(8));
                a.setRole(rs.getString(9));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccExist(String user) {
        String sql = "select * from Account \n"
                + "where UserName = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt(1));
                a.setUser(rs.getString(2));
                a.setPass(rs.getString(3));
                a.setDisplayName(rs.getString(4));
                a.setAddress(rs.getString(5));
                a.setEmail(rs.getString(6));
                a.setPhone(rs.getString(7));
                a.setAvatar(rs.getString(8));
                a.setRole(rs.getString(9));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void SignUp(String user, String pass, String displayname, String address, String email, String phone, String avatar) {
       String sql = "INSERT INTO Account\n"
                + "           ([UserName]\n"
                + "           ,[Password]\n"
                + "           ,[displayName]\n"
                + "           ,[address]\n"
                + "           ,[email]\n"
                + "           ,[phone]\n"
                + "           ,[avatar])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, pass);
            statement.setString(3, displayname);
            statement.setString(4, address);
            statement.setString(5, email);
            statement.setString(6, phone);
            statement.setString(7, avatar);
            
            statement.executeUpdate();
        } catch (Exception e) {
        } 
    }

    public static void main(String[] args) {
        AccountDAO c = new AccountDAO();
        System.out.println(c.login("admin", "admin"));
    }

    
}
