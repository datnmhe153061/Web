/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import dao.CartDAO;
import dao.OrderDAO;
import dao.OrderDetailDAO;
import dao.ProductDAO;
import dao.ShipDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.OrderDetail;
import model.Cart;
import model.Order;
import model.Ship;

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
            Account account = (Account) session.getAttribute("account");
            CartDAO cd = new CartDAO();
            ArrayList<Cart> list = cd.getCartByAccountId(account.getId());
            int totalMoney = 0;
            for (Cart c : list) {
                totalMoney += c.getQuantity()*c.getProduct().getPromotionprice();
            }
            request.setAttribute("listcart", list);
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

        OrderDAO od = new OrderDAO();
        ShipDAO sd = new ShipDAO();
        ProductDAO pd = new ProductDAO();
        OrderDetailDAO bd = new OrderDetailDAO();
        Account account = (Account) session.getAttribute("account");
        Ship s = Ship.builder().name(name).phone(phone).address(address).note(note).build();
        sd.InsertShip(s);
        Order o = Order.builder().account(account).ship(sd.getLastShipId()).build();
        od.InsertOrder(o);
        CartDAO cd = new CartDAO();
         ArrayList<Cart> list = cd.getCartByAccountId(account.getId());

        for (Cart cart: list) {
            OrderDetail buy = OrderDetail.builder().order(od.getLastOrderId()).product(cart.getProduct()).quantity(cart.getQuantity()).build();
            bd.insertOrderDetail(buy);
            pd.updateQuantityProduct(cart.getProduct().getId(), pd.getProductByProductId(cart.getProduct().getId()).getQuantity() - cart.getQuantity());
        }
        cd.deleteCart(account.getId());
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
