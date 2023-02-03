<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"  
  import="jspexp.vo.*"  
    import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*" 
    import="frontWeb.*"
      
    %>
  <%
  request.setCharacterEncoding("utf-8");
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<script type="text/javascript">
/*
 
*/
</script>

</head>
<body>
<%


String id = request.getParameter("signup_id");
String pass = request.getParameter("signup_pass");
String pass2 = request.getParameter("signup_pass2");
String name = request.getParameter("signup_name");
String email = request.getParameter("signup_email");
String phonenum = request.getParameter("signup_pnumber");
String address = request.getParameter("signup_address");
String gender = request.getParameter("signup_gender");
String yyyy = request.getParameter("signup_yyyy");
String mm = request.getParameter("signup_mm");
String dd = request.getParameter("signup_dd");


boolean isInsert=false;
if(
	id!=null && !id.equals("") &&
	pass!=null && !pass.equals("") &&
	name!=null && !name.equals("") &&
	email!=null && !email.equals("") &&
	phonenum!=null && !phonenum.equals("") &&
	address!=null && !address.equals("") &&
	gender!=null && !gender.equals("")
){
	MarketMemverVO mv = new MarketMemverVO(id,pass,name,email,phonenum,address,gender,yyyy,mm,dd);
	MarketMember MMDao = new MarketMember();
	MMDao.SignUpMember(mv);
	isInsert = true;
}
	
	

	
	
	
	
%>
<h2>반갑습니다.</h2>



<%--
#
--%>
</body>
<script type="text/javascript">

var isInsert = <%=isInsert%>;
if(isInsert){
	if(confirm("회원가입이 완료 되었습니다. 로그인 창으로 이동하시겠습니까?")){
		location.href="Market_Login.jsp"
	}else{
		location.href="Market_Main.jsp"
	}
}else{
	alert("'필수입력란의 빈칸' 혹은 '중복'이있어 가입 진행이 불가합니다. 다시 시도바랍니다.")
	location.href="Market_Main.jsp"
}



</script>
</html>