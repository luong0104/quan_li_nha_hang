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
            <a class="active" href="home.jsp">Trang chủ</a>
            <a href="about.jsp">Giới thiệu</a>
            <a href="menu.jsp">Thực đơn</a>
            <a href="order.jsp">Đặt món</a>
            <a href="index.jsp">Đăng Xuất</a>
            <a>${sessionScope.acc.getSoDienThoai()}</a>
        </nav>
        <div class="icons">
            <i class="fas fa-bars" id="bars"></i>
            <i class="fas fa-search" id="search-icon"></i>
            <a href="redirect.jsp" class="fas fa-shopping-cart"></a>
            <a href="UserCustomerServlet?ac=${sessionScope.acc.getSoDienThoai()}" class="fas fa-user"></a>
        </div>
    </header>
    <!--Header section end-->
    <!-- search form  -->

 <form action="" id="search-form">
    <input type="search" placeholder="Tìm kiếm..." name="" id="search-box">
    <label for="search-box" class="fas fa-search"></label>
    <i class="fas fa-times" id="close"></i>
 </form>
 <!--Home section starts-->
 <section class="home" id="home">
    <div class="swiper home-slider">
        <div class="swiper-wrapper wrapper">
            <div class="swiper-slide slide">
                 <div class="content">
                     <span>Món ăn đặc biệt nhất</span>
                     <h3>Cơm và mì sợi</h3>
                     <p>Hãy thưởng thức theo cách của bạn</p>
                     <a href="#" class="btn">Gọi món ngay</a>
                 </div>
                 <div class="image">
                     <img src="images/Pad.jpg" alt="" width="500" height="500">
                 </div>
            </div>
            <div class="swiper-slide slide">
               <div class="content">
                   <span>Đừng bỏ lỡ</span>
                   <h3>Nọng heo nướng kiểu Thái</h3>
                   <p>Cảm nhận hương vị độc đáo nhất</p>
                   <a href="#" class="btn">Gọi món ngay</a>
               </div>
               <div class="image">
                   <img src="images/ma-heo-nuong.jpg" alt="" width="500" height="500">
               </div>
          </div>
          <div class="swiper-slide slide">
           <div class="content">
               <span>Nhanh chân lên nào!</span>
               <h3>Súp TomYum</h3>
               <p>Hơi ấm đến từng vị chua cay</p>
               <a href="#" class="btn">Gọi món ngay</a>
           </div>
           <div class="image">
               <img src="images/TomYum.jpg" alt="" width="500" height="500">
           </div>
      </div>
        </div>
        <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
    </div>
   </section>
   






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
            <a href="#">luong@gmail.com</a>
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
<!-- loader part  -->
<div class="loader-container">
    <img src="images/Loader4.gif" alt="">
</div>
<!-- scroll top button  -->
<a href="#home" class="fas fa-angle-up" id="scroll-top"></a>
 <!--Home section ends-->
 <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <!--File Js-->
    <script src="script.js"></script>
</body>
</html>

