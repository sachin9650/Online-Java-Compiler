<%@ taglib uri="/struts-tags" prefix="s"%>

<html>
	<head>
		<style>
			.intro
			{
				width:100%;
				height:500px;
				border-style:groove;
				border-width: 10px;
				background-image:url("menu.png");
			}
			
			hr 
			{ 
				display: block;
				color:black;
				margin-top: 0.5em;
				margin-bottom: 0.5em;
				margin-left: 5px;
				margin-right: 100px;
				border-top: 1px solid #ccc;
				border-style: inset;
				border-width: 1px;
			}
			
			.para
			{
				padding:10px;
			}
			
			.heading
			{
				margin-left:10px;
				padding:5px;
				font-family:CenturySchoolbook;
				font-size:40px;
				color:white;
				width:500px;
				background-color:rgb(57,114,183);
			}
		</style>
	</head>
	
	<body>
		<div class="intro">
			<h3 class="heading">Online Java Compiler</h3>
			<hr />
			<br /><br />
			<center><p class="para">
				Registration Successful !!
			</p></center>
			<br /> <br />
			<center><h2><a href="login.jsp">Login to continue</h2></center>
		</div>
	</body>
</html>