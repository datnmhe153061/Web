/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import dao.BuyHistoryDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.BuyHistory;
import model.Cart;

/**
 *
 * @author Laptop88
 */
public class CheckoutController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            Map<Integer, Cart> carts = (Map<Integer, Cart>) session.getAttribute("carts");
            if (carts == null) {
                carts = new LinkedHashMap<>();
            }
            int totalMoney = 0;
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productid = entry.getKey();
                Cart cart = entry.getValue();
                totalMoney += cart.getQuantity() * cart.getProduct().getPromotionprice();
            }
            request.setAttribute("totalMoney", totalMoney);
            request.getRequestDispatcher("checkout.jsp").forward(request, response);

        }
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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String note = request.getParameter("note");
        HttpSession session = request.getSession();
        
        BuyHistoryDAO bd = new BuyHistoryDAO();
        ProductDAO pd = new ProductDAO();
        Account account = (Account) session.getAttribute("account");
        Map<Integer, Cart> carts = (Map<Integer, Cart>) session.getAttribute("carts");
        for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Cart cart = entry.getValue();
                BuyHistory buy = BuyHistory.builder().productid(cart.getProduct().getId()).productname(cart.getProduct().getName())
                        .productprice(cart.getProduct().getPromotionprice()).quantity(cart.getQuantity())
                        .recipient(name).phone(phone).address(address).note(note).accountid(account.getId()).productimage(cart.getProduct().getImage()).build();
                bd.insertBuyHistory(buy);
                pd.updateQuantityProduct(cart.getProduct().getId(), pd.getProductByProductId(cart.getProduct().getId()).getQuantity()-cart.getQuantity());
            }
        session.removeAttribute("carts");
        response.sendRedirect("thank.jsp");
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
