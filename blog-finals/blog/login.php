<?php  include('config.php'); ?>
<?php  include('includes/registration_login.php'); ?>
<?php  include('includes/head_section.php'); ?>
	<title>BSIT3A Blog | Sign in </title>
<div class="container">
	<!-- navbar_ -->
	<?php include( ROOT_PATH . '/includes/navbar-opaque.php'); ?>
	<!-- // navbar_ -->

	<div style="width: 40%; margin: 20px auto;">
		<form method="post" action="login.php" >
			<h2>Login</h2>
			<?php include(ROOT_PATH . '/includes/errors.php') ?>
			<input type="text" name="username" value="<?php echo $username; ?>" value="" placeholder="Username">
			<input type="password" name="password" placeholder="Password">
			<button type="submit" class="btn lgn-btn" name="login_btn">Login</button>
			<button type="reset" class="btn lgn-btn" name="login_btn">Reset</button>
		</form>	
		<p class="switch">
				Not yet a member? <a href="register.php">Sign up</a>
			</p>
	</div>
</div>
<!-- // container -->

<!-- Footer -->
	<?php include( ROOT_PATH . '/includes/footer.php'); ?>
<!-- // Footer -->

