<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="css/Studentmanagement.css">
    <title>QUẢN LÝ SINH VIÊN</title>
</head>

<body>
    <div id="table">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Mã sinh viên</th>
                    <th scope="col">Họ và tên</th>
                    <th scope="col">Sửa</th>
                    <th scope="col">Xóa</th>
                </tr>
            </thead>
            <tbody>
                <?php
	                $file = fopen("dssv.txt", "r");
	                $table = '<table>';
	                while (!feof($file)) {
		                $line = fgets($file);
		                $data = explode(",", $line);
		                echo "<tr>";
                        echo "<td>" . $data[0] . "</td>";
                        echo "<td>" . $data[1] . "</td>";
                        echo "<td><a href='EditStudent.php?id=" . $data[0] . "'><i class='bi bi-pencil-square'></i></a></td>";
                        echo "<td><a href='DeleteStudent.php?id=" . $data[0] . "'><i class='bi bi-trash-fill'></i></a></td>";
                        echo "</tr>";
	                }
	            fclose($file);
?>
            </tbody>
        </table>
    </div>
</body>

</html>
