<div class="header">
	<div class="logo">
		<a href="<?php echo BASE_URL .'admin/dashboard.php' ?>">
			<h1>Bloggers Admin</h1>
		</a>
	</div>
	<div class="user-info">
		<span><?php echo $_SESSION['user']['username'] ?> </span> <a href="<?php echo BASE_URL . 'logout.php'; ?>" class="logout-btn"><span style="color:#fff;">| logout</span></a>
	</div>
</div>	