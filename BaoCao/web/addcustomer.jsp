<%-- 
    Document   : AddPerson
    Created on : Aug 16, 2022, 9:33:44 AM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Thông Tin Cá Nhân</title>
        <link rel="stylesheet" href="signin.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="title">
                Thông Tin Cá Nhân
            </div>
            <form method="get" action="AddCustomerSeverlet" enctype="multipart/form-data">

                <div class="field">
                    <input type="text"  name="MaKH" >
                    <label>MAKH</label>
                </div>
                <div class="field">
                    <input type="text" name="HoTen">
                    <label>HỌ TÊN</label>
                </div>
                <div class="field">
                    <input type="text" name="DiaChi">
                    <label>DIACHI</label>
                </div><!-- comment -->
                <div class="field">
                    <input type="text" name="SoDienThoai" value="${SoDienThoai}">
                    <label>SỐ DIỆN THOẠI</label>
                </div>
                <div class="field">
                    <input type="text" name="NgaySinh">
                    <label>NGAY SINH</label>
                </div>
                
                <div class="field">
                    <input type="submit"  value="Hoàn tất">
                </div>
                
            </form>
        </div>
    <center>
        <div>
            <h4>Thông tin đăng ký</h4>
            <h5>${sodienthoai}</h5>
            <h5>${ten}</h5>
        </div>
    </center>
</body>
</html>
