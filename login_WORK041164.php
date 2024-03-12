<?php session_start();
error_reporting(0);
 	include ('connectserver.php');?>

<!DOCTYPE html>
<html lang="en">

<head>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<link rel="stylesheet" href="css/bootstrap.min.css">

		<title>login</title>
	</head>

</head>


<body>
	<!-- Image and text -->

	<div class="container-fluid">

		<nav class="navbar" style="background-color: #8bcf3e;">
		</nav>
</div>
		<div id="login">
			
			</div>
			<h3 class="text-center text-white pt-5">Login form</h3>
			<div class="container">
				<div id="login-row" class="row justify-content-center align-items-center">
					<div id="login-column" class="col-md-6">
						<div id="login-box" class="col-md-12">
						<?php if (isset($_SESSION['error']))  ?>
							<div class="error">
							<h5>
								<?php 
									echo $_SESSION['error'];
									unset($_SESSION['error']);
									
								?>
							</h5>
							<form id="login-form" class="form" action="check_connect.php" method="POST">
								<h3 class="text-center text-info">Login</h3>
								<div class="form-group">
									<label for="username" class="text-info">Username:</label><br>
									<input type="text" name="username" id="username" class="form-control">
								</div>
								<div class="form-group">
									<label for="password" class="text-info">Password:</label><br>
									<input type="text" name="password" id="password" class="form-control">
								</div>
								<div class="form-group">
									<label for="remember-me" class="text-info"><span>Remember me</span> <span><input
												id="remember-me" name="remember-me" type="checkbox"></span></label><br>
									<input type="submit"  class="btn btn-info btn-md" value="submit">
								</div>
								
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
		integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"
		integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/"
		crossorigin="anonymous"></script>
</body>

</html>