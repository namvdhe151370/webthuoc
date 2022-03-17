/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;

public class LoginSevlet extends HttpServlet {

//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        
//    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cookie[] cookie = request.getCookies();
        String username = null;
        String password = null;
        for (Cookie cookie1 : cookie) {
            if (cookie1.getName().equals("usename")) {
                username = cookie1.getValue();
            }
            if (cookie1.getName().equals("password")) {
                password = cookie1.getValue();
            }
            if (username != null && password != null) {
                break;
            }
        }
        if (username != null && password != null) {
            AccountDAO adao = new AccountDAO();
            Account account = adao.login(username, password);
            if (account != null) {
                request.getSession().setAttribute("account", account);
                if (account.getRole().equals("ADMIN")){
                    response.sendRedirect("admin/managerproduct");
                    return;
                } else {
                    response.sendRedirect("Home");
                    return;
                }

            }
        }
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean remember = request.getParameter("remember") != null;
        AccountDAO accDAO = new AccountDAO();
        Account account = accDAO.login(username, password);
        if (account != null) {
            if (remember) {
                Cookie userCookie = new Cookie("username", username);
                userCookie.setMaxAge(60 * 60 * 24);
                Cookie passCookie = new Cookie("password", password);
                passCookie.setMaxAge(60 * 60 * 24);
                response.addCookie(userCookie);
                response.addCookie(passCookie);
            }
            request.getSession().setAttribute("account", account);
            if (account.getRole().equals("ADMIN")){
                    response.sendRedirect("admin/managerproduct");
                    return;
            }
            response.sendRedirect("Home");
        } else {

            request.setAttribute("mess", "Wrong Username or Password");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
