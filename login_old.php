<?php session_start();
error_reporting(0);
 	include ('connectserver.php');
	 
	 if (isset($_SESSION['username'])){
        header('location: detailsaving.php');
    }
	 
?>

<!DOCTYPE html>
<html lang="en">

<head>

		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="https://unpkg.com/bootstrap@4.5.0/dist/css/bootstrap.min.css" >
    	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" >
		<title>login</title>


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
									<input type="text" name="username" id="username" class="form-control" placeholder="ID">
								</div>
								<div class="form-group">
									<label for="password" class="text-info">Password:</label><br>          
									
									<div class="input-group">
										<input type="password" name="password" id="password" class="form-control pass-swap" placeholder="Password">
										<div class="input-group-append">
											<button class="btn btn-light">
											<i class="fa fa-eye"></i>
											</button>
										</div>      
									</div>      
        						</div>
							
								<input type="submit"  class="btn btn-info btn-md" value="submit">

								
								
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</div>
  
<script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>
<script src="https://unpkg.com/bootstrap@4.5.0/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){

     // กรณีใช้ร่วมกับ bootstrap และ fontawesome 
     $(document.body).on("click","[class*='fa-eye']",function(){
         $(this).toggleClass("fa-eye-slash fa-eye");  
         let ele = $(this).closest(".input-group-append").siblings(".pass-swap");
         let swap_attr = (ele.attr("type")=="password")?"text":"password";
         ele.attr("type",swap_attr);         
     });     
});
</script>
	


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