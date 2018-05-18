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
		<title>CooPa</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" href="assets/css/imports.css" media="screen">
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" media="screen">
		<link rel="stylesheet" href="assets/css/owl-carousel.css" media="screen">
		<link rel="stylesheet" href="assets/css/design.css" media="screen">
		<link rel="icon" type="image/png" href="assets/images/favicon.ico"/>

	</head>

	<body class="home">


		<div id="top"></div>

		<!-- Header -->
		<?php 
		require_once 'layouts/header.php';
		 ?>

		<!-- Hero Section -->
		<section class="hero hero-overlap" style="background-image: url('assets/images/board.jpg');">
			<div class="bg-overlay">
				<div class="container">
					<div class="intro-wrap">
						<h1 class="intro-title"></h1>
						
					</div>
				</div>
			</div>
		</section>

		<!-- Featured Destinations
		================================================== -->
		<section class="featured-destinations">
			<div class="container">
				<div class="cards overlap">

					<!-- Section Title -->
					<div class="title-row">
						<h3 class="title-entry">لماذا كوبا</h3>
						<a href="allProject.php" class="btn btn-primary btn-xs">إقرأ المزيد &nbsp; <i class="fa fa-angle-right"></i></a>
					</div>

					<!-- Cards Row -->
					<div class="row">

						<?php
							require_once "users.php";
								
							require 'connect.php';

							$user = new User();
							$results = $user->allProject();
							$index = 0;
							foreach ($results as $result) : ?>
								<?php if ($index < 4) : ?>
									<?php $id_project = $result['id'];?>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<article class="card">
								<?php
									//echo '<a href="news.php?id='.$id_new .'" rel="bookmark">'; 
									echo '<a href="projectInfo.php?id='.$id_project .'" rel="bookmark" class="featured-image" style="background-image: url(assets/images/project.jpg)">';
								?>
								<!--<a href="projectInfo.php?id='.$id_project .'" class="featured-image" style="background-image: url(assets/images/projects.jpg)">-->
									<div class="featured-img-inner"></div>
								</a>'
								<div class="card-details" >
									<h4 class="card-title" style="text-align: right;"><?php echo $result['name'];?> </h4>
									<div class="meta-details clearfix">
										<span class="posted-on">
											<?php echo $result['confirmDate'] ?>
										</span>
									</div>
								</div>
							</article>
						</div>

						<?php $index++;  endif ?>
							<?php  endforeach ?>
					</div> <!-- /.row -->




				</div>
			</div>
		</section>

		<!-- Blog Posts -->
		<section class="regular blog-posts">
			<div class="container">
				<!-- Section Title -->
				<div class="title-row"><a href="CooPaNews.php" class="btn btn-primary btn-xs">... عرض &nbsp; </a>
					<h3 class="title-entry">الإعلانات</h3>
					
				</div>

				<div class="row">	
					<?php
							require_once "users.php";
								
							require 'connect.php';

							$user = new User();
							$results = $user->allNews();
							$index = 0;
							foreach ($results as $result) : ?>
								<?php if ($index < 4) : ?>
									<?php $id_new = $result['id'];?>
								<div class="col-lg-3 col-md-4 col-sm-6">
									<article class="post">
										<div class="card">
											<header class="entry-header">
												<?php
												echo '<a href="news.php?id='.$id_new .'" rel="bookmark">'; 
												?>
													<div class="entry-thumbnail" style="background-image: url(assets/images/blog-3-600x800.jpg)"> <img width="600" height="800" title="" alt="" src="assets/images/blog-placeholder-vertical.png"></div>
														<h2 class="entry-title">
															<?php echo $result['title'];?>
														</h2>
												</a>
											</header>
											<footer class="entry-meta clearfix"> <span class="byline"><i class="fa fa-user"></i> <span class="author vcard"><a class="url fn n" href="Profile/profile.php">
												<?php
													$user2 = new User();
													$userId = $result['userName'];
													echo '<a href="Profile/profile.php?id='.$userId.'" rel="author" class="url fn n">';
													$name = $user2->userInfo($userId);
												
													echo  $name['fName'] . "&nbsp" . $name['mName'] . "&nbsp" . $name['lName'];
												
												?>
											</a></span></span> 
											<span class="posted-on">
												<?php echo $result['date'] ?>
											</span> </footer>
										</div>
									</article>
								</div>
								<?php $index++;  endif ?>
							<?php  endforeach ?>
				</div>
			</div>
		</section>

        <!-- Footer -->
		<?php 
		require_once 'layouts/footer.php';
		 ?>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/owl.carousel.min.js"></script>
		<script src="assets/js/custom.js"></script>
	</body>
</html>