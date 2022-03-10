package dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.List;
import model.Account;

public class AccountDAO extends BaseDAO<Account> {

    public Account login(String user, String pass) {
        String sql = "select * from Account \n"
                + "where AccUser = ? and AccPassword = ?";
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
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccExist(String user) {
        String sql = "select * from Account \n"
                + "where AccUser = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt(1));
                a.setUser(rs.getString(2));
                a.setPass(rs.getString(3));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void SignUp(String user, String pass) {
        String sql = "insert into Account\n"
                + "values(?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, pass);
            statement.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        AccountDAO c = new AccountDAO();
        System.out.println(c.login("admin", "admin").getUser());
    }
}
