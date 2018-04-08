<html>
	<head>
		<script src="../js/jquery-2.1.4.min.js"></script>
		<script src="../js/jquery-2.1.4.js"></script>
		<script src="../js/jquery-ui.js"></script>
		<script src="../js/jquery-ui.min.js"></script>
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
					$("#dialog").dialog("open");
					$("#dialog").dialog('option','width',700);
					$("#dialog").dialog('option','height',500);
					$("#dialog").dialog('option','show',{effect: 'fade',duration: 2000});
					$("#dialog").dialog('option','hide',{effect: 'fade',duration: 1000});
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
				document.getElementById("textarea1").value=d.text();
				
			}
		}
	}
	var classname=document.form1.text1.value;
	
	xmlHttp.open("GET","online_compiler.jsp?classname="+classname,true);
	xmlHttp.send();
}
</script>

	<style>
	
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

	#button 
	{
		border:1px solid #0c799e;
		width:250px;
		padding:10px;
		font-size:16px;
		font-weight:700;
		color:#fff;
		border-radius:3px;
		background:linear-gradient(to bottom,#59d0f8 5%,#49c0e8 100%);
		cursor:pointer
	}

	#button:hover 
	{
		background:linear-gradient(to bottom,#49c0e8 5%,#59d0f8 100%)
	}
	
	input[type=text] 
	{
		margin-top:5px;
		margin-bottom:20px;
		width:60%;
		border-radius:5px;
		border:0;
		padding:5px 0
	}
	
	input[type=textarea] 
	{
		margin-top:5px;
		margin-bottom:20px;
		border-radius:5px;
		border:0;
		padding:5px 0
	}

	#name,#email 
	{
		padding-left:10px
	}

	input[type=button] 
	{
		width:30%;
		border:1px solid #59b4d4;
		background:#0078a3;
		color:#eee;
		padding:3px 0;
		border-radius:5px;
		margin-left:15%;
		cursor:pointer
	}

	input[type=button]:hover 
	{
		border:1px solid #666;
		background:#555;
		color:#fff
	}
	
	.ui-dialog .ui-dialog-content 
	{
		padding:2em
	}

	div.container 
	{
		width:960px;
		height:800px;
		margin:50px auto;
		font-family:'Droid Serif',serif;
		position:relative
	}

	div.main 
	{
		width:320px;
		margin-top:35px;
		float:left;
		padding:10px 55px 25px;
		background-color:rgba(204,204,191,0.51);
		border:15px solid #fff;
		box-shadow:0 0 10px;
		border-radius:2px;
		font-size:13px;
		text-align:center
	}
	</style>
	 </head>
	 
     <body>
		<div class="container">
			<div class="main">
				<div id="dialog" title="API Information">
					<form name="form1" >
						Enter Class Name: <input id="text1" type="text" name="text1" value="java.lang.String"/>
						<input name="details" value="Get Details" type="button" onclick="loadXMLDoc()"/>
						<br /> <br />
						<textarea id="textarea1" rows="16" cols="70" name="txtarea1" style="font-family:CenturySchoolbook;font-size:15px;"></textarea>
					</form>
				</div>
				
				<h2>jQuery Dialog Form Example</h2>
				<p>Click below button to see jQuery dialog form.</p>
				<a href="#" id="dia_box">API Info</a>
			</div>
		</div>
	</body>
</html>