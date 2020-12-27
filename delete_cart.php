<?php
     include('./connectDB.php');
	if(!isset($_SESSION['user'])){
        header('location:index');
        exit;
    }
    //  if(!isset($_SESSION['update-gio'])){
    //     header('location:index.php');
    //     exit;
    // }
    if(isset($_GET['action'])){
        
        $banh = $_GET['mabanh'];
        $gio = $_GET['magio'];

        $sqlcheck = "SELECT * FROM `don_hang` WHERE `ma_kh`=? AND `ma_dh`=?";
        $queryCheck = $pdo->prepare($sqlcheck);
        $id = $_SESSION['user']['tai_khoan'];
        $queryCheck->execute([$id,$gio]);
        $datacheck = $queryCheck ->fetchAll();
        $sql= "DELETE FROM `chitiet_dh` WHERE `ma_dh`=? AND `ma_banh`=? LIMIT 1";
        $query = $pdo->prepare($sql);
        $query->execute([$gio,$banh]);
        // echo($query->rowCount());exit;
        if($query->rowCount()>0){
            $sqlctdh = "SELECT * FROM `chitiet_dh` WHERE `ma_dh`= '$gio'";
            $query = $pdo->prepare($sqlctdh);
            $query->execute();
            $dataitem = $query->fetchALL();
            $tongtien =0;
            // print_r($dataitem);
            foreach($dataitem as $v){
                $tongtien += $v['soluong']*$v['dongia'];
            }
            $sqlUpdateGia = "UPDATE `don_hang` SET `thanhtien`=? WHERE `ma_dh` = ?";
            $queryupdate = $pdo->prepare($sqlUpdateGia);
            $queryupdate->execute([$tongtien,$gio]);
            header('location:cart');
            exit;
        }
    }
    header('location:index');
    exit;
?>