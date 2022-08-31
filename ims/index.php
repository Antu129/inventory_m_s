<?php 
	include ("connection.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Login-Inventory Management System</title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
	
	<div class="container">
		<div class="loginHeader">
			<h3>Inventory Management System</h3>
			<h4>Admin Login</h4>
		</div>
		
		<div class="loginBody">
			<div align=center>
				<form method="POST" name="form1">
					<div class="loginInputContainer">
						<label for="username">Username</label> <br>
						<input required class="input" type="text" name="username" id="username" placeholder="Enter your username"> <br>
					</div>
					<div class="loginInputContainer">
						<label for="password">Password</label> <br>
						<input required class="input" type="password" name="password" id="password" placeholder="Enter password"> <br>
					</div>
					<input type="submit" name="submit1" class="btn" value="Login">
				</form>
				
			</div>
		</div>
	</div>


<?php
    
	if(isset($_POST['submit1'])){
		$username = mysqli_real_escape_string($conn, $_POST["username"]);
		$password = mysqli_real_escape_string($conn, $_POST["password"]);

		$count = 0;
		
		$res = mysqli_query($conn, "SELECT * FROM `admin` WHERE username='$username' && password='$password'");
		$count = mysqli_num_rows($res);
		
		if($count>0)
		{
?>
			<script type="text/javascript">
				window.location = "dashboard.php";
			</script>
			<?php
		}
		else{
			?>
			<div class="alert" style="background-color: #302b2bc7; max-width: 31%;margin: auto;color: rgb(243 66 66 / 92%);font-size: 30px;margin-left: 35%;font-weight: 500; text-align: center;">Invalid username or password</div>

			<?php
		}
	}
?>
</body>
</html>