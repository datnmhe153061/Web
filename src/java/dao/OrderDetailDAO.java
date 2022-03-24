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
import model.OrderDetail;

/**
 *
 * @author Laptop88
 */
public class OrderDetailDAO extends BaseDAO<OrderDetail> {

    public void insertOrderDetail(OrderDetail o) {
        try {
            String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                    + "           ([Order_id]\n"
                    + "           ,[Product_id]\n"
                    + "           ,[Quantity])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, o.getOrder().getId());
            statement.setInt(2, o.getProduct().getId());
            statement.setInt(3, o.getQuantity());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteOrderDetailByOrderId(int orderid) {
        try {
            String sql = "DELETE FROM [dbo].[OrderDetail]\n"
                    + "      WHERE Order_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, orderid);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void deleteOrderDetailByOrderIdAndPid(int orderid , int productid) {
        try {
            String sql = "DELETE FROM [dbo].[OrderDetail]\n"
                    + "      WHERE Order_id = ? AND Product_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, orderid);
            statement.setInt(2, productid);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void updateQuantityOrderDetail( int orderid, int productid ,int quantity) {
        try {
            String sql = "UPDATE [OrderDetail]\n"
                    + "SET \n"
                    + "[Quantity] = ? \n"
                    + "WHERE [Order_id] = ? AND [Product_id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, quantity);
            statement.setInt(2, orderid);
            statement.setInt(3, productid);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<OrderDetail> getAllOrderDetail() {
        ArrayList<OrderDetail> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM OrderDetail";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                OrderDetail p = OrderDetail.builder().build();
                p.setId(rs.getInt("Id"));
                p.setOrder(new OrderDAO().getOrderById(rs.getInt("Order_id")));
                p.setProduct(new ProductDAO().getProductByProductId(rs.getInt("Product_id")));
                p.setQuantity(rs.getInt("Quantity"));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<OrderDetail> getOrderDetailByOrderId(int orderid) {
        ArrayList<OrderDetail> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM OrderDetail WHERE Order_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, orderid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                OrderDetail p = OrderDetail.builder().build();
                p.setId(rs.getInt("Id"));
                p.setOrder(new OrderDAO().getOrderById(rs.getInt("Order_id")));
                p.setProduct(new ProductDAO().getProductByProductId(rs.getInt("Product_id")));
                p.setQuantity(rs.getInt("Quantity"));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
