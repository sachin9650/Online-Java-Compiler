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
			
			.compiled_txtarea
			{
				border-width: 5px;
				border-style: inset;
				font-family:CenturySchoolbook;
				font-size: 17px;
			}
			
			.bfsbutton 
			{  
				border-top: 1px solid #ffffff;  
				background: #90b419;  
				width:300px;
				background: -webkit-gradient(linear, left top, left bottom, from(#b1d53a),  to(#90b419) );  
				padding: 8px 55px;  
				-webkit-border-radius: 10px;  
				border-radius: 10px;  
				-webkit-box-shadow: rgba(0, 0, 0, 1) 0 1px 0;  
				box-shadow: rgba(0, 0, 0, 1) 0 1px 0;  
				text-shadow: rgba(0, 0, 0, .4) 0 1px 0;  
				color: white;  
				font-size: 16px;  
				font-family: Georgia, serif;  
				text-decoration: none;  
				vertical-align: middle;  
				margin-left:10px;
			}  
   
			.bfsbutton:hover 
			{  
				border-top-color: #7ea207;  
				background: #7ea207;  
				color: #ccc;  
			}  
   
			.bfsbutton:active 
			{  
				border-top-color: #ffffff;  
				background: #ffffff;  
			}
		</style>
	</head>
	
	<body>
		<div class="intro">
			<h3 class="heading">Decrypted Code</h3>
			<hr />
			<s:form action="save_decryptedCode" method="post" theme="simple">
			<center><s:textarea name="decryptedCode" value="%{decryptedCode}" rows="12" cols="70" cssClass="compiled_txtarea" /> <br /></center>
			<center><s:submit value="Save In File" cssClass="bfsbutton"/></center>
			</s:form>
		</div>
	</body>
</html>