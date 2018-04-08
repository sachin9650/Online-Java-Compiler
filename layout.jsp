<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>
	<head>
		<title> <tiles:getAsString name="title" /> </title>
		<style>
			.menu
			{
				width:30%;
				float:left;	
			}
			
			body
			{
				background-image:url("menu.png");
			}
			
			.page_body
			{
				width:100%;
				padding-left:500px;
			}
		</style>
	</head>
	
	<body>
		<div class="header">
			<tiles:insertAttribute name="header" />
		</div>
		<br />
		<div class="menu">
			<tiles:insertAttribute name="menu" />
		</div>
		
		<div class="page_body">
			<tiles:insertAttribute name="body" />
		</div>
		
		<div class="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</body>
</html>