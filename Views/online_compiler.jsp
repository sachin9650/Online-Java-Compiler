<html>
	<body>
		<%@ page import="java.io.*,javax.servlet.jsp.*" %>
		<%!
			static JspWriter jout;
			private static void printLines(InputStream ins) throws Exception 
			{
				String line = null;
				BufferedReader in = new BufferedReader(new InputStreamReader(ins));
				while ((line = in.readLine()) != null) 
				{
					jout.println(line);
				}
			}
			private static void runProcess(String command) throws Exception 
			{
				Process pro = Runtime.getRuntime().exec(command);
				printLines(pro.getInputStream());
				printLines(pro.getErrorStream());
				pro.waitFor();
				
			}
		%>
		<%
			try
			{
				jout=pageContext.getOut();
				String className=request.getParameter("classname");
				runProcess("javap "+className);
			}
			catch(Exception e)
			{
				jout.println(e);
			}
		%>
	</body>
</html>