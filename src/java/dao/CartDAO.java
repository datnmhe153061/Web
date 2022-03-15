/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.BaseDAO;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;

/**
 *
 * @author Laptop88
 */
public class CartDAO extends BaseDAO<Cart>{
    public void insertCart(Cart cart, int accountid) {
        try {
            String sql = "INSERT [dbo].[Cart] \n"
                    + "([Product_Id], [Product_quantity], [Product_name], \n"
                    + "[Product_price], [Account_id], [Total_price]) \n"
                    + "VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, cart.getProduct().getId());
            statement.setInt(2, cart.getProduct().getQuantity());
            statement.setString(3, cart.getProduct().getName());
            statement.setInt(4, cart.getProduct().getPromotionprice());
            statement.setInt(5, accountid);
            statement.setInt(6, cart.getProduct().getQuantity()*cart.getProduct().getPromotionprice());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void updateCart(int quantity, int totalprice, int productid) {
        try {
            String sql = "UPDATE Cart\n"
                    + "SET \n"
                    + "[Product_quantity] = ? ,\n"
                    + "[Total_price] = ?\n"
                    + "WHERE [Product_Id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, quantity);
            statement.setInt(2, totalprice);
            statement.setInt(3, productid);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
