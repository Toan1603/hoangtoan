<?php
    include('./connectDB.php');

    if(!isset($_SESSION['user'])){
        header('location:index.php');
        exit;
    }
    if(!isset($_SESSION['giohang'])){
        header('location:index.php');
        exit;
    }
    if(isset($_POST['update-gio'])){
        // print_r($_POST);
        // exit;
        $idgio = $_SESSION['giohang'];
        unset($_SESSION['giohang']);
        $data = $_POST;
        foreach($data as $id=>$v){
            
            if($id!='update-gio'){
                if($v<1){
                    $v=1; 
             }
                }else{
                    $solog=$v;
                
                
            }
        }
        $sqlctdh = "SELECT * FROM `chitiet_dh` WHERE `ma_dh`= '$idgio'";
        $query = $pdo->prepare($sqlctdh);
        $query->execute();
        $dataitem = $query->fetchALL();
        $tongtien =0;
        // print_r($dataitem);
        foreach($dataitem as $v){
            $tongtien += $v['soluong']*$v['tonggia'];
        }
        $sqlUpdateGia = "UPDATE `don_hang` SET `thanhtien`=? WHERE `ma_dh` = ?";
        $queryupdate = $pdo->prepare($sqlUpdateGia);
        $queryupdate->execute([$tongtien,$idgio]);
    }
    header('location:cart.php');
    exit;
?>
    