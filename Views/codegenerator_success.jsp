<%@ taglib uri="/struts-tags" prefix="s"%>

<html>
	<head>
		<script>
		function loadXMLDoc()
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
				document.getElementById("compiled_code").innerHTML=(d.text().trim());
				
			}
		}
	}
	
	var classname=document.getElementById("className").value;
	var txtareaname=document.getElementById("generated_code").value;
	var packagename=document.getElementById("package").value;
	var combovalue=document.getElementById("combo").value;
	var assertion=document.getElementById("assertion").checked;
	alert(assertion);
	xmlHttp.open("GET","generatedCodeExecution.jsp?classname="+classname+"&txtarea="+txtareaname+"&assertionValue="+assertion+"&combovalue="+combovalue+"&packageName="+packagename+"",true);
	xmlHttp.send();
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
			}
		
			.compiled_txtarea
			{
				border-width: 5px;
				border-style: inset;
				font-family:CenturySchoolbook;
				font-size: 15px;
			}
			
			.bfsbutton 
			{  
				border-top: 1px solid #ffffff;  
				background: #90b419;  
				width:150px;
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
			
			.combo
			{
				height: 38px;
				width: 80px;
				border:3px solid black;
				border-radius:8px;
			}
		</style>
	</head>
	
	<body>
		<div class="intro">
			<h3 class="heading">Code Compilation</h3>
			<hr />
			
			<s:form theme="simple" action="encrypt_gencode">
				<s:textarea name="generatedCode" id="generated_code" value = "%{codeGenerator}" rows="16" cols="60" cssClass="generated_txtarea"/>
				<s:textarea name="compiled_code" id="compiled_code" rows="16" cols="35" cssClass="compiled_txtarea" /> <br />
				<input type="text" id="className" />.java &emsp;
				<s:textfield name="text" id="package" value = "%{pkgName}" hidden/>
				<select class="combo" id="combo">
					<option value="1.6">JDK 1.8</option>
					<option value="1.6">JDK 1.7</option>
					<option value="1.6">JDK 1.6</option>
					<option value="1.5">JDK 1.5</option>
					<option value="1.4">JDK 1.4</option>
					<option value="1.3">JDK 1.3</option>
					<option value="1.2">JDK 1.2</option>
				</select>&ensp;
				<input type="checkbox" id="assertion">Assertion 
				<input type="button" value="Compile" onclick="loadXMLDoc()" class="bfsbutton" />&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				<s:submit value="Encrypt" cssClass="bfsbutton"/>
			</s:form>
			
		</div>
	</body>
</html>