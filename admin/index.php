<?php 
  if(!isset($_SESSION)){
  session_start();
  }
  include('./connectad.php');
  ?>
  <?php 

  if(isset($_POST['dangnhap'])){
    $taikhoan=$_POST['taikhoan'];
    $matkhau=md5($_POST['matkhau']);
    if($taikhoan==''|| $matkhau==''){
      echo '<p>Xin nhập đầy đủ thông tin</p>';
    }else{
              //Ket noi vs CSDL lay thong tin dang nhap
        $sql_select_admin=mysqli_query($toannhat,"SELECT * FROM admin where taikhoan='$taikhoan' AND matkhau='$matkhau' LIMIT 1");
        $count=mysqli_num_rows($sql_select_admin);
        $row_dangnhap=mysqli_fetch_array($sql_select_admin);
        if($count>0){
          $_SESSION['dangnhap']=$row_dangnhap['tenadmin'];
           $_SESSION['ma']=$row_dangnhap['ma'];
           
          header('Location:home.php');
        }else{
          echo 'Tài khoản hoặc mật khẩu không đúng !';
        }
    }
  }
  ?>

  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Đăng nhập ADMIN</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
  </head>
  <body>
    <h2 align="center"> Đăng nhập Admin </h2>
    <div class="col-md-6">
      <div class="form-group">
        <form action="" method="POST">
        <label> Tài khoản </label>
        <input type="text" name="taikhoan" placeholder="Điền tài khoản" class="form-control"></br>
        <label> Mật khẩu </label>
        <input type="password" name="matkhau" placeholder="Điền mật khẩu" class="form-control"></br>
        <input type="submit" name="dangnhap" class="btn btn-primary" value="Đăng nhập Admin">
      </form>
      </div>
    </div>
    
  </body>
  </html>