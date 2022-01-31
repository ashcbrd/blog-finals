<?php  include('config.php'); ?>
<!-- Source code for handling registration and login -->
<?php  include('includes/registration_login.php'); ?>

<?php include('includes/head_section.php'); ?>

<title> Bloggers | Sign up </title>
<div class="container">
	<!-- Navbar -->
		<?php include( ROOT_PATH . '/includes/navbar-opaque.php'); ?>
	<!-- // Navbar -->

	<div class="lgn-container" style="width: 40%; margin: 20px auto;">
		<form method="post" action="register.php" >
			<h2>Register on Bloggers</h2>
			<?php include(ROOT_PATH . '/includes/errors.php') ?>
			<input  type="text" name="username" value="<?php echo $username; ?>"  placeholder="Username">
			<input type="email" name="email" value="<?php echo $email ?>" placeholder="Email">
			<input type="password" name="password_1" placeholder="Password">
			<input type="password" name="password_2" placeholder="Password confirmation">
			<button type="submit" class="btn lgn-btn" name="reg_user">Register</button>
			<button type="reset" class="btn lgn-btn" name="login_btn">Reset</button>
		</form>
			<p class="switch">
				Already a member? <a href="login.php">Sign in</a>
			</p>
	</div>
</div>
<!-- // container -->
<!-- Footer -->
	<?php include( ROOT_PATH . '/includes/footer.php'); ?>
<!-- // Footer -->