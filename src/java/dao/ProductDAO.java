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
import model.Product;

/**
 *
 * @author Laptop88
 */
public class ProductDAO extends BaseDAO<Product>{

    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Product";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Product p =  Product.builder().build();
                p.setId(rs.getInt("Id"));
                p.setName(rs.getString("Name"));
                p.setPrice(rs.getInt("Price"));
                p.setPromotionprice(rs.getInt("Promotionalprice"));
                p.setDescription(rs.getString("Description"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setListproduct_id(rs.getInt("Listproduct_id"));
                p.setBrand(rs.getString("Brand"));
                p.setImage(rs.getString("Image"));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<Product> getProductByCategoryId(int categoryId) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Product WHERE Listproduct_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, categoryId);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Product p =  Product.builder().build();
                p.setId(rs.getInt("Id"));
                p.setName(rs.getString("Name"));
                p.setPrice(rs.getInt("Price"));
                p.setPromotionprice(rs.getInt("Promotionalprice"));
                p.setDescription(rs.getString("Description"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setListproduct_id(rs.getInt("Listproduct_id"));
                p.setBrand(rs.getString("Brand"));
                p.setImage(rs.getString("Image"));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int getTotalProduct() {
        try {
            String sql = "SELECT COUNT(*) FROM Product";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public ArrayList<Product> searchProductByName(String textSearch) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Product WHERE [Name] LIKE ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%"+textSearch+"%");
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Product p =  Product.builder().build();
                p.setId(rs.getInt("Id"));
                p.setName(rs.getString("Name"));
                p.setPrice(rs.getInt("Price"));
                p.setPromotionprice(rs.getInt("Promotionalprice"));
                p.setDescription(rs.getString("Description"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setListproduct_id(rs.getInt("Listproduct_id"));
                p.setBrand(rs.getString("Brand"));
                p.setImage(rs.getString("Image"));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    
    
}
