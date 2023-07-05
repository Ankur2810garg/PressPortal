<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>

<%@ page import="java.util.*, java.io.*, java.sql.*,java.sql.Date " %>

<html>
<body>
<h1 style="text-align: center;">District News Portal</h1>
<a href="./jspfile/login.jsp">Login</a>
<%
List<String> results = new ArrayList<String>();
File[] files = new File("C:/Users/Ankur/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/PressPortal/images/").listFiles();

for (File file : files) {
    if (file.isFile()) {
        results.add(file.getName());
    }
}
Iterator<?> itr =  results.iterator();
while(itr.hasNext())
{
%>
	
	<IMG SRC="C:\Users\Ankur\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\PressPortal\images\
	<%=itr.next()%>"  height="100" width="100"/>

<%
}
%>
</body>
</html>