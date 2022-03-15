/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.BaseDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author Laptop88
 */
public class AccountDAO extends BaseDAO<Account> {

    public Account login(String username, String password) {
        try {
            String sql = "SELECT * FROM Account WHERE Username = ? AND Password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account c = Account.builder().build();
                c.setId(rs.getInt("Id"));
                c.setName(rs.getString("Name"));
                c.setUsername(rs.getString("Username"));
                c.setPassword(rs.getString("Password"));
                c.setSeller(rs.getBoolean("Seller"));
                c.setAdmin(rs.getBoolean("Admin"));
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account checkAccountExist(String username) {
        try {
            String sql = "SELECT * FROM Account "
                    + "WHERE Username = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account c = Account.builder().build();
                c.setId(rs.getInt("Id"));
                c.setName(rs.getString("Name"));
                c.setUsername(rs.getString("Username"));
                c.setPassword(rs.getString("Password"));
                c.setSeller(rs.getBoolean("Seller"));
                c.setAdmin(rs.getBoolean("Admin"));
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void SignUp(String username, String password) {
        try {
            String sql = "INSERT INTO Account\n"
                    + "(Username, Password, Admin, Seller) \n"
                    + "VALUES (?, ?,0,0)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Account> getAllAccount() {
        ArrayList<Account> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Account";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = Account.builder().build();
                a.setId(rs.getInt("Id"));
                a.setName(rs.getString("Name"));
                a.setUsername(rs.getString("Username"));
                a.setPassword(rs.getString("Password"));
                a.setAdmin(rs.getBoolean("Admin"));
                a.setSeller(rs.getBoolean("Seller"));
                list.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void deleteAccount(int accountid) {
        try {
            String sql = "DELETE FROM Account WHERE Id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, accountid);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void saveAccount(Account account) {
        try {
            String sql = "UPDATE Account\n"
                    + "SET [Password] = ? ,\n"
                    + "[Admin] = ? ,\n"
                    + "[Seller] = ?\n"
                    + "WHERE [Id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, account.getPassword());
            statement.setBoolean(2, account.isAdmin());
            statement.setBoolean(3, account.isSeller());
            statement.setInt(4, account.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
