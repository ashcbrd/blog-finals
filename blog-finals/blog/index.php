<!-- The first include should be config.php -->
<?php require_once('config.php') ?>
<?php require_once( ROOT_PATH . '/includes/head_section.php') ?>
<?php require_once( ROOT_PATH . '/includes/public_functions.php') ?>
<?php require_once( ROOT_PATH . '/includes/registration_login.php') ?>


<script defer src="static/js/fontawesome/all.min.js"></script>

<!-- Retrieve all posts from database  -->
<?php $posts = getPublishedPosts(); ?>

<body>
	<!-- container - wraps whole page -->
	<div class="container">
		<div class="header">
			<!-- navbar_ -->
		<?php include( ROOT_PATH . '/includes/navbar.php') ?>
		<!-- // navbar_ -->
		<div class="welcome_msg">
			<h1>“There’s a lot of information out there for free, so you’ve got to figure out what makes your information different.”</h1>
		</div>
		<!-- banner -->
		<?php include( ROOT_PATH . '/includes/banner.php') ?>
		<!-- // banner -->

		</div>
		<!-- Page content -->
		<div class="content">
			<?php foreach ($posts as $post): ?>
				<div class="post" style="margin-left: 0px;">
					<img src="<?php echo BASE_URL . '/static/images/' . $post['image']; ?>" class="post_image" alt="">
					<?php if (isset($post['topic']['name'])): ?>
						<a 
							href="<?php echo BASE_URL . 'filtered_posts.php?topic=' . $post['topic']['id'] ?>"
							class="btn category">
							<?php echo $post['topic']['name'] ?>
						</a>
					<?php endif ?>

					<a href="single_post.php?post-slug=<?php echo $post['slug']; ?>">
						<div class="post_info">
							<h3><?php echo $post['title'] ?></h3>
							<div class="info">
								<span><?php echo date("F j, Y ", strtotime($post["created_at"])); ?></span>
								<span class="read_more">Read more...</span>
							</div>
						</div>
					</a>
				</div>
			<?php endforeach ?>

		</div>
		<!-- // Page content -->

		<!-- footer -->
		<?php include( ROOT_PATH . '/includes/footer.php') ?>

		<script src="js/jquery-3.5.0.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
		<!-- // footer -->