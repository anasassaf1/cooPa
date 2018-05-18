<?php 
	session_start();

	if (!isset($_SESSION['UserName'])) {
		header('location: index.php');
	}

?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>CooPa News</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" href="assets/css/imports.css" media="screen">
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" media="screen">
		
	</head>

	<body class="blog">

		<div id="top"></div>

		<!-- Header -->
		<?php 
		require_once 'layouts/header.php';
		 ?>

		<!-- Hero Section -->
		<section class="hero small-hero" style="background-image:url(assets/images/hero-00.jpg);">
			<div class="bg-overlay">
				<div class="container" style="">
					<div class="intro-wrap">
						
					</div>
				</div>
			</div>
		</section>

		<!-- Blog Posts -->
		<section class="main container">

			<ul class="list-group" style="text-align: right;position: initial;float: right;width: 70%">
				<li class="list-group-item list-group-item-primary" style="background-color: rgb(65, 181, 244 ,0.6)">
				  	<span class="col-sm-8 col-md-7 ">البريد الإلكتروني</span>
				  	<span class="col-sm-8 col-md-4 ">الإسم</span>
				  	<span>الرقم</span>
				 </li>
				 <br>
					<?php
						require_once "users.php";
									
						require 'connect.php';

						$user = new User();
						$results = $user->allIntersts();
						foreach ($results as $result) : ?>	  
				  			<li class="list-group-item list-group-item-primary" style="background-color: rgb(65, 242, 171 ,0.6)">
				  				<span class="col-sm-8 col-md-7 "><?php echo $result['email'];?></span>
				  				<span class="col-sm-8 col-md-4 "><?php echo $result['name'];?></span>
				  				<span><?php echo $result['id'];?></span>
				  			</li>
				  			<br>
				  	<?php  endforeach ?>
			  
			</ul>
		</section>

		<!-- Contact Us -->
		<?php 
		require_once 'layouts/contact.php';
		 ?>

        <!-- Footer -->
		<?php 
		require_once 'layouts/footer.php';
		 ?>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/custom.js"></script>
	</body>
</html>

