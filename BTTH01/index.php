<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $id = $_POST["id"];
        $name = $_POST["name"];
        $age = $_POST["age"];
        
        $file = fopen("dssv.txt", "r");
	$data = array();
	while (!feof($file)) {
		$line = fgets($file);
		if (!empty($line)) {
			$fields = explode(",", $line);
			$data[] = array("id" => $fields[0], "name" => $fields[1], "age" => $fields[2]);
		}
	}
	fclose($file);

	$is_duplicate = false;
	foreach ($data as $item) {
		if ($item["id"] == $id && $item["name"] == $name && $item["age"] == $age) {
			$is_duplicate = true;
			break;
		}
	}

	if (!$is_duplicate) {
		$file = fopen("dssv.txt", "a");
		fwrite($file, $id . "," . $name . "," . $age . "\n");
		fclose($file);

		echo "Dữ liệu đã được ghi vào file.";
	} else {
		echo "Dữ liệu đã tồn tại trong file.";
	}
    }
    //include "";
?>

<!DOCTYPE html>
<html>
<head>
	<title>Form nhập thông tin sinh viên</title>
</head>
<body>
	<h2>Thông tin sinh viên</h2>
	<form method="POST" action="index.php">
        <label for="text">Mã sinh viên:</label><br>
		<input type="text" id="id" name="id" required><br>

		<label for="name">Họ và tên:</label><br>
		<input type="text" id="name" name="name" required><br>

		<label for="age">Tuổi:</label><br>
		<input type="number" id="age" name="age" required><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>