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
import model.Order;

/**
 *
 * @author Laptop88
 */
public class OrderDAO extends BaseDAO<Order> {

    public Order getOrderById(int id) {
        try {
            String sql = "SELECT * FROM [Order] WHERE Id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order o = Order.builder().build();
                o.setId(rs.getInt("Id"));
                o.setAccount(new AccountDAO().getAccountById(rs.getInt("Account_id")));
                o.setShip(new ShipDAO().getShipById(rs.getInt("Shipping_id")));
                o.setCreatedate(rs.getDate("date_create"));
                o.setStatus(rs.getBoolean("status"));
                return o;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Order> getOrderByAccountId(int accountid) {
        ArrayList<Order> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Order] WHERE Account_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, accountid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order o = Order.builder().build();
                o.setId(rs.getInt("Id"));
                o.setAccount(new AccountDAO().getAccountById(rs.getInt("Account_id")));
                o.setShip(new ShipDAO().getShipById(rs.getInt("Shipping_id")));
                o.setCreatedate(rs.getDate("date_create"));
                o.setStatus(rs.getBoolean("status"));
                list.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void InsertOrder(Order o) {
        try {
            String sql = "INSERT INTO [dbo].[Order]\n"
                    + "           ([Account_id]\n"
                    + "           ,[Shipping_id]\n"
                    + "           ,[date_create]\n"
                    + "           ,[status])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,GETDATE()\n"
                    + "           ,0)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, o.getAccount().getId());
            statement.setInt(2, o.getShip().getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ShipDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateOrder(int status, int id) {
        try {
            String sql = "UPDATE [dbo].[Order]\n"
                    + "   SET [status] = ?\n"
                    + " WHERE Id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, status);
            statement.setInt(2, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Order getLastOrderId() {
        try {
            String sql = "SELECT TOP 1 Id FROM [Order]\n"
                    + "ORDER BY Id DESC";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order o = Order.builder().build();
                o.setId(rs.getInt("Id"));
                return o;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Order> getAllOrder() {
        ArrayList<Order> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Order]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order o = Order.builder().build();
                o.setId(rs.getInt("Id"));
                o.setAccount(new AccountDAO().getAccountById(rs.getInt("Account_id")));
                o.setShip(new ShipDAO().getShipById(rs.getInt("Shipping_id")));
                o.setCreatedate(rs.getDate("date_create"));
                o.setStatus(rs.getBoolean("status"));
                list.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void deleteOrderById(int id) {
        try {
            String sql = "DELETE FROM [dbo].[Order]\n"
                    + "      WHERE Id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
