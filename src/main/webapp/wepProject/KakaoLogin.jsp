<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"  
 
    import="frontWeb.*" 
    
      
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>



</style>
<script type="text/javascript">


</script>

</head>
<body>

<%
MarketMember MMDao = new MarketMember();
MarketMemverVO mv = new MarketMemverVO();


	String email= request.getParameter("email");
	boolean LoginFail = false;
if(email!=null){
	if(MMDao.Login_boolean(email)){
		for(MarketMemverVO u:MMDao.getUserInfoAll(email)){					
		 session.setAttribute("Login_ID",u.getId());
		 session.setAttribute("Login_Name",u.getUsername());
		 session.setAttribute("Login_Point",u.getPoint());
		 session.setAttribute("Login_Address",u.getAddress());
		}
		response.sendRedirect("/wepProject/Market_Main.jsp");
	}else{	
		LoginFail=true;
	} 
}
%>
		

</body>
<script type="text/javascript">
var LoginFail = <%=LoginFail%>
if(LoginFail){
	alert("로그인 실패, 인증된 아이디가 없습니다.")
}


</script>
</html>