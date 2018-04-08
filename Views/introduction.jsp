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
			
			.welcome
			{
				margin-left:10px;
				padding:5px;
				border-style:inset;
				font-family:CenturySchoolbook;
				font-size:25px;
				width:500px;
				color:white;
				background-color:rgb(57,114,183);
			}
		</style>
	</head>
	
	<body>
		<div class="intro">
			<h3 class="heading">Online Java Compiler</h3>
			<hr />
			<center><s:label value="Welcome, %{userName}" cssClass="welcome"/></center>
			<br />
			<h2>
			<p class="para">
				In today's competitive world everything in the universe is done through internet and all the things are online.
				So therefore I have created a Java web application called "Online Java compiler". <br /> <br />
				The main aim of this project is to write the Java program with ease and compile it and debug online. The client machine doesn't need to have any Java Development Kit installed on it. The client machine just needs to connect to the server. The server itself having the Java compiler and therefore it is responsible to compile the Java code and produce the error message on the appropriate Java machine. <br /> <br />
				This application also performs encryption and decryption of the Java code to make it secure.
			</p>
		</div>
	</body>
</html>