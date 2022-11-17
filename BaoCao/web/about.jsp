<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thiết kế trang Web nhà hàng </title>
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
    <!--font-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <!--File CSS-->
    <link rel="stylesheet" href="style2.css">
</head>
<body>
    <!--Header section start-->
    <header>
        <a href="#" class="logo"><i class="fa fa-utensils"></i>Món Thái Ngon</a>
        <nav class="navbar">
            <a href="home.jsp">Trang chủ</a>
            <a class="active" href="about.jsp">Giới thiệu</a>
            <a href="menu.jsp">Thực đơn</a>
            <a href="order.jsp">Đặt món</a>
        </nav>
        <div class="icons">
            <i class="fas fa-bars" id="bars"></i>
            <i class="fas fa-search" id="search-icon"></i>
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-shopping-cart"></a>
        </div>
    </header>
    <!--Header section end-->
    <!-- search form  -->

 <form action="" id="search-form">
    <input type="search" placeholder="Tìm kiếm..." name="" id="search-box">
    <label for="search-box" class="fas fa-search"></label>
    <i class="fas fa-times" id="close"></i>
 </form>
 <!-- about section starts  -->

<section class="about" id="about">

    <h3 class="sub-heading"> Giới thiệu </h3>
    <h1 class="heading"> Lý do bạn chọn chúng tôi? </h1>

    <div class="row">

        <div class="image">
            <img src="images/Introduce.jpg" alt="">
        </div>

        <div class="content">
            <h3>Món ăn ngon nhất Thái Lan</h3>
            <p>Hương vị có 1 0 2, ăn là ghiền!</p>
            <p>Với nguồn gốc xuất xứ lâu đời và mang đậm nét truyền thống ngàn xưa của đất nước xứ chùa vàng, các món ăn đều có một hương vị chua cay ngọt dịu mà không nơi đâu có thể mang lại, thưởng thức và tận hưởng thôi nào!</p>
            <div class="icons-container">
                <div class="icons">
                    <i class="fas fa-shipping-fast"></i>
                    <span>Đặt món</span>
                </div>
                <div class="icons">
                    <i class="fas fa-dollar-sign"></i>
                    <span>Thanh toán tiện lợi</span>
                </div>
                <div class="icons">
                    <i class="fas fa-headset"></i>
                    <span>Dịch vụ 24/7</span>
                </div>
            </div>
            <a href="#" class="btn">Tìm hiểu thêm</a>
        </div>

    </div>

</section>

<!-- about section ends -->
<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>Vị trí</h3>
            <a href="#">Việt Nam</a>
            <a href="#">Thái Lan</a>
            <a href="#">Nhật Bản</a>
            <a href="#">Hoa Kỳ</a>
            <a href="#">Pháp</a>
        </div>

        <div class="box">
            <h3>Tham khảo</h3>
            <a href="#">Trang chủ</a>
            <a href="#">Món ăn bán chạy nhất</a>
            <a href="#">Giới thiệu</a>
            <a href="#">Thực đơn</a>
            <a href="#">Đánh giá</a>
            <a href="#">Đặt món</a>
        </div>

        <div class="box">
            <h3>Liên hệ</h3>
            <a href="#">+84388159145</a>
            <a href="#">+123456789</a>
            <a href="#">luong360@gmail.com</a>
            <a href="#">blabla@gmail.com</a>
            <a href="#">MonThaiNgon.com.vn</a>
        </div>

        <div class="box">
            <h3>Theo dõi</h3>
            <a href="#">facebook</a>
            <a href="#">twitter</a>
            <a href="#">instagram</a>
            <a href="#">TikTok</a>
        </div>
        

    </div>

    <div class="credit"> Tận hưởng bữa ăn ngon cho cuộc sống thêm phần tươi đẹp  </div>

</section>

<!-- footer section ends -->

<script src="script.js"></script>
</body>
</html>