<?php if (isset($_SESSION['user']['username'])) { ?>
	<div class="logged_in_info">
		<span><?php echo $_SESSION['user']['username'] ?></span> |
		<a href="logout.php"><span><i class="fa fa-sign-out"></i></span></a>
	</div>
<?php }else{ ?>
	<div class="banner">
		<div class="welcome_msg">
			<a href="register.php" class="main-btn">Join us!</a>
		</div>
	</div>
<?php } ?>




