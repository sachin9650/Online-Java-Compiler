<%@ taglib uri="/struts-tags" prefix="s"%>

<html>
	<head>
	
	<script>
	function emailValidation()
	{
	
	var x = document.getElementById("email").value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
	{
        document.getElementById("email_error").innerHTML="Not a valid e-mail address";
        return false;
    }
	else
	{
		var xmlHttp;
   
		if (window.XMLHttpRequest)
		{
			xmlHttp=new XMLHttpRequest(); //To support the browsers IE7+, Firefox, Chrome, Opera, Safari
		}
		else if(window.ActiveXObject)
		{
			xmlHttp=new ActiveXObject("Microsoft.XMLHTTP"); // For the browsers IE6, IE5 
		}
		else
		{
			alert("Error due to old verion of browser upgrade your browser");
		}
	
		xmlHttp.onreadystatechange=function()
		{
			if (xmlHttp.readyState==4) 
			{
			
				if(xmlHttp.status==200) 
				{
					var text=xmlHttp.responseText;
					var d = $(text);
					if(((d.text()).trim())=="true")
						document.getElementById("email_error").innerHTML="Email is registered";
					else
						document.getElementById("email_error").innerHTML="Email is not registered";
				}
			}
		}
		var emailname=document.getElementById("email").value;
	
		xmlHttp.open("GET","email_validation.jsp?emailname="+emailname,true);
		xmlHttp.send();
	}
}

	
	function passwordValidation()
	{
		var userName=document.getElementById("password");
		if(password.value.length<6)
			document.getElementById("password_error").innerHTML="Password should be atleast 6 characters long";
	}
	
	</script>
	<style>
		.login
		{
			width:100%;
			height:500px;
			border-style:groove;
			border-width: 10px;
			background-image:url("menu.png");
		}
		
		.login_logo
		{
			height:100px;
			display:block;
			margin-left: auto;
			margin-right: auto;
		}
		.heading
		{
			text-align:center;
			font-family:CenturySchoolbook;
			font-size:20px;
			color:green;
		}
		
	</style>
	<body>
	
	<div class="login">
		<p class="heading">Sign In to Continue </p>
		<img class="login_logo" src="login_logo.png" />

		<s:form action="login_action" theme="simple" validate="true">
			<br /><br /><br />
			<center><label for="email">Email-Id &nbsp;&nbsp;:</label>&nbsp;&nbsp;<s:textfield name="email" id="email" onfocusout="emailValidation()"/>&nbsp;&nbsp;<div id="email_error"></div></center>
			<br />
			<center><label for="password">Password :</label>&nbsp;<s:password name="password" id="password" onfocusout="passwordValidation()"/> &nbsp;&nbsp;<div id="password_error"></div></center>
			<br />
			
			<center><s:submit value="Login" class="btn"/></center>
		</s:form>
		<br />
		<p style="text-align:center;font-size:20px;font-family:CenturySchoolbook"><a href="registration.jsp">Create Account</a></p>
	</div>
	</body>
</html>