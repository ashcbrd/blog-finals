<!-- navbar_ -->
<?php if (isset($_SESSION['user']['username'])) { ?>
    <div class="navbar_ navbar-opaque">
        <div class="logo">
            <h1>Bloggers</h1>
        </div>
        <ul>
            <li><a class="active" href="index.php">Home</a></li>
            <li><a href="#news">Team</a></li>
            <li><a href="about.php">About</a></li>
        </ul>
    </div> 
	<div class="logged_in_info">
		<span><?php echo $_SESSION['user']['username'] ?></span> |
		<a href="logout.php"><span><i class="fa fa-sign-out"></i></span></a>
	</div>
<?php }else{ ?>
    <div class="navbar_ navbar-opaque">
        <div class="logo">
            <h1>Bloggers</h1>
        </div>
        <ul>
            <li><a class="active" href="index.php">Home</a></li> 
            <li><a href="team.php">Team</a></li>
            <li><a href="about.php">About</a></li>
        </ul>
    </div>
<?php } ?>
<!-- // navbar_ -->