<html>
	<body>
		<%@ page import="java.sql.*" %>
		<%
			JspWriter jout=pageContext.getOut();
			try
			{
				String emailname=request.getParameter("emailname");
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","1388470");
				PreparedStatement ps=conn.prepareStatement("SELECT email FROM onjac WHERE email=?");
				ps.setString(1,emailname);
				ResultSet rs=ps.executeQuery();
				if(rs.next())
					jout.println(true);
				else
					jout.println(false);
				
			}
			catch(Exception e)
			{
				jout.println(e);
			}
		%>
	</body>
</html>