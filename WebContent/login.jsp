<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Struts2 - XML Configurations- MySQL - Login</title>

<!-- link css -->
<link rel="stylesheet" type="text/css" href="css/main.css">

<!-- Link JQuery file -->
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>

<style type="text/css">
.wwFormTable {
	border: 1px solid black;
}

.tdLabel {
	float: right;
	padding-top: 3px;
	border: 1px solid black;
}

.errMsg {
	color: red;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$('#login_label_button_submit').click(function() {
			var userNameEntered = $('#login_username').val().trim();			
			if (userNameEntered == "") {
				alert("Please enter username.");
				$('#login_username').val("");
				$('#login_username').focus();
				return false;
			}
			if((/^[a-zA-Z0-9-_.]*$/.test(userNameEntered)) == false) {
			    alert("username contains illegal characters.");
			    $('#login_username').focus();
			    return false;
			}
			var passwordEntered = $('#login_password').val().trim();
			if (passwordEntered == "") {
				alert("Please enter password.");
				$('#login_password').val("");
				$('#login_password').focus();
				return false;
			}
			if((/^[a-zA-Z0-9-_.]*$/.test(passwordEntered)) == false) {
			    alert("password contains illegal characters.");
			    $('#login_password').focus();
			    return false;
			}
		});
	});
	
</script>


</head>
<body>

	<br>

	<h2 align="center">Login functionality implemented using Struts
		2.x, XML Configurations and MySQL</h2>

	<s:form action="login.action" method="post" theme="simple">
		<table align="center">
			<tr>
			<td >username :</td>
				<td ><s:textfield name="username" key="label.username.value"
						align="center" theme="simple" /></td>
			</tr>
			<tr>
			<td >password :</td>
				<td ><s:password name="password" key="label.password.value"
						align="center" theme="simple" /></td>
			</tr>
			<tr>
				<td ><s:submit method="execute" key="label.button.submit"
						align="center" theme="simple" /></td>
				<td > </td>		
			</tr>			
			<tr>
			<td colspan="2" class="errMsg" align="center"> <s:actionerror /></td>
		</table>
	</s:form>

</body>
</html>