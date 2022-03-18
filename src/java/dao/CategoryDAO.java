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
import model.Category;

/**
 *
 * @author Laptop88
 */
public class CategoryDAO extends BaseDAO<Category>{

    public ArrayList<Category> getAll() {
        ArrayList<Category> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM ListCategory";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Category c =  Category.builder().build();
                c.setId(rs.getInt("Id"));
                c.setName(rs.getString("Name"));
                c.setStatus(rs.getBoolean("Status"));
                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public Category getCategoryById( int categoryid) {
        try {
            String sql = "SELECT * FROM ListCategory WHERE Id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, categoryid);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Category c =  Category.builder().build();
                c.setId(rs.getInt("Id"));
                c.setName(rs.getString("Name"));
                c.setStatus(rs.getBoolean("Status"));
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
