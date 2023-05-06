<!DOCTYPE html>
<html>
<head>
    <title>Quan ly sinh vien</title>
</head>
<body>

<?php

class SinhVien {
    // Các thuộc tính của lớp SinhVien
    public $name;
    public $id;
    public $age;

    // Phương thức khởi tạo
    public function __construct($name, $id, $age) {
        $this->name = $name;
        $this->id = $id;
        $this->age = $age;
    }

    // Phương thức in thông tin sinh viên
    public function inThongTin() {
        echo "Họ tên: " . $this->name . "<br>";
        echo "Mã SV: " . $this->id . "<br>";
        echo "Ngày sinh: " . $this->age . "<br>";
    }
}

// Tạo một đối tượng SinhVien
$sinhVien = new SinhVien("Nguyễn Văn A", "SV001", "01/01/2000");

// Gọi phương thức in thông tin sinh viên
$sinhVien->inThongTin();

echo $sinhVien->layThongTin();
?>
</body>
</html>