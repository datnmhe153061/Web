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
import model.Cart;

/**
 *
 * @author Laptop88
 */
public class CartDAO extends BaseDAO<Cart> {

    public void insertCart(Cart cart) {
        try {
            String sql = "INSERT [dbo].[Cart] \n"
                    + "([Product_Id], [Quantity], [Account_id], \n"
                    + "[Total_price]) \n"
                    + "VALUES (?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, cart.getProduct().getId());
            statement.setInt(2, cart.getQuantity());
            statement.setInt(3, cart.getAccount().getId());
            statement.setInt(4, cart.getQuantity() * cart.getProduct().getPromotionprice());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateCart(Cart cart) {
        try {
            String sql = "UPDATE [Cart]\n"
                    + "SET \n"
                    + "[Quantity] = ? ,\n"
                    + "[Total_price] = ?\n"
                    + "WHERE [Id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, cart.getQuantity());
            statement.setInt(2, cart.getQuantity() * cart.getProduct().getPromotionprice());
            statement.setInt(3, cart.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteCart(int id) {
        try {
            String sql = "DELETE FROM [dbo].[Cart]\n"
                    + "      WHERE Id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void deleteCartByAid(int account_id) {
        try {
            String sql = "DELETE FROM [dbo].[Cart]\n"
                    + "      WHERE Account_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, account_id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<Cart> getallCart() {
            ArrayList<Cart> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Cart]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Cart c = Cart.builder().build();
                c.setId(rs.getInt("Id"));
                c.setProduct(new ProductDAO().getProductByProductId(rs.getInt("Product_Id")));
                c.setAccount(new AccountDAO().getAccountById(rs.getInt("Account_id")));
                c.setQuantity(rs.getInt("Quantity"));
                c.setTotalprice(rs.getInt("Total_price"));
                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public Cart getCartByAidandPid( int accountid, int productid) {
        try {
            String sql = "SELECT * FROM [Cart] WHERE Account_id = ? AND Product_Id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, accountid);
            statement.setInt(2, productid);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Cart c = Cart.builder().build();
                c.setId(rs.getInt("Id"));
                c.setProduct(new ProductDAO().getProductByProductId(rs.getInt("Product_Id")));
                c.setAccount(new AccountDAO().getAccountById(rs.getInt("Account_id")));
                c.setQuantity(rs.getInt("Quantity"));
                c.setTotalprice(rs.getInt("Total_price"));
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
     public ArrayList<Cart> getCartByAccountId( int accountid) {
            ArrayList<Cart> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Cart] WHERE Account_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, accountid);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Cart c = Cart.builder().build();
                c.setId(rs.getInt("Id"));
                c.setProduct(new ProductDAO().getProductByProductId(rs.getInt("Product_Id")));
                c.setAccount(new AccountDAO().getAccountById(rs.getInt("Account_id")));
                c.setQuantity(rs.getInt("Quantity"));
                c.setTotalprice(rs.getInt("Total_price"));
                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
     public void updateQuantityCart( int cartid, int total ,int quantity) {
        try {
            String sql = "UPDATE [Cart]\n"
                    + "SET \n"
                    + "[Quantity] = ? ,\n"
                    + "[Total_price] = ? \n"
                    + "WHERE [Id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, quantity);
            statement.setInt(2, total);
            statement.setInt(3, cartid);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
     public int countCart( int accountid) {
        try {
            String sql = "SELECT COUNT(*) FROM [Cart] WHERE Account_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, accountid);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
     
}
