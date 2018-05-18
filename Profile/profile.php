<?php
	session_start();
	require_once "../users.php";
	$errors = array(); 

		if (isset($_SESSION['UserName'])){
			require '../connect.php';
			$user = new User();
			

			if (isset($_GET['id'])) {
				$username = $_GET['id'];
			}
			else{
				$username = $_SESSION['UserName'];
			} 

			if (isset($_POST['upload'])) {

				// Get image name
		  		$image = $_FILES['image']['name'];

		  		// image file directory
		  		$target = "images/".basename($image);
				
				if (empty($image)) {
				array_push($errors, "Image feald is required");
				}
				if (count($errors) == 0) {
					$results = $user->upload_Image($image,$username);
					if ($results) {
						if(move_uploaded_file($_FILES['image']['tmp_name'], $target)){
							//echo "file uploaded";
						}
						else{
							echo "file not uploaded";
						}
					}
					else{
						echo "query not executed";
					}
				}
			
			}		
			$result = $user->get_Image($username);
			while ($row = mysqli_fetch_array($result)){
				$path =$row['picture'];	 
			}

			$info = $user->userInfo($username);
			$fname = $info['fName'];
			$mname = $info['mName'];
			$lname = $info['lName'];
			$email = $info['email'];
			$phone = $info['phone'];
					
		}

?>
<!DOCTYPE HTML>
<html>
	<head>
	
		<title>Profile</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link href="https://fonts.googleapis.com/css?family=Space+Mono" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
		
		<!-- Animate.css -->
		<link rel="stylesheet" href="css/animate.css">
		<!-- Icomoon Icon Fonts-->
		<link rel="stylesheet" href="css/icomoon.css">
		<!-- Bootstrap  -->
		<link rel="stylesheet" href="css/bootstrap.css">

		<!-- Theme style  -->
		<link rel="stylesheet" href="css/style.css">

		<!-- Modernizr JS -->
		<script src="js/modernizr-2.6.2.min.js"></script>


		<link rel="stylesheet" href="../assets/css/bootstrap.min.css" media="screen">
		<link rel="stylesheet" href="../assets/css/owl-carousel.css" media="screen">
		<link rel="stylesheet" href="../assets/css/design.css" media="screen">
		
		
	</head>
	<body>

	<!-- Header -->
		<?php 
		require_once 'header.php';
		 ?>


<div id="page" style="display: block;">	
	<header id="fh5co-header" class="fh5co-cover js-fullheight" role="banner" style="background-image:url(images/cover_bg_333.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<div class="display-t js-fullheight">
						<div class="display-tc js-fullheight animate-box" data-animate-effect="fadeIn">
						

							<form method="POST" action="profile.php" enctype="multipart/form-data">
							  	<input type="hidden" name="size" value="1000000">
							  	<div>
							  	  <input type="file" name="image" accept=".jpg, .jpeg, .png" class="profile-thumb" style="background: url(images/<?php echo $path; ?>);">	  
							  	</div>
							  	
							  	<div>
							  		
							  		<input type="submit" name="upload">
							  	</div>
							 </form>
							<h1><span>
									<?php  
										echo $info['fName']."&nbsp".$info['lName'];
									?>
								</span></h1>
							<h3><span>Web Developer / Photographer</span></h3>
							<p>
								<ul class="fh5co-social-icons">
									<li><a href="#"><i class="icon-twitter2"></i></a></li>
									<li><a href="#"><i class="icon-facebook2"></i></a></li>
									<li><a href="#"><i class="icon-linkedin2"></i></a></li>
									<li><a href="#"><i class="icon-dribbble2"></i></a></li>
								</ul>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div id="fh5co-about" class="animate-box">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>معلوماتي الشخصية</h2>
				</div>
			</div>
			<div class="row" style="">
				
				<div class="col-md-8" style="text-align: right;">
					<h2>Hello There!</h2>
					<p>There live the blind texts far from the countries rom the countries.</p>
					<p>Far far away, behind the word mountains, Quos quia provident consequuntur culpa facere ratione maxime commodi   id repellat velit eaque aspernatur expedita. Possimus itaque adipisci.</p>
					<p>
						<ul class="fh5co-social-icons">
							<li><a href="#"><i class="icon-twitter2"></i></a></li>
							<li><a href="#"><i class="icon-facebook3"></i></a></li>
							<li><a href="#"><i class="icon-linkedin2"></i></a></li>
							<li><a href="#"><i class="icon-dribbble2"></i></a></li>
						</ul>
					</p>
				</div>
				<div class="col-md-4" style="text-align: right;">
					<ul class="info">
						<li><span class="first-block">
							<?php  
								echo $info['fName']."&nbsp".$info['mName']."&nbsp".$info['lName'];
							?>
						</span><span class="second-block"> :الإسم الكامل</span></li>
						<li><span class="first-block">
							<?php  
								echo $info['phone'];
							?>
						</span><span class="second-block"> :رقم الهاتف</span></li>
						<li><span class="first-block">
							<?php  
								echo $info['email'];
							?>
						</span><span class="second-block">:البريد الإلكتروني</span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

</div>

	<!-- Footer -->
		<?php 
		require_once '../layouts/footer.php';
		 ?>

	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Easy PieChart -->
	<script src="js/jquery.easypiechart.min.js"></script>
	<!-- Google Map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="js/google_map.js"></script>
	
	<!-- Main -->
	<script src="js/main.js"></script>

	

	</body>
</html>

