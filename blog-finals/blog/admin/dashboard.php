<?php  include('../config.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/head_section.php'); ?>
	<script defer src="./static/js/fontawesome/all.min.js"></script>
	<title>Admin | Dashboard</title>
</head>
<body>
	<div class="header">
		<div class="logo">
			<a href="<?php echo BASE_URL .'admin/dashboard.php' ?>">
				<h1>Bloggers - Admin</h1>
			</a>
		</div>

		<a href='../index.php'>Home</a>
	</div>
	<div class="container dashboard">
		<h1>Welcome</h1>
		<div class="stats">
			<a href="users.php" class="first">
				<span>Registered users</span>
			</a>
			<a href="posts.php">
				<span>Published posts</span>
			</a>
			<a>
				<span>Published comments</span>
			</a>
		</div>
		<br><br><br>
		<div class="buttons">
			<a href="users.php">Add Users</a>
			<a href="posts.php">Add Posts</a>
		</div>
	</div>
		<?php include( ROOT_PATH . '/includes/footer.php') ?>
</body>
</html>