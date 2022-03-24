/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.InforShippingDAO;
import dao.OrderDAO;
import dao.OrderDetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.InforShipping;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author hellb
 */
public class EditOrderSevlet extends HttpServlet {

    

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        int orderID = Integer.parseInt(request.getParameter("oid"));
        int shippingId = Integer.parseInt(request.getParameter("shid"));
        InforShippingDAO isdao = new InforShippingDAO();
        InforShipping inforship = isdao.getInforById(shippingId);
        OrderDAO odao = new OrderDAO();
        Order order = odao.getOrderById(orderID);
        OrderDetailDAO orddao = new OrderDetailDAO();
        List<OrderDetail> listOD = orddao.getOrderDetailById(orderID);
        request.setAttribute("order",order);
        request.setAttribute("listOD",listOD);
        request.setAttribute("inforship", inforship);
        request.getRequestDispatcher("../editorderbyid.jsp").forward(request, response);
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
//        int id = Integer.parseInt(request.getParameter("id"));
//        int statusOrder = Integer.parseInt(request.getParameter("statusOrder"));
//        OrderDAO odao = new OrderDAO();
//        odao.editStatus(id,statusOrder);
//        response.sendRedirect("managerorder");
        int id = Integer.parseInt(request.getParameter("id"));
        double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
        String note = request.getParameter("note");
        String createdate = request.getParameter("createdate");
        int statusOrder = Integer.parseInt(request.getParameter("statusOrder"));
        OrderDAO odao = new OrderDAO();
        odao.editorder(id, totalPrice, note, createdate, statusOrder);
        response.sendRedirect("managerorder");
        
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
