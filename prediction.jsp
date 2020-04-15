<%@ include file="header.jsp"%>

<%@ page   import="com.mysql.*" %>
<%@ page   import="java.io.*" %>
<%@ page   import="java.util.*" %>


<%Process p = Runtime.getRuntime().exec("python E:\\CFPython\\CF.py");
BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream()));
String ret = in.readLine();
while(ret!=null){
out.println(ret);
out.println("<br>");

ret = in.readLine();
}
%>


<br><br>
<%@ include file="afooter.jsp"%>