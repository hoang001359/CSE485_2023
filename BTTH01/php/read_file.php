
<?php
	$file = fopen("dssv.txt", "r");
	$table = '<table>';
	// $dataList = array();
	while (!feof($file)) {
		$line = fgets($file);
		$data = explode(",", $line);
		// array_push($dataList, $data);
		$table .= '<tr>';
		foreach ($data as $i) {
			$table .= '<td>' . $i . '</td>';
		}
		$table .= '</tr>';
	}
	fclose($file);
	$table .= '</table>';
	echo $table;
?>

