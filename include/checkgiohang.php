<?php 
if(isset($_SESSION['user'])){
		$sqlcheck = "SELECT * FROM `don_hang` WHERE `ma_kh`=? AND `trangthai`=?";
        $queryCheck = $pdo->prepare($sqlcheck);
        $id = $_SESSION['user']['tai_khoan'];
        $queryCheck->execute([$id,0]);
		$datacheck = $queryCheck ->fetchAll();
		$idGio=time();
        if($queryCheck->rowCount()==0){
        	$id = $_SESSION['user']['tai_khoan'];
       		
			$address = $_SESSION['user']['dia_chi'];
            $datenow=date('Y-m-d h:i:s');
            $sql = "INSERT INTO `don_hang` (`ma_dh`, `ma_kh`, `ngaydat`, `ngaygiao`, `diachigiao`, `trangthai`, `ghichu`, `thanhtien`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
            $arr = array($idGio,$id,$datenow,$datenow,$address,0,$id,0);
            $queryAdd = $pdo->prepare($sql);
            $queryAdd->execute($arr); 

		}
		else
		{
			$idGio= $datacheck[0]['ma_dh'];
		}
		$sqlctdh = "SELECT * FROM `chitiet_dh` WHERE `ma_dh` =? ";
		$querryctdh = $pdo ->prepare($sqlctdh);
		$querryctdh ->execute([$idGio]);
		$datactdh = $querryctdh ->fetchAll();
		$_SESSION['giohang']=$idGio;
		$_SESSION['datagiohang']=$datactdh;
	}
	
 ?>