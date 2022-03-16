/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filter;

import dao.AccountDAO;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author hellb
 */
@WebFilter(filterName = "CheckloginFilter", urlPatterns = {"/addtocart","/carts","/buynow","/deletecart","/updatecart","/admin/*"})
public class CheckloginFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        HttpSession session = req.getSession();
        Account account = (Account) session.getAttribute("account");

        if (account != null) {
            chain.doFilter(request, response);
        } else {
            Cookie[] cookie = req.getCookies();
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
                Account accountLogin = adao.login(username, password);
                if (account != null) {
                    session.setAttribute("account", account);
                    chain.doFilter(request, response);
                    return;
                }
            }
            res.sendRedirect("http://localhost:8080/webThuoc/Login");
        }

    }

    /**
     * Return the filter configuration object for this filter.
     *
     * @return
     */
    @Override
    public void destroy() {
    }

    /**
     * Init method for this filter
     *
     * @param filterConfig
     */
    @Override
    public void init(FilterConfig filterConfig) {

    }

    /**
     * Return a String representation of this object.
     */
}
