<%@ taglib uri="/struts-tags" prefix="s"%>

<html>
	<head>
	<script>
		function myUserValidation()
		{
			
			var userName=document.getElementById("usrName");
			var userError=document.getElementById("un_error");
			if(userName.value=="")
				userError.innerHTML="User Name can't be empty";
			else
				userError.innerHTML="";
		}
		
	function emailValidation()
	{
	
	var x = document.getElementById("email").value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
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
				if(((d.text()).trim())=="false")
					document.getElementById("email_error").innerHTML="Email is valid";
				else
					document.getElementById("email_error").innerHTML="This Email is already taken";
			}
		}
	}
	var emailname=document.getElementById("email").value;
	
	xmlHttp.open("GET","email_validation.jsp?emailname="+emailname,true);
	xmlHttp.send();
}}

	function passwordValidation()
	{
		var userName=document.getElementById("password");
		if(password.value.length<6)
			document.getElementById("password_error").innerHTML="Password should be atleast 6 characters long";
	}
	
	function dobValidation()
	{
		var dob=document.getElementById("dob").value;
		var pattern =/^([0-9]{2})\/([0-9]{2})\/([0-9]{4})$/;
		if (dob == null || dob == "" || !pattern.test(dob)) 
			document.getElementById("dob_error").innerHTML="Invalid date of birth\n";
		else
			document.getElementById("dob_error").innerHTML="";
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
		
		.heading
		{
			text-align:center;
			font-family:CenturySchoolbook;
			font-size:25px;
			color:green;
		}
		
	</style>
	<body>
	
	<div class="login">
		<p class="heading">Registration Form</p>
		
		<s:form action="reg_action" theme="simple" method="GET" id="myForm" validate="true">
			<br /><br />
			<center><label for="reg_id">UserName :</label>&nbsp;<s:textfield name="userName" id="usrName" onfocusout="myUserValidation()"/>&nbsp;&nbsp;<div id="un_error"></div></center>
			<br />
			<center><label for="Email">Email :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="email" id="email" onfocusout="emailValidation()"/>&nbsp;&nbsp;<div id="email_error"></div></center>
			<br />
			<center><label for="Password">Password :</label>&nbsp;<s:password name="password" id="password" onfocusout="passwordValidation()"/>&nbsp;&nbsp;<div id="password_error"></div></center>
			<br />
			<center><label for="dob">DOB :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="dob" id="dob" label="Date of Birth" placeholder="(DD/MM/YYYY)" onfocusout="dobValidation()" ></s:textfield>&nbsp;&nbsp;<div id="dob_error"></div></center> 
			<br />
			<center><label for="Gender">Gender :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:radio label="Gender" name="gender" id="gender"  list="{'Male','Female'}" value="defaultGenderValue" />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</center> 
			<br />
			<center><s:submit value="Register" class="btn" /></center>
		</s:form>
		
		<p style="text-align:center;font-size:20px;font-family:CenturySchoolbook"><a href="login.jsp">Log In</a></p>
	</div>
	</body>
</html>