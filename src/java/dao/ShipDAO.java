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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Ship;

/**
 *
 * @author Laptop88
 */
public class ShipDAO extends BaseDAO<Ship> {

    public Ship getShipById(int id) {

        try {
            String sql = "SELECT * FROM Ship WHERE Id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Ship s = Ship.builder().build();
                s.setId(rs.getInt("Id"));
                s.setName(rs.getString("Name"));
                s.setPhone(rs.getString("Phone"));
                s.setAddress(rs.getString("Address"));
                s.setNote(rs.getString("Note"));
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShipDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void InsertShip(Ship s) {
        try {
            String sql = "INSERT INTO [dbo].[Ship]\n"
                    + "           ([Name]\n"
                    + "           ,[Phone]\n"
                    + "           ,[Address]\n"
                    + "           ,[Note])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, s.getName());
            statement.setString(2, s.getPhone());
            statement.setString(3, s.getAddress());
            statement.setString(4, s.getNote());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ShipDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Ship getLastShipId() {
        try {
            String sql = "SELECT TOP 1 Id FROM Ship\n"
                    + "ORDER BY Id DESC";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Ship s = Ship.builder().build();
                s.setId(rs.getInt("Id"));
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShipDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
