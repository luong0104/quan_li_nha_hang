/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author havan
 */
@WebServlet(name = "updateCustomerServlet", urlPatterns = {"/updateCustomerServlet"})
public class updateCustomerServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateCustomerServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateCustomerServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        Connection conn;
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try {
            conn = MySQLConntUtils.getMySQLConnection();
            HttpSession sess = request.getSession();
            UserAccount ua = (UserAccount) sess.getAttribute("acc");
            String SoDienThoai = request.getParameter("code");
            UserCustomer up = new UserCustomer();
            up = DBUtils.getserUserCustome(conn, SoDienThoai);
            request.setAttribute("up", up);
            response.getWriter().append("Served at: ").append(request.getContextPath());
            request.getRequestDispatcher("/update.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(updateCustomerServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(updateCustomerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = null;
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession sess = request.getSession();
        UserAccount ua = (UserAccount) sess.getAttribute("acc");
        try {
            conn = MySQLConntUtils.getMySQLConnection();

            String SoDienThoai = request.getParameter("SoDienThoai");

            UserCustomer up = DBUtils.getserUserCustome(conn, SoDienThoai);
            String MaKH = request.getParameter("MaKH");
            String HoTen = request.getParameter("HoTen");
            String DiaChi = request.getParameter("DiaChi");

            String NgaySinh = request.getParameter("NgaySinh");

            DBUtils.updateUserCustomer(conn, MaKH, HoTen, DiaChi, SoDienThoai, NgaySinh);
            response.sendRedirect("UserCustomerServlet");
        } catch (SQLException ex) {
            Logger.getLogger(updateCustomerServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(updateCustomerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
