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
				font-size:25px;
				color:white;
				width:500px;
				background-color:rgb(57,114,183);
			}
			
			.generated_txtarea
			{
				border-width: 5px;
				border-style: inset;
				font-family:CenturySchoolbook;
				font-size: 15px;
				margin-left: 5px;
				width:400px;
				float:left;
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
			<h3 class="heading">Encryption/ Decryption</h3>
			<hr />
			
			
			<s:form theme="simple" action="actual_encryption" method="post">
				<s:textarea placeholder="Write Code for Encryption" name="generatedCode" id="generated_code" value = "%{generatedCode}" rows="18" cols="60" cssClass="generated_txtarea"/>
				<br />
				<center><s:submit value="Encrypt" cssClass="bfsbutton"/></center>
			</s:form>
			
			<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
			<center><div class="bg_form">
			<s:form theme="simple" action="actual_decryption" method="post" enctype="multipart/form-data">
				<s:file label="UploadFile" name="uploadFile" />
				<br />
				<s:submit value="Decrypt" cssClass="bfsbutton"/>
			</s:form>
			</div></center>
		</div>
	</body>
</html>