<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart Register Page</title>
</head>
<body>
	<div class="text-center" style="padding: 50px 0">
		<div class="logo">register</div>
		<div class="login-form-1">
			<form id="register-form" class="text-left" action="post">
				<div class="login-form-main-message"></div>
				<div class="main-login-form">
					<div class="login-group">
						<div class="form-group">
							<label for="username" class="sr-only">Email address</label> <input
								type="text" class="form-control" id="userID" name="userID"
								placeholder="username">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">Password</label> <input
								type="password" class="form-control" id="password"
								name="password" placeholder="password">
						</div>
						<div class="form-group">
							<label for="reg_password_confirm" class="sr-only">Password
								Confirm</label> <input type="password" class="form-control"
								id="password_confirm" name="password_confirm"
								placeholder="confirm password">
						</div>

						<div class="form-group">
							<label for="reg_email" class="sr-only">Email</label> <input
								type="text" class="form-control" id="reg_email" name="reg_email"
								placeholder="email">
						</div>
						<div class="form-group">
							<label for="fullname" class="sr-only">Full Name</label> <input
								type="text" class="form-control" id="reg_fullname"
								name="reg_fullname" placeholder="full name">
						</div>

						<div class="form-group login-group-checkbox">
							<input type="radio" class="" name="reg_gender" id="male"
								placeholder="username"> <label for="male">male</label> <input
								type="radio" class="" name="reg_gender" id="female"
								placeholder="username"> <label for="female">female</label>
						</div>

						<div class="form-group login-group-checkbox">
							<input type="checkbox" class="" id="reg_agree" name="reg_agree">
							<label for="reg_agree">i agree with <a href="#">terms</a></label>
						</div>
					</div>
					<button type="submit" class="login-button">
						<i class="fa fa-chevron-right"></i>
					</button>
				</div>
				<div class="etc-login-form">
					<p>
						already have an account? <a href="login">login here</a>
					</p>
				</div>
			</form>
		</div>
	</div>
</body>
</html>