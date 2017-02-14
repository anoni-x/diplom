<?php
	ob_start();
	session_start();
	require_once 'dbconnect.php';
	
	// it will never let you open index(login) page if session is set
	if ( isset($_SESSION['user'])!="" ) {
		header("Location: home.php");
		exit;
	}
	
	$error = false;
	
	if( isset($_POST['btn-login']) ) {	
		
		// prevent sql injections/ clear user invalid inputs
		$email = trim($_POST['email']);
		$email = strip_tags($email);
		$email = htmlspecialchars($email);
		
		$pass = trim($_POST['pass']);
		$pass = strip_tags($pass);
		$pass = htmlspecialchars($pass);
		// prevent sql injections / clear user invalid inputs
		
		if(empty($email)){
			$error = true;
			$emailError = "Please enter your email address.";
		} else if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {
			$error = true;
			$emailError = "Please enter valid email address.";
		}
		
		if(empty($pass)){
			$error = true;
			$passError = "Please enter your password.";
		}
		
		// if there's no error, continue to login
		if (!$error) {
			
			$password = hash('sha256', $pass); // password hashing using SHA256
		
			$res=mysql_query("SELECT userId, userName, userPass FROM users WHERE userEmail='$email'");
			$row=mysql_fetch_array($res);
			$count = mysql_num_rows($res); // if uname/pass correct it returns must be 1 row
			
			if( $count == 1 && $row['userPass']==$password ) {
				$_SESSION['user'] = $row['userId'];
				header("Location: home.php");
			} else {
				$errMSG = "Incorrect Credentials, Try again...";
			}
				
		}
		
	}
?>
<!DOCTYPE html>
<html>
<head>
<title>Diplom Work</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Badge Sign In Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

        

        
<link href="https://fonts.googleapis.com/css?family=Lobster|Russo+One" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
</head>
<body>

	<div class="main"> 
		<h1>Мінімум часу, Максимум об'єктивності</h1>
		<div class="login-form"> 
			<h2>Авторизуйся :3</h2> 
			<div class="agileits-top">
				<form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete="off">
				<?php
			if ( isset($errMSG) ) {
				
				?>
				<div class="form-group">
            	<div class="alert alert-danger">
				<span class="glyphicon glyphicon-info-sign"></span> <?php echo $errMSG; ?>
                </div>
            	</div>
                <?php
			}
			?>
					<div class="styled-input">
						<input class="text" type="text" name="email"  required="" value="<?php echo $email; ?>" maxlength="40" />
						<label>Ваша Почта</label>
						<span></span>
					</div>
					<div class="styled-input">
						<input class="text" type="password" name="pass" required=""  maxlength="15" />
						<label>Ваш Пароль</label>
						<span></span>
					</div> 
					<div class="wthree-text"> 
						<ul> 
							<li>
								<input type="checkbox" id="brand" value="">
								<label for="brand"><span></span> Залишити мене в системі</label>  
							</li>
							<li> <a href="register.php">Зареєструватися Зараз!</a> </li>
						</ul>
						<div class="clear"> </div>
					</div>
				
			</div>
			<div class="agileits-bottom">
			<input type="submit" value="Увійти" name="btn-login">
		</div>	
		</div>
		</form>
	</div>	
	<script src="js/pushy.min.js"></script>
	<div class="copyright">
		<p> © 2017 Diplom Work by Vasyl Fedko</p>
	</div>

</body>
</html>
<?php ob_end_flush(); ?>