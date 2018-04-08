<%@ taglib uri="/struts-tags" prefix="s"%>

<html>
	<head>
	
		<script>
			function disableInterface()
			{
				var className=document.getElementById("className").value;
				if(className!="")
					document.getElementById("interfaceName").disabled=true;
				else
					document.getElementById("interfaceName").disabled=false;
			}
			
			function disableClassName()
			{
				var interfaceName=document.getElementById("interfaceName").value;
				
				if(interfaceName!="")
				{
					document.getElementById("className").disabled=true;
					document.getElementById("final").disabled=true;
					document.getElementById("superClass").value="";
					document.getElementById("superClass").disabled=true;
				}
				else
				{
					document.getElementById("className").disabled=false;
					document.getElementById("final").disabled=false;
					document.getElementById("superClass").disabled=false;
				}
			}
			
			function validateForm()
			{
				var className=document.getElementById("className").value;
				var interfaceName=document.getElementById("interfaceName").value;
				
				if(className!="" || interfaceName!="")
				{
					return true;
				}
				else
				{
					alert("Please provide either Class Name or Interface Name");
					return false;
				}
			}
			
			function disableFinal()
			{
				var abstractMod=document.getElementById("abstractModifier").checked;
				if(abstractMod==true)
					document.getElementById("final").disabled=true;
				else
					document.getElementById("final").disabled=false;
			}
			
			function disableAbstract()
			{
				var finalMod=document.getElementById("final").checked;
				if(finalMod==true)
					document.getElementById("abstractModifier").disabled=true;
				else
					document.getElementById("abstractModifier").disabled=false;
			}
			
		</script>
		
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
			
			.heading
			{
				margin-left:10px;
				padding:5px;
				font-family:CenturySchoolbook;
				font-size:30px;
				color:white;
				width:500px;
				background-color:rgb(57,114,183);
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
			<h3 class="heading">Java Code Generator</h3>
			<hr />
			<br />
			<p class="para">
				<s:form theme="simple" action="hello" onsubmit="return validateForm()">
					<label>Package Name:</label>&emsp;<s:textfield name="pkgName" size="25"/>&emsp;&emsp;&emsp;
					
					<label>Superclass Name:</label>&emsp;&nbsp;<s:textfield name="superClassName" id="superClass" size="25"/><br /><br />
					
					<label>Class Name:</label>&emsp;&emsp;&ensp;<s:textfield name="className" id="className" size="25" onfocusout="disableInterface()"/> &emsp;&emsp;&emsp;&emsp;
					
					<label>Interface Name:</label>&emsp;<s:textfield name="interfaceName" id="interfaceName" size="25" onfocusout="disableClassName()" /><br />
					
					<center><label>Access Modifiers:</label>&emsp;<s:radio name="accessModifier" list="{'public','default'}" /></center>
					
					<center><label>Non Access Modifiers:</label>&emsp;
					
					<s:checkbox name="abstractModifier" id="abstractModifier" onclick="disableFinal()"/><label>Abstract</label>&emsp;
					
					<s:checkbox name="finalModifier" id="final" onclick="disableAbstract()"/><label>Final</label>&ensp;&nbsp;</center><br />
					
					<label>Packages to Import:</label> <s:textarea name="pkgImport" cols="30" rows="3"/> &emsp;&emsp;
					
					<label>Implemented Interface:</label> <s:textarea name="implInterfaces" cols="30" rows="3"/> <br />
					
					<label>Properties Name:</label>&emsp;&ensp; <s:textarea name="propertiesName" cols="30" rows="3"/> &emsp;&emsp;
					
					<label>Methods Signature:</label>&emsp;&ensp;&nbsp;<s:textarea name="methodsName" cols="30" rows="3"/><br />
					
					<center><br /><s:submit value="Generate" cssClass="bfsbutton" action="code_generator" /></center>
				</s:form>
			</p>
		</div>
	</body>
</html>