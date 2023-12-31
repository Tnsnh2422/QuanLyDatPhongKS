<? require('inc/db_config.php') ?>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Hotel Booking - TRANG CHỦ</title>
    <link rel="icon" type="image/gif" href="https://www.freepnglogos.com/uploads/hotel-logo-png/download-building-hotel-clipart-png-33.png">
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <?php require('inc/links.php') ?>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <style>
        #suggestionsList {
            position: absolute;
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        #suggestionsList>li {
            position: relative;
            background-color: white;
            padding: 10px;
            border: solid 0.5px #dddddd;
            z-index: 99;
            min-width: 300px;
        }

        #suggestionsList>li:hover {
            background-color: #dddddd;
            cursor: pointer;
        }
    </style>
</head>
<body class="bg-light">
    <?php
    session_start();
    if (isset($_SESSION['account'])) {
        require('inc/header_login.php');
    } else {
        require('inc/header.php');
    }
    ?>
    <!-- Swiper -->
    <div class="container-fluid px-lg-4 mt-4">
        <div class="swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="/assets/images/swiper/du-lich-tinh-nguyen.jpg" class="w-100 d-100" />
                </div>
                <div class="swiper-slide">
                    <img src="/assets/images/swiper/dulichsinhthai.jpg" class="w-100 d-100" />
                </div>
                <div class="swiper-slide">
                    <img src="/assets/images/swiper/dulichtamlinh.jpg" class="w-100 d-100" />
                </div>
                <div class="swiper-slide">
                    <img src="/assets/images/swiper/hcmcity.jpg" class="w-100 d-100" />
                </div>
                <div class="swiper-slide">
                    <img src="/assets/images/swiper/lang-chu-tich-ho-chi-minh.jpg" class="w-100 d-100" />
                </div>
                <div class="swiper-slide">
                    <img src="/assets/images/swiper/mucangchai2.jpg" class="w-100 d-100" />
                </div>
                <div class="swiper-slide">
                    <img src="/assets/images/swiper/sapa.jpg" class="w-100 d-100" />
                </div>
            </div>
        </div>
    </div>

    <!-- Booking Form -->
    <div class="container availability-form">
        <div class="row">
            <div class="col-lg-12 bg-white shadow p-4 rounded">
                <h5 class="mb-4">Tìm kiếm khách sạn</h5>
                <form method="POST" action="">
                    <div class="row align-items-end">
                        <div class="col-lg-3 mb-3">
                            <label for="" class="form-label check-in">Điểm đến:</label>
                            <input name="index_location" id="searchInput" type="text" class="form-control shadow-none" onkeyup="handleInput(this.value)" autocomplete="off" placeholder="Bạn muốn đi đâu ..." required>
                            <ul id="suggestionsList"></ul>
                        </div>
                        <div class="col-lg-2 mb-3">
                            <label for="" class="form-label check-in">Check-in</label>
                            <input name="index_checkin" type="date" id="checkin" class="form-control shadow-none" required>
                        </div>
                        <div class="col-lg-2 mb-3">
                            <label for="" class="form-label check-in">Check-out</label>
                            <input name="index_checkout" type="date" id="checkout" class="form-control shadow-none" required>
                        </div>
                        <div class="col-lg-2 mb-3">
                            <label for="" class="form-label check-in">Loại phòng:</label>
                            <select name="index_roomcode" class="form-control shadow-none" required>
                                <option disabled selected value="">Hạng phòng cần tìm</option>
                                <option value="standard">Cơ bản</option>
                                <option value="double">Phòng đôi</option>
                                <option value="vip">Vip</option>
                            </select>
                        </div>
                        <div class="col-lg-2 mb-3">
                            <label for="" class="form-label check-in">Số lượng phòng ngủ</label>
                            <input name="index_number" type="number" class="form-control shadow-none" min="1" required>
                        </div>
                        <div class="col-lg-1 mb-lg-3 mt-2">
                            <button name="index_submitBtn" type="submit" class=" btn-sm custom-bg text-white shadow-none">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Rooms -->
    <h2 class="mt-5 pt-4 mb-4 text-center fw-bold h-font">MỌI NGƯỜI CŨNG TÌM</h2>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 my-3">
                <div class="card border-0 shadow custom-card">
                    <img src="/assets/images/hotels/minhanhHP.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h6>Minh Anh Hotel & Apartment</h6>
                        <h6>Địa điểm: Hải Phòng</h6>
                        <h6 class="mb-4">200.000 - 1.000.000VND/Night</h6>
                        <div class="features mb-4">
                            <h6 class="mb-1">Dịch vụ</h6>
                            <span class="badge bg-light text-dark text-wrap">
                                Giặt là
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Nhà hàng
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Đưa đón
                            </span>
                        </div>
                        <div class="facilities mb-4">
                            <h6 class="mb-1">Tiện ích</h6>
                            <span class="badge bg-light text-dark text-wrap">
                                Wifi
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Television
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Fridge
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                AC
                            </span>
                        </div>
                        <div class="rating mb-4">
                            <h6 class="mb-1">Đánh giá:
                                <span class="badge bg-light rounded-pill">
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                </span>
                            </h6>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 my-3">
                <div class="card border-0 shadow custom-card">
                    <img src="/assets/images/hotels/Hanoi Prime Center Hotel.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h6>Hanoi Prime Center Hotel</h6>
                        <h6>Địa điểm: Hà Nội</h6>
                        <h6 class="mb-4">500.000 - 1.000.000VND/Night</h6>
                        <div class="features mb-4">
                            <h6 class="mb-1">Tiện nghi</h6>
                            <span class="badge bg-light text-dark text-wrap">
                                Đưa đón
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Giặt là
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Nhà Hàng
                            </span>
                        </div>
                        <div class="facilities mb-4">
                            <h6 class="mb-1">Tiện ích</h6>
                            <span class="badge bg-light text-dark text-wrap">
                                Wifi
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Television
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Fridge
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                AC
                            </span>
                        </div>
                        <div class="rating mb-4">
                            <h6 class="mb-1">Đánh giá:
                                <span class="badge bg-light rounded-pill">
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                </span>
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 my-3">
                <div class="card border-0 shadow custom-card">
                    <img src="/assets/images/hotels/avenishotel.jpg" class="card-img-top">
                    <div class="card-body">
                        <h6>Khách sạn Avenis</h6>
                        <h6>Địa điểm: Đà Nẵng</h6>
                        <h6 class="mb-4">500.000 - 1.000.000VND/Night</h6>
                        <div class="features mb-4">
                            <h6 class="mb-1">Tiện nghi</h6>
                            <span class="badge bg-light text-dark text-wrap">
                                Giặt là
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Nhà Hàng
                            </span>
                        </div>
                        <div class="facilities mb-4">
                            <h6 class="mb-1">Tiện ích</h6>
                            <span class="badge bg-light text-dark text-wrap">
                                Wifi
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Television
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Fridge
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                AC
                            </span>
                        </div>
                        <div class="rating mb-4">
                            <h6 class="mb-1">Đánh giá:
                                <span class="badge bg-light rounded-pill">
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                </span>
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 my-3">
                <div class="card border-0 shadow custom-card">
                    <img src="/assets/images/hotels/muongthánhaigon.jpg" class="card-img-top">
                    <div class="card-body">
                        <h6>Khách sạn Mường Thanh Sài Gòn</h6>
                        <h6>Địa điểm: Thành phố Hồ Chí Minh</h6>
                        <h6 class="mb-4">500.000 - 2.000.000VND/Night</h6>
                        <div class="features mb-4">
                            <h6 class="mb-1">Tiện nghi</h6>
                            <span class="badge bg-light text-dark text-wrap">
                                Bar
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Nhà Hàng
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Giặt là
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Bể bơi
                            </span>
                        </div>
                        <div class="facilities mb-4">
                            <h6 class="mb-1">Tiện ích</h6>
                            <span class="badge bg-light text-dark text-wrap">
                                Wifi
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Television
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                Fridge
                            </span>
                            <span class="badge bg-light text-dark text-wrap">
                                AC
                            </span>

                        </div>
                        <div class="rating mb-4">
                            <h6 class="mb-1">Đánh giá:
                                <span class="badge bg-light rounded-pill">
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                </span>
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Service -->
    <h2 class="mt-5 pt-4 mb-4 text-center fw-bold h-font">DỊCH VỤ</h2>
    <div class="container">
        <div class="swiper">
            <div class="swiper swiper-service">
                <div class="swiper-wrapper">
                    <div class="swiper-slide me-1 text-center bg-white rounded shadow">
                        <img src="/assets/images/service/bar.jpg" alt="">
                        <h5 class="mt-3">Bar</h5>
                    </div>
                    <div class="swiper-slide me-1 text-center bg-white rounded shadow">
                        <img src="/assets/images/service/dua-don.jpg" alt="">
                        <h5 class="mt-3">Đưa đón</h5>
                    </div>
                    <div class="swiper-slide me-1 text-center bg-white rounded shadow">
                        <img src="/assets/images/service/giatla.jpg" alt="">
                        <h5 class="mt-3">Giặt là</h5>
                    </div>
                    <div class="swiper-slide me-1 text-center bg-white rounded shadow">
                        <img src="/assets/images/service/gym.jpg" alt="">
                        <h5 class="mt-3">Gym</h5>
                    </div>
                    <div class="swiper-slide me-1 text-center bg-white rounded shadow">
                        <img src="/assets/images/service/pool.jpg" alt="">
                        <h5 class="mt-3">Bể Bơi</h5>
                    </div>
                    <div class="swiper-slide me-1 text-center bg-white rounded shadow">
                        <img src="/assets/images/service/restaurant.jpg" alt="">
                        <h5 class="mt-3">Nhà hàng</h5>
                    </div>
                    <div class="swiper-slide me-1 text-center bg-white rounded shadow">
                        <img src="/assets/images/service/spa.jpg" alt="">
                        <h5 class="mt-3">Spa</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 text-center mt-5">
                <a href="service.php" class="btn btn-sm btn-outline-dark rounded-0 fw-bold shadow-none">Tìm hiểu thêm >>></a>
            </div>
        </div>
    </div>
    <!-- Rating -->
    <h2 class="mt-5 pt-4 mb-4 text-center fw-bold h-font">ĐÁNH GIÁ</h2>
    <div class="container">
        <div class="swiper swiper-rating">
            <div class="swiper-wrapper mb-5">

                <div class="swiper-slide bg-white p-4">
                    <div class="profile d-flex align-items-center mb-3">
                        <img src="/assets/images/profile.png" class="custom-rating">
                        <h6 class="m-0 ms-2">Hoàng Tuấn Sinh</h6>
                    </div>
                    <p>Giao diện dễ dùng, nhiều tiện ích, ưu đãi hấp dẫn dành cho khách hàng.</p>
                    <div class="rating">
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                    </div>
                </div>
                <div class="swiper-slide bg-white p-4">
                    <div class="profile d-flex align-items-center mb-3">
                        <img src="/assets/images/profile.png" class="custom-rating">
                        <h6 class="m-0 ms-2">Tran Thu Phuong</h6>
                    </div>
                    <p>Nhiều ưu đãi hấp dẫn, giá cả hợp lý. Khách sạn và dịch vụ chuyên nghiệp</p>
                    <div class="rating">
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                    </div>
                </div>
                <div class="swiper-slide bg-white p-4">
                    <div class="profile d-flex align-items-center mb-3">
                        <img src="/assets/images/profile.png" class="custom-rating">
                        <h6 class="m-0 ms-2">Nguyen Duc Viet</h6>
                    </div>
                    <p>Nhân viên hỗ trợ nhiệt tình, nhanh chóng. Nhiều chương trình ưu đãi hấp dẫn</p>
                    <div class="rating">
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                    </div>
                </div>
                <div class="swiper-slide bg-white p-4">
                    <div class="profile d-flex align-items-center mb-3">
                        <img src="/assets/images/profile.png" class="custom-rating">
                        <h6 class="m-0 ms-2">Nguyen Ly Minh Vu</h6>
                    </div>
                    <p>Giao diện dễ dùng, đơn giản với người mới. Nhiều chương trình ưu đãi hấp dẫn</p>
                    <div class="rating">
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                    </div>
                </div>

            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>

    <!-- Contact US -->
    <h2 class="mt-5 pt-4 mb-4 text-center fw-bold h-font">LIÊN HỆ CHÚNG TÔI</h2>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 p-4 mb-lg-0 mb-3 bg-white rounded">
                <iframe class="w-100 rounded" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59595.347641166954!2d105.77399541953127!3d21.00428974666735!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSMOgIE7hu5lpLCBIb8OgbiBLaeG6v20sIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1683270571454!5m2!1svi!2s" height="320"></iframe>
            </div>
            <div class="col-lg-4 col-md-4">
                <div class="bg-white p-4 rounded mb-4">
                    <h5>LIÊN HỆ:</h5>
                    <i class="bi bi-telephone-fill"></i>
                    <a href="tel; +841810293120" class="d-inline-block mb-2 text-decoration-none text-dark">+841810293120</a>
                    <br>
                    <i class="bi bi-telephone-fill"></i>
                    <a href="tel; +841810293120" class="d-inline-block mb-2 text-decoration-none text-dark">+841810293120</a>
                </div>
                <div class="bg-white p-4 rounded mb-4">
                    <h5>Follow us</h5>
                    <a href="#" class="d-inline-block mb-3">
                        <span class="badge bg-light text-dark fs-6 ps-2">
                            <i class="bi bi-twitter me-1"></i> Twitter
                        </span>
                    </a>
                    <br>
                    <a href="#" class="d-inline-block mb-3">
                        <span class="badge bg-light text-dark fs-6 ps-2">
                            <i class="bi bi-facebook me-1"></i> Facebook
                        </span>
                    </a>
                    <br>
                    <a href="#" class="d-inline-block mb-3">
                        <span class="badge bg-light text-dark fs-6 ps-2">
                            <i class="bi bi-instagram me-1"></i> Instagram
                        </span>
                    </a>
                </div>
            </div>

        </div>
    </div>
    <?php require('inc/footer.php') ?>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script>
        var swiper = new Swiper(".swiper-container", {
            spaceBetween: 30,
            effect: "fade",
            loop: true,
            autoplay: {
                delay: 3500,
                disableOnInteraction: false,
            }
        });
        var swiper = new Swiper(".swiper-service", {
            watchSlidesProgress: true,
            loop: true,
            grabCursor: true,
            slidesPerView: 3,
        });
        var swiper = new Swiper(".swiper-rating", {
            watchSlidesProgress: true,
            effect: "coverflow",
            grabCursor: true,

            slidesPerView: "auto",
            loop: true,
            slidesPerView: 3,

            coverflowEffect: {
                rotate: 50,
                stretch: 0,
                depth: 100,
                modifier: 1,
                slideShadows: false,
            },
            pagination: {
                el: ".swiper-pagination",
            },
            breakpoints: {
                320: {
                    slidesPerView: 1,
                },
                640: {
                    slidesPerView: 1,
                },
                768: {
                    slidesPerView: 2,
                },
                1024: {
                    slidesPerView: 3,
                },
            }
        });

        // Lấy ngày hôm nay
        var today = new Date().toISOString().split('T')[0];

        // Đặt giá trị min của trường check-in thành ngày hôm nay
        document.getElementById("checkin").setAttribute("min", today);

        var checkinInput = document.getElementById("checkin");
        var checkoutInput = document.getElementById("checkout");

        checkinInput.addEventListener("change", function() {
            var checkinDate = new Date(checkinInput.value);
            var checkoutDate = new Date(checkoutInput.value);

            if (checkoutDate < checkinDate) {
                checkoutInput.value = ""; // Reset the checkout date if it's before the checkin date
            }

            checkoutInput.min = checkinInput.value;
        });
    </script>

    <script>
        var suggestions = ["An Giang", "Bà Rịa – Vũng Tàu", "Bắc Giang", "Bắc Kạn", "Bạc Liêu", "Bắc Ninh", "Bến Tre", "Bình Định", "Bình Dương", "Bình Phước",
            "Bình Thuận", "Cà Mau", "Cần Thơ", "Cao Bằng", "Đà Nẵng", "Đắk Lắk", "Đắk Nông", "Điện Biên", "Đồng Nai", "Đồng Tháp", "Gia Lai",
            "Hà Giang", "Hà Nam", "Hà Nội", "Hà Tĩnh", "Hải Dương", "Hải Phòng", "Hậu Giang", "Hòa Bình", "Hưng Yên", "Khánh Hòa", "Kiên Giang",
            "Kon Tum", "Lai Châu", "Lâm Đồng", "Lạng Sơn", "Lào Cai", "Long An", "Nam Định", "Nghệ An", "Ninh Bình", "Ninh Thuận", "Phú Thọ", "Phú Yên",
            "Quảng Bình", "Quảng Nam", "Quảng Ngãi", "Quảng Ninh", "Quảng Trị", "Sóc Trăng", "Sơn La", "Tây Ninh", "Thái Bình", "Thái Nguyên", "Thanh Hóa",
            "Thừa Thiên Huế", "Tiền Giang", "TP Hồ Chí Minh", "Trà Vinh", "Tuyên Quang", "Vĩnh Long", "Vĩnh Phúc", "Yên Bái", "An Giang", "Ba Ria - Vung Tau",
            "Bac Giang", "Bac Kan", "Bac Lieu", "Bac Ninh", "Ben Tre", "Binh Dinh", "Binh Duong", "Binh Phuoc", "Binh Thuan", "Ca Mau", "Can Tho", "Cao Bang",
            "Da Nang", "Dak Lak", "Dak Nong", "Dien Bien", "Dong Nai", "Dong Thap", "Gia Lai", "Ha Giang", "Ha Nam", "Ha Noi", "Ha Tinh", "Hai Duong", "Hai Phong",
            "Hau Giang", "Hoa Binh", "Hung Yen", "Khanh Hoa", "Kien Giang", "Kon Tum", "Lai Chau", "Lam Dong", "Lang Son", "Lao Cai", "Long An", "Nam Dinh", "Nghe An",
            "Ninh Binh", "Ninh Thuan", "Phu Tho", "Phu Yen", "Quang Binh", "Quang Nam", "Quang Ngai", "Quang Ninh", "Quang Tri", "Soc Trang", "Son La", "Tay Ninh",
            "Thai Binh", "Thai Nguyen", "Thanh Hoa", "Thua Thien Hue", "Tien Giang", "Ho Chi Minh City", "Tra Vinh", "Tuyen Quang", "Vinh Long", "Vinh Phuc", "Yen Bai"
        ];

        function handleInput(inputValue) {
            var suggestionsList = document.getElementById("suggestionsList");
            suggestionsList.innerHTML = ""; 
            var filteredSuggestions = suggestions.filter(function(suggestion) {
                return suggestion.toLowerCase().startsWith(inputValue.toLowerCase());
            });

            filteredSuggestions.forEach(function(suggestion) {
                var li = document.createElement("li");
                li.textContent = suggestion;
                suggestionsList.appendChild(li);
                li.addEventListener("click", function() {
                    var selectedSuggestion = li.textContent;
                    var input = document.getElementById("searchInput");
                    input.value = selectedSuggestion;
                    suggestionsList.innerHTML = "";
                });
            });
            document.addEventListener("click", function(event) {
                var target = event.target;
                if (!target.closest("#suggestionsList") && !target.closest("#searchInput")) {
                    suggestionsList.innerHTML = ""; 
                }
            });
        }
    </script>
</body>
</html>