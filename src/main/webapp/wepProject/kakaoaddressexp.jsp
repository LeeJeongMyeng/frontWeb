<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.vo.*"
   %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<script>
/*
 
 */
</script>
</head>
<body>

<%--
# 

 --%>
<%
String ad1 = request.getParameter("addressval");
String ad2 = request.getParameter("addressval2");
%>
<h2><%=ad1 %></h2>
<h2><%=ad2 %></h2>
</body>
<script>
/*

 */
</script>
</html>