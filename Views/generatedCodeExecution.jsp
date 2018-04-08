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
					jout.println(line+"<br>");
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
				String myCode=request.getParameter("txtarea");
				String className=request.getParameter("classname");
				String packageName=request.getParameter("packageName");
				String combovalue=request.getParameter("combovalue");
				String assertionVal=request.getParameter("assertionValue");
				
				PrintStream javaFile=new PrintStream(new FileOutputStream(className+".java"));
				javaFile.print(myCode);
				PrintStream ps=new PrintStream(new FileOutputStream("compilation_code.txt"));
				System.setOut(ps);
				jout.println("<b>Output is:</b><br><br>");
				
				if(packageName.equals(""))
				{
					runProcess("javac -source "+combovalue+" "+className+".java");
					if(assertionVal.equals("true"))
						runProcess("java -ea "+className);
					else
					runProcess("java "+className);
					System.out.println("For example when we are looking for some kind of interest in that ");
				}
				else
				{
					runProcess("javac -d . -source "+combovalue+" "+className+".java");
					if(assertionVal.equals("true"))
						runProcess("java -ea "+packageName+"."+className);
					else
						runProcess("java "+packageName+"."+className);
				}
			}
			catch(Exception e)
			{
				jout.println(e);
			}
		%>
	</body>
</html>