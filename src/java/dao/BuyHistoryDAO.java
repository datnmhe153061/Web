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
import model.BuyHistory;

/**
 *
 * @author Laptop88
 */
public class BuyHistoryDAO extends BaseDAO<BuyHistory> {

    public void insertBuyHistory(BuyHistory buy) {
        try {
            String sql = "INSERT [dbo].[HistoryBuy]\n"
                    + "           ([Product_id]\n"
                    + "           ,[Product_name]\n"
                    + "           ,[Quantity]\n"
                    + "           ,[Product_price]\n"
                    + "           ,[Account_id]\n"
                    + "           ,[buy_date]\n"
                    + "           ,[recipient]\n"
                    + "           ,[phone]\n"
                    + "           ,[address]\n"
                    + "           ,[note])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,GETDATE()\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, buy.getProductid());
            statement.setString(2, buy.getProductname());
            statement.setInt(3, buy.getQuantity());
            statement.setInt(4, buy.getProductprice());
            statement.setInt(5, buy.getAccountid());
            statement.setString(6, buy.getRecipient());
            statement.setString(7, buy.getPhone());
            statement.setString(8, buy.getAddress());
            statement.setString(9, buy.getNote());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BuyHistoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<BuyHistory> getAllHistory() {
        ArrayList<BuyHistory> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM HistoryBuy";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                BuyHistory p = BuyHistory.builder().build();
                p.setId(rs.getInt("Id"));
                p.setProductid(rs.getInt("Product_id"));
                p.setProductname(rs.getString("Product_name"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setProductprice(rs.getInt("Product_price"));
                p.setAccountid(rs.getInt("Account_id"));
                p.setDate(rs.getDate("buy_date"));
                p.setRecipient(rs.getString("recipient"));
                p.setPhone(rs.getString("phone"));
                p.setAddress(rs.getString("address"));
                p.setNote(rs.getString("note"));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
