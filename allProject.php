<?php 
	session_start();

	if (!isset($_SESSION['UserName'])) {
		header('location: index.php');
	}
	require_once "users.php";
								
	require 'connect.php';

	$generalId = $_SESSION['UserName'];
	$user3 = new User();
	$about = $user3->userInfo($generalId);

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
					<div class="intro-wrap" style="float: right; position: initial; margin-top: 300px;">
						<h1 class="intro-title">المشاريع المطروحة</h1>
					</div>
				</div>
			</div>
		</section>

		<!-- Blog Posts -->
		<section class="main container">

			<!-- <hr class="small"></hr> -->

			<div class="row blog-posts">
				<div id="content" class="col-lg-12">
					<div class="row">
						<?php if ($about['type'] == 3 || $about['type'] == 5) 
							echo '<h4 style="color: red; text-align: right;">المشاريع التي باللون الأحمر تدل على أنها معروضة لكل الأعضاء</h4>';
						?>
						<?php
							require_once "users.php";
								
							require 'connect.php';

							$user = new User();
							$results = $user->allProject();

							foreach ($results as $result) : ?>
							<?php if ($result['hide'] == 0) : ?>
								<?php if ($about['type'] == 3 || $about['type'] == 5) : ?>

								<div class="col-lg-3 col-md-4 col-sm-6">
									<article class="posts tag-fly tag-kids tag-location tag-planning tag-tickets tag-time-of-year tag-train tag-travel tag-vacation">
										<div class="card">
											<header class="entry-header">
												<?php
													$id_project = $result['id'];
													echo '<a href="projectInfo.php?id='.$id_project.'" rel="bookmark">';
												?>
													<div class="entry-thumbnail" style="background-image: url(assets/images/blog-3-600x800.jpg)"> <img width="600" height="800" title="" alt="" src="assets/images/blog-placeholder-vertical.png"></div>
														<h2 class="entry-title">
															<?php echo $result['name'];?>
														</h2>
												</a>
											</header>
											<footer class="entry-meta clearfix"> <span class="byline"><i class="fa fa-user"></i> <span class="author vcard">
												<?php
												$username = $result['acceptUserName'];
													echo '<a href="Profile/profile.php?id='.$username.'" rel="author">'; 

													$user2 = new User();
													$userId = $result['acceptUserName'];
													$info = $user2->userInfo($userId);
												
													echo  $info['fName'] . "&nbsp" . $info['mName'] . "&nbsp" . $info['lName'];
												
												?>
											</a></span></span> <span class="posted-on">
												<?php echo $result['confirmDate'] ?>
											</span> </footer>
										</div>
									</article>
								</div>
								<?php  endif ?>

								<?php else : ?>
										<div class="col-lg-3 col-md-4 col-sm-6">
									<article class="posts tag-fly tag-kids tag-location tag-planning tag-tickets tag-time-of-year tag-train tag-travel tag-vacation">
										<div class="card">
											<header class="entry-header">
												<?php
													$id_project = $result['id'];
													echo '<a href="projectInfo.php?id='.$id_project.'" rel="bookmark">';
												?>
													<div class="entry-thumbnail" style="background-image: url(assets/images/blog-3-600x800.jpg)"> <img width="600" height="800" title="" alt="" src="assets/images/blog-placeholder-vertical.png"></div>
													<?php
														if ($about['type'] == 3 || $about['type'] == 5) {
														  	echo '<h2 class="entry-title" style="color: red">';
														  } 
														  else{
														  	echo '<h2 class="entry-title">';
														  } 
													?>
														
															<?php echo $result['name'];?>
														</h2>
												</a>
											</header>
											<footer class="entry-meta clearfix"> <span class="byline"><i class="fa fa-user"></i> <span class="author vcard">
												<?php
												$username = $result['acceptUserName'];
													echo '<a href="Profile/profile.php?id='.$username.'" rel="author">'; 

													$user2 = new User();
													$userId = $result['acceptUserName'];
													$info = $user2->userInfo($userId);
												
													echo  $info['fName'] . "&nbsp" . $info['mName'] . "&nbsp" . $info['lName'];
												
												?>
											</a></span></span> <span class="posted-on">
												<?php echo $result['confirmDate'] ?>
											</span> </footer>
										</div>
									</article>
								</div>

									
									<?php  endif ?>

							<?php  endforeach ?>

					</div>
				</div>
			</div>
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

