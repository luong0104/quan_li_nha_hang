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
            <a href="dishes.jsp">Món ăn bán chạy nhất</a>
            <a href="about.jsp">Giới thiệu</a>
            <a class="active" href="menu.jsp">Thực đơn</a>
            <a href="review.jsp">Đánh giá</a>
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
 <!-- menu section starts  -->

<section class="menu" id="menu">

    <h3 class="sub-heading"> Thực đơn </h3>
    <h1 class="heading"> Món ngon hôm nay </h1>

    <div class="box-container">

        <div class="box">
            <div class="image">
                <img src="images/A pizza2.jpg" alt="">
                <a href="#" class="fas fa-heart"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>Pizza</h3>
                <p>Tận hưởng buổi tối bên gia đình</p>
                <a href="#" class="btn">Thêm vào giỏ</a>
                <span class="price">200.000 đồng</span>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/humerger2.jpg" alt="">
                <a href="#" class="fas fa-heart"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>Humberger</h3>
                <p>Món ăn nhanh và tiện lợi</p>
                <a href="#" class="btn">Thêm vào giỏ</a>
                <span class="price">55.000 đồng</span>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/nem-cuon.jpg" alt="">
                <a href="#" class="fas fa-heart"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>Bánh tráng</h3>
                <p>Thưởng thức</p>
                <a href="#" class="btn">Thêm vào giỏ</a>
                <span class="price">120.000 đồng</span>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/Ice-cream.jpg" alt="">
                <a href="#" class="fas fa-heart"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>Kem hương vị tổng hợp</h3>
                <p>Cho một ngày mát mẻ và tươi cười</p>
                <a href="#" class="btn">Thêm vào giỏ</a>
                <span class="price">70.000 đồng</span>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/Cake2.jpg" alt="">
                <a href="#" class="fas fa-heart"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>Bánh kem sô cô la</h3>
                <p>Món quà ý nghĩa</p>
                <a href="#" class="btn">Thêm vào giỏ</a>
                <span class="price">300.000 đồng</span>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/Pudding.jpg" alt="">
                <a href="#" class="fas fa-heart"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>Bánh pudding kem dâu</h3>
                <p>Tận hưởng bữa ăn sang trọng quý phái</p>
                <a href="#" class="btn">Thêm vào giỏ</a>
                <span class="price">85.000 đồng</span>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/Mojito.jpg" alt="">
                <a href="#" class="fas fa-heart"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>Mojito</h3>
                <p>Cho bữa ăn thêm ngon</p>
                <a href="#" class="btn">Thêm vào giỏ</a>
                <span class="price">120.000 đồng</span>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/Cereal.jpg" alt="">
                <a href="#" class="fas fa-heart"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>Ngũ cốc hoa quả</h3>
                <p>Bữa ăn giàu dinh dưỡng</p>
                <a href="#" class="btn">Thêm vào giỏ</a>
                <span class="price">100.000 đồng</span>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/Juice.jpg" alt="">
                <a href="#" class="fas fa-heart"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>Nước ép cam</h3>
                <p>Giải nhiệt mùa nắng nóng</p>
                <a href="#" class="btn">Thêm vào giỏ</a>
                <span class="price">100.000 đồng</span>
            </div>
        </div>

    </div>

</section>

<!-- menu section ends -->
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

    <div class="credit"> Tận hưởng bữa ăn ngon cho cuộc sống thêm phần tươi đẹp </div>

</section>

<!-- footer section ends -->
<script src="script.js"></script>
</body>
</html>