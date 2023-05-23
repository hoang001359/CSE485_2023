<h1>QUẢN LÝ SINH VIÊN</h1>
	<table>
		<tr>
            <th>Mã sinh viên</th>
			<th>Họ và tên</th>
			<th>Tuổi</th>
		</tr>
		<?php
<<<<<<< HEAD
			//fopen(<file>, "r")Chỉ có thể đọc (bắt đầu đọc từ vị trí đầu tiên của tập tin)
			$file = fopen("../dssv.txt", "r");
=======
			$file = fopen("dssv.txt", "r");
>>>>>>> 5865e0f5924c26794d8dc7690a6d9a776f542645
			$dataList = array();
			while (!feof($file)) {
				$line = fgets($file);
				$data = explode(",", $line);
				array_push($dataList, $data);
			}
			fclose($file);

			foreach ($dataList as $data) {
				echo "<tr><td>" . $data[0] . "</td><td>" . $data[1] . "</td><td>" . $data[2] ."</td></tr>";
			}
		?>
	</table>
