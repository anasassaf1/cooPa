<!DOCTYPE html>
<html lang="en" class="cover">
	<head>
		<meta charset="utf-8">
		<title>تسجيل الدخول</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" href="assets/css/imports.css" media="screen">
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" media="screen">
		
	</head>

	<body class="login">

		<div id="login">
			<h1><a href="index.php">
				<img src="assets/images/login-logo.png" alt="Logo" style="max-height:200px; width:auto; max-width:100%;">
			</a></h1>
			
			<form id="loginform" method="post" action="login.php">

				<?php //include('errors.php'); ?>
				<p>
					<label for="user_login">رقم المستخدم<br>
					<input type="text" name="username" id="user_login" class="input" value="" size="20"></label>
				</p>

				<p>
					<label for="user_pass">كلمة المرور<br>
					<input type="password" name="password" id="user_pass" class="input" value="" size="20"></label>
				</p>

				<p class="forgetmenot"><label for="rememberme"><input name="rememberme" type="checkbox" id="rememberme" value="forever"> تذكرني</label></p>

				<p class="submit">
					<input type="submit" name="login_user" id="submit" class="button button-primary button-large" value="تسجيل الدخول">
				</p>
				<p style="color: white">
					لست عضو ؟ <a href="signup.php">تسجيل الإشتراك</a>
				</p>

			</form>
		</div> <!-- /login -->

	</body>
</html>

<?php
	require_once "users.php";
		$errors = array(); 

	if (isset($_POST['login_user'])) {
		require 'connect.php';

		$username = mysqli_real_escape_string($conn, $_POST['username']);
		$password = mysqli_real_escape_string($conn, $_POST['password']);

		if (empty($username)) {
			array_push($errors, "Username is required");
		}
		if (empty($password)) {
			array_push($errors, "Password is required");
		}
		
		if (count($errors) == 0) {
			$password = md5($password);
			$user = new User();
			$results = $user->login($username,$password);
			
			if ($results) {
				header('location: http://localhost/dashboard/OOP/member.php');
				/*
				$info = $user->userInfo($username);
				$type = $info['type'];
				switch ($type) {
					case '1':
						header('location: http://localhost/dashboard/OOP/manager.php');
						break;
					case '2':
						header('location: http://localhost/dashboard/OOP/cashier.php');
						break;
					case '3':
						header('location: http://localhost/dashboard/OOP/secretary.php');
						break;
					case '4':
						header('location: http://localhost/dashboard/OOP/accountent.php');
						break;
					case '5':
						header('location: http://localhost/dashboard/OOP/adviser.php');
						break;
					
					default:
						
						break;
						*/
				
			}
			else{
				array_push($errors, "Wrong username/password combination");
			}	
		}
		else{
			header('location: http://localhost/dashboard/OOP/login.php');
		}
	}
?>