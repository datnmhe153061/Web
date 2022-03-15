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
public class ProductDAO extends BaseDAO<Product> {

    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Product";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = Product.builder().build();
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
            while (rs.next()) {
                Product p = Product.builder().build();
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
            while (rs.next()) {
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
            statement.setString(1, "%" + textSearch + "%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = Product.builder().build();
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

    public Product getProductByProductId(int productId) {
        try {
            String sql = "SELECT * FROM Product WHERE Id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, productId);
            ResultSet rs = statement.executeQuery();
            Product p = Product.builder().build();
            while (rs.next()) {
                p.setId(rs.getInt("Id"));
                p.setName(rs.getString("Name"));
                p.setPrice(rs.getInt("Price"));
                p.setPromotionprice(rs.getInt("Promotionalprice"));
                p.setDescription(rs.getString("Description"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setListproduct_id(rs.getInt("Listproduct_id"));
                p.setBrand(rs.getString("Brand"));
                p.setImage(rs.getString("Image"));
                return p;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void deleteProduct(int productId) {
        try {
            String sql = "DELETE FROM Product WHERE Id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, productId);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertProduct(Product product) {
        try {
            String sql = "INSERT [dbo].[Product] \n"
                    + "([Name], [Price], [Promotionalprice], \n"
                    + "[Description], [Quantity], [Listproduct_id], [Brand], [Image]) \n"
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, product.getName());
            statement.setInt(2, product.getPrice());
            statement.setInt(3, product.getPromotionprice());
            statement.setString(4, product.getDescription());
            statement.setInt(5, product.getQuantity());
            statement.setInt(6, product.getListproduct_id());
            statement.setString(7, product.getBrand());
            statement.setString(8, product.getImage());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editProduct(Product product) {
        try {
            String sql = "UPDATE Product\n"
                    + "SET [Name] = ? ,\n"
                    + "[Image] = ? ,\n"
                    + "[Description] = ?,\n"
                    + "[Price] = ?,\n"
                    + "[Promotionalprice] = ?,\n"
                    + "[Listproduct_id] = ?,\n"
                    + "[Brand] = ?,\n"
                    + "[Quantity] = ?  \n"
                    + "WHERE [Id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, product.getName());
            statement.setString(2, product.getImage());
            statement.setString(3, product.getDescription());
            statement.setInt(4, product.getPrice());
            statement.setInt(5, product.getPromotionprice());
            statement.setInt(6, product.getListproduct_id());
            statement.setString(7, product.getBrand());
            statement.setInt(8, product.getQuantity());
            statement.setInt(9, product.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
