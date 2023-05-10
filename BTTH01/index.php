

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<link rel="stylesheet" href="css/index.css">
	<title>STUDENT MANAGEMENT</title>
</head>
<body>
	<div id="div-title">
		<h1 id ="title">NHẬP THÔNG TIN SINH VIÊN</h1>
	</div>
	
	<form id="formInput" method="POST" action="index.php">
		<div id="txt" class="mb-3">
  			<label for="formGroupExampleInput" class="form-label">Mã sinh viên</label>
  			<input type="text" id="id" name="id" class="form-control" id="formGroupExampleInput" placeholder="Nhập mã SV">
		</div>
		<div id="txt" class="mb-3">
			<label for="formGroupExampleInput2" class="form-label">Họ và tên</label>
			<input type="text" id="name" name="name" class="form-control" id="formGroupExampleInput2" placeholder="Nhập họ và tên">
		</div>
		<div id="txt" class="mb-3">
			<label for="formGroupExampleInput2" class="form-label">Tuổi</label>
			<input type="text" id="age" name="age" class="form-control" id="formGroupExampleInput2" placeholder="Nhập tuổi">
		</div>
		<input id="submitbtn"  type="submit" value="Submit">
		<div id="btnEdit">
		<a class="btn btn-primary" href="Studentmanagement.php" role="button">QUẢN LÍ SANH SÁCH</a>
	</div>
	</form>
	


	<script>
		if( window.history.replaceState ){
			window.history.replaceState(null,null,window.location.href);
		}
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
