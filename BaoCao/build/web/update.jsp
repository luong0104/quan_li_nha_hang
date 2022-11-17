<%-- 
    Document   : AddPerson
    Created on : Aug 16, 2022, 9:33:44 AM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> xem thông Tin Cá Nhân</title>
        <link rel="stylesheet" href="signin.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="title">
                Thông Tin Cá Nhân
            </div>
            <form method="post" action="updateCustomerServlet">
                
                    <div class="field">
                        <input type="text"  name="MaKH" value="${up.getMaKH()}" readonly>
                        <label>MaKH</label>
                    </div>
                    <div class="field">
                        <input type="text"  name="HoTen" value="${up.getHoTen()}" required>
                        <label> Họ Tên</label>
                    </div>
                    <div class="field">
                        <input type="text"  name="DiaChi" value="${up.getDiaChi()}" required>
                        <label>Địa chỉ</label>
                    </div>
                    <div class="field">
                        <input type="text"  name="SoDienThoai" value="${up.getSoDienThoai()}" readonly>
                        <label>Số điện thoại</label>
                    </div>
                    <div class="field">
                        <input type="text"  name="NgaySinh" value="${up.getNgaySinh()}" required>
                        <label>Ngày Sinh</label>
                    </div>
                    <div class="field">
                        <input type="submit" value="Cập nhật">
                        
                    </div>
                    <div class="signup-link">
                        
                        <br><a href="home.jsp">Quay về trang chủ</a>
                    </div>
                
            </form>
        </div>
    </body>
</html>
