/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CategoryDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;

/**
 *
 * @author Laptop88
 */
public class FilterCategoryController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        int categoryid = Integer.parseInt(request.getParameter("categoryId"));
        ArrayList<Category> listcategory = new CategoryDAO().getAll();
        ArrayList<Product> listproduct = new ProductDAO().getProductByCategoryId(categoryid);
        String indexPage = request.getParameter("page");
        if(indexPage == null){
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        
        int indax = index*8;
        if(index*8 > listproduct.size()){
            indax = listproduct.size();
        }
        for (Product p : listproduct) {
            if(p.getCategory().getId() == 1){
                
            }
        }
        for (int i = 0; i < 6; i++) {
            ArrayList<Product> listsize = new ProductDAO().getProductByCategoryId(i+1);
            listcategory.get(i).setSize(listsize.size());
        }
        request.setAttribute("listproduct", listproduct.subList((index-1)*8, indax));
        request.setAttribute("newproduct", listproduct);
        request.setAttribute("index", index);
        request.setAttribute("listcategory", listcategory);
        request.setAttribute("cid", categoryid);
        request.getSession().setAttribute("UrlHistory", "filter-category?categoryId="+categoryid);
        request.getRequestDispatcher("listofoneproduct.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
