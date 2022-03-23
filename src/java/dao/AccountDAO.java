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
            String sql = "SELECT * FROM [Account] WHERE Username = ? AND Password = ?";
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
                c.setEmail(rs.getString("Email"));
                c.setPhone(rs.getString("Phone"));
                c.setAddress(rs.getString("Address"));
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void SignUp(String username, String password, String displayname) {
        try {
            String sql = "INSERT INTO Account\n"
                    + "(Name, Username, Password, Admin, Seller) \n"
                    + "VALUES (?, ?, ?,0,0)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, displayname);
            statement.setString(2, username);
            statement.setString(3, password);
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
                a.setEmail(rs.getString("Email"));
                a.setPhone(rs.getString("Phone"));
                a.setAddress(rs.getString("Address"));
                list.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
     public Account getAccountById( int id) {
        try {
            String sql = "SELECT * FROM Account WHERE Id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = Account.builder().build();
                a.setId(rs.getInt("Id"));
                a.setName(rs.getString("Name"));
                a.setUsername(rs.getString("Username"));
                a.setPassword(rs.getString("Password"));
                a.setAdmin(rs.getBoolean("Admin"));
                a.setSeller(rs.getBoolean("Seller"));
                a.setEmail(rs.getString("Email"));
                a.setPhone(rs.getString("Phone"));
                a.setAddress(rs.getString("Address"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
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
                    + "SET\n"
                    + "[Admin] = ? ,\n"
                    + "[Seller] = ?\n"
                    + "WHERE [Id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setBoolean(1, account.isAdmin());
            statement.setBoolean(2, account.isSeller());
            statement.setInt(3, account.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void saveAccount1(Account account) {
        try {
            String sql = "UPDATE Account\n"
                    + "SET [Password] = ? ,\n"
                    + "[Admin] = ? ,\n"
                    + "[Seller] = ? ,\n"
                    + "[Email] = ? ,\n"
                    + "[Phone] = ? ,\n"
                    + "[Address] = ? \n"
                    + "WHERE [Id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, account.getPassword());
            statement.setBoolean(2, account.isAdmin());
            statement.setBoolean(3, account.isSeller());
            statement.setInt(4, account.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void saveAccount2(Account account) {
        try {
            String sql = "UPDATE Account\n"
                    + "SET [Name] = ?,\n"
                    + "[Password] = ? ,\n"
                    + "[Email] = ? ,\n"
                    + "[Phone] = ? ,\n"
                    + "[Address] = ? \n"
                    + "WHERE [Id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, account.getName());
            statement.setString(2, account.getPassword());
            statement.setString(3, account.getEmail());
            statement.setString(4, account.getPhone());
            statement.setString(5, account.getAddress());
            statement.setInt(6, account.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
