<html>
	<head>
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/bootstrap-theme.min.css">
	<script src="../js/jquery-2.1.4.min.js"></script>
	<script src="../js/jquery-2.1.4.js"></script>
	<script src="../js/jquery-ui.js"></script>
	<script src="../js/jquery-ui.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<link type="text/css" href="../js/jquery-ui.css" rel="stylesheet" /> 

	<script>
		$(document).ready(function() 
		{
			$(function() 
			{
				$("#dialog").dialog
				({
				autoOpen: false
				});

				$("#dia_box").on("click", function() 
				{
					
					var target = $(this);
					
					$("#dialog").dialog("open");
					$("#dialog").dialog('option','width',700);
					$("#dialog").dialog('option','height',500);
					$("#dialog").dialog('option','show',{effect: 'Slide',duration: 4000});
					$("#dialog").dialog('option','hide',{effect: 'drop',duration: 2000});
					$("#dialog").dialog('option','position',{my: 'left',at: 'right',of: target});
					
	
				});
			});
			
		});
	</script>
	
	<script type="text/javascript">
 
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
				document.getElementById("textarea1").value=(d.text().trim());
				
			}
		}
	}
	var classname=document.form1.text1.value;
	
	xmlHttp.open("GET","online_compiler.jsp?classname="+classname,true);
	xmlHttp.send();
}
</script>

	<style>
		
		.sidemenu
		{
			width:100%;
			height:500px;
			border-style:groove;
			border-width: 10px;
			background-image:url("menu.png");
			
		}
		
	.ui-dialog .ui-dialog-content 
	{
		padding:2em
	}

	h2 
	{
		text-align:center;
		font-size:24px
	}

	hr 
	{
		margin-bottom:30px
	}
	
	p 
	{
		color:#000;
		font-size:16px;
		font-weight:700
	}
	
	</style>
	<body>
		<div id="dialog_cont">
			<div id="dialog_main">
				<div id="dialog" title="API Information">
					<form name="form1" >
						Enter Class Name: <input id="text1" type="text" name="text1" value="java.lang.String"/>
						<input name="details" value="Get Details" type="button" onclick="loadXMLDoc()"/>
						<br /> <br />
						<textarea id="textarea1" rows="16" cols="70" name="txtarea1" style="font-family:CenturySchoolbook;font-size:15px;"> </textarea>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 sidemenu">
			<br /> <br />
			<ul class="nav nav-pills nav-stacked">
			<li class="active"><a href="login_success.jsp">Home</a></li>
			<li><a id="dia_box">API Info</a></li>
			<li><a href="codegenerator.jsp">Code Generator</a></li>
			<li><a href="code_generator.action">Code Compiler</a></li>
			<li><a href="encrypt_gencode.action">Encrypt/Decrypt</a></li>
			<li><a href="login.jsp">Log Out</a></li> <br /><br /><br />
			<li><a href="login_help.jsp">Help</a></li>
			</ul>
		</div>
	</body>
</html>