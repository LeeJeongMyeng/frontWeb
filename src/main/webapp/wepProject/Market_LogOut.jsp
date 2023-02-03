<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"  
  import="jspexp.vo.*"  
    import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*" 
    import="frontWeb.*"   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*
 
*/
</script>

</head>
<body>

<%

    String OutName = (String)session.getAttribute("Login_Name");
		// alert()의 회원 이름을 띄우기 위해 객체를 지우기 전 변수에 담아둔다.
    session.removeAttribute("Login_ID");
    session.removeAttribute("Login_Name");
    session.removeAttribute("Login_Point");

%>
</body>
<script type="text/javascript">
alert("<%=OutName%>님 로그아웃되었습니다!")
location.href = "Market_Main.jsp"
</script>
</html>