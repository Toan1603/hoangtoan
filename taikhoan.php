<?php 
	include('./connectDB.php');
	if(!isset($_SESSION['user'])){
        header('location:index.php');
        exit;
    }
    $id = $_SESSION['user']['tai_khoan'];
    $sql= "SELECT * FROM `don_hang` WHERE `ma_kh`=?";
    $querydh = $pdo->prepare($sql);
    $querydh->execute([$id]);
    $datadh=$querydh->fetchAll();
    
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Toan Nhat Cake</title>

    <!-- Icon css link -->
    <?php include("./include/style-link.php") ?>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>

<body>

    <!--================Main Header Area =================-->
    <?php include("./include/header.php") ;
        
        ?>
    <!--================End Main Header Area =================-->

    <!--================End Main Header Area =================-->
    <section class="banner_area">
        <div class="container">
            <div class="banner_text">
                <h3>Đơn hàng</h3>
                <ul>
                    <li><a href="index.html">Trang chủ</a></li>
                    <li><a href="single-blog.html">Đơn hàng</a></li>
                </ul>
            </div>
        </div>
    </section>
    <!--================End Main Header Area =================-->

    <!--================Contact Form Area =================-->
    <section class="contact_form_area p_100">
        <div class="container">
            <div class="main_title">
                <h2>Lịch sử đặt hàng</h2>
            </div>

            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Mã đơn hàng</th>
                        <th scope="col">Ngày đặt</th>
                        <th scope="col">Địa chỉ giao</th>
                        <th scope="col">Trạng thái</th>
                        <th scope="col">Tổng tiền</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $count = 1;
                        $status = array("Chưa thanh toán","Đang xử lý","Đã xác nhận","Đang giao hàng","Đã giao hàng và thanh toán");

                        foreach($datadh as $v){
                    ?>
                    <tr>
                        <th scope="row"><?= $count++ ?></th>
                        <td><?= $v['ma_dh'] ?></td>
                        <td><?= $v['ngaydat'] ?></td>
                        <td><?= $v['diachigiao'] ?></td>
                        <td><?= $status[$v['trangthai']] ?></td>
                        <td><?= $v['thanhtien'] ?></td>
                        <td><a href="chitietdonhang.php?madh=<?= $v['ma_dh']?>"  class="btn btn-info">Xem chi tiết</a></td>
                    </tr>
                        <?php }?>
                </tbody>
            </table>

        </div>
    </section>
    <!--================Footer Area =================-->
    <?php include("./include/footer.php") ?>
    <!--================End Footer Area =================--a
        
        
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Rev slider js -->
    <script src="vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script src="vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
    <script src="vendors/revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script src="vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script src="vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script src="vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script src="vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <!-- Extra plugin js -->
    <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
    <script src="vendors/magnifc-popup/jquery.magnific-popup.min.js"></script>
    <script src="vendors/datetime-picker/js/moment.min.js"></script>
    <script src="vendors/datetime-picker/js/bootstrap-datetimepicker.min.js"></script>
    <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
    <script src="vendors/jquery-ui/jquery-ui.min.js"></script>
    <script src="vendors/lightbox/simpleLightbox.min.js"></script>
    <!--gmaps Js-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="js/gmaps.min.js"></script>
    <script src="js/map-active.js"></script>

    <!-- contact js -->
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/contact.js"></script>

    <script src="js/theme.js"></script>
</body>

</html>