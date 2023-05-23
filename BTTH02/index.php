<?php
try{
    $con = new PDO("mysql:host=localhost;dbname=qlsv", 'root', '');
    $sql = "SELECT a.ID_ThamDu, s.HoTen, c.TenLopHocPhan, a.Ngay, a.TrangThaiThamDu
    FROM attendance a
    INNER JOIN students s ON a.ID_SinhVien = s.ID_SinhVien
    INNER JOIN classsubjects c ON a.ID_LopHocPhan = c.ID_LopHocPhan
    ORDER BY ID_ThamDu DESC";//giảm dần
    $stmt = $con->prepare($sql);
    $stmt->execute();
    $articles = $stmt->fetchAll();
    
}catch(PDOException $ex){
    echo "Error: " . $ex->getMessage();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="style.css">
    <title>Quản lý sinh viên</title>
</head>
<body>
    <h1>QUẢN LÝ SINH VIÊN</h1>
<table class="table table-striped">
  <thead>
    <button type="button" class="btn btn-success"onclick="window.location.href='add.php'">Thêm sinh viên</button>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tên sinh viên</th>
      <th scope="col">Lớp học phần</th>
      <th scope="col">Ngày học</th>
      <th scope="col">Trạng thái</th>
      <th scope="col">Sửa</th>
      <th scope="col">Xóa</th>
    </tr>
  </thead>
  <tbody>
    <?php
        foreach ($articles as $article) {
            ?>
            <tr>
                <th><?=$article[0]?></th>
                <th><?=$article[1]?></th>
                <th><?=$article[2]?></th>
                <th><?=$article[3]?></th>
                <th><?=$article[4]?></th>
                <th><i class="fa-solid fa-pen-to-square"></i></th>
                <th><i class="fa-solid fa-trash"></i></th>
            </tr>
            <?php
        }
    ?>
    </tbody>
</table>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>