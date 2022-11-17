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
            <form method="post" action="SignInServlet">
                <c:forEach items="${customerlist}" var="userCustomer">
                    <div class="field">
                        <input type="text"  name="MaKH" value="${userCustomer.getMaKH()}" readonly>
                        <label>MaKH</label>
                    </div>
                    <div class="field">
                        <input type="text"  name="HoTen" value="${userCustomer.getHoTen()}" required>
                        <label> Họ Tên</label>
                    </div>
                    <div class="field">
                        <input type="text"  name="DiaChi" value="${userCustomer.getDiaChi()}" required>
                        <label>Địa chỉ</label>
                    </div>
                    <div class="field">
                        <input type="text"  name="SoDienThoai" value="${userCustomer.getSoDienThoai()}" readonly>
                        <label>Số điện thoại</label>
                    </div>
                    <div class="field">
                        <input type="text"  name="NgaySinh" value="${userCustomer.getNgaySinh()}" required>
                        <label>Ngày Sinh</label>
                    </div>
                   
                    <div class="field">
                        <a href="updateCustomerServlet?code=${userCustomer.getSoDienThoai()}"><button  type="button">Sửa đổi</button></a>
                        <br><a href="home.jsp">Quay về trang chủ</a>
                    </div>
                       
                </c:forEach>
            </form>
        </div>
    </body>
</html>
