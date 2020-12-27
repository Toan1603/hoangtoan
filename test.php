<?php
    include('./connectDB.php');
    $sql = "SELECT * FROM `banh`";
    $query = $pdo->prepare($sql);
    $query->execute();
    $data = $query->fetchAll();
    echo'<pre>';
    print_r($data);

?>