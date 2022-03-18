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
                p.setCategory(new CategoryDAO().getCategoryById(rs.getInt("Listcategory_id")));
                p.setBrand(rs.getString("Brand"));
                p.setImage(rs.getString("Image"));
                p.setRate(rs.getInt("Rate"));
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
            String sql = "SELECT * FROM Product WHERE Listcategory_id = ?";
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
                p.setCategory(new CategoryDAO().getCategoryById(rs.getInt("Listcategory_id")));
                p.setBrand(rs.getString("Brand"));
                p.setImage(rs.getString("Image"));
                p.setRate(rs.getInt("Rate"));
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
                p.setCategory(new CategoryDAO().getCategoryById(rs.getInt("Listcategory_id")));
                p.setBrand(rs.getString("Brand"));
                p.setImage(rs.getString("Image"));
                p.setRate(rs.getInt("Rate"));
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
                p.setCategory(new CategoryDAO().getCategoryById(rs.getInt("Listcategory_id")));
                p.setBrand(rs.getString("Brand"));
                p.setImage(rs.getString("Image"));
                p.setRate(rs.getInt("Rate"));
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
            String sql = "INSERT INTO [dbo].[Product]\n"
                    + "           ([Name]\n"
                    + "           ,[Price]\n"
                    + "           ,[Promotionalprice]\n"
                    + "           ,[Description]\n"
                    + "           ,[Quantity]\n"
                    + "           ,[Listcategory_id]\n"
                    + "           ,[Brand]\n"
                    + "           ,[Image]\n"
                    + "           ,[Rate])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, product.getName());
            statement.setInt(2, product.getPrice());
            statement.setInt(3, product.getPromotionprice());
            statement.setString(4, product.getDescription());
            statement.setInt(5, product.getQuantity());
            statement.setInt(6, product.getCategory().getId());
            statement.setString(7, product.getBrand());
            statement.setString(8, product.getImage());
            statement.setInt(9, product.getRate());
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
                    + "[Listcategory_id] = ?,\n"
                    + "[Brand] = ?,\n"
                    + "[Rate] = ?,\n"
                    + "[Quantity] = ?  \n"
                    + "WHERE [Id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, product.getName());
            statement.setString(2, product.getImage());
            statement.setString(3, product.getDescription());
            statement.setInt(4, product.getPrice());
            statement.setInt(5, product.getPromotionprice());
            statement.setInt(6, product.getCategory().getId());
            statement.setString(7, product.getBrand());
            statement.setInt(8, product.getRate());
            statement.setInt(9, product.getQuantity());
            statement.setInt(10, product.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateQuantityProduct(int productid, int quantity) {
        try {
            String sql = "UPDATE Product\n"
                    + "SET [Quantity] = ?\n"
                    + "WHERE [Id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, quantity);
            statement.setInt(2, productid);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
