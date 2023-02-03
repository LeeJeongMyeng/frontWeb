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
<link rel="stylesheet" type="text/css" href="cssFile/subcss.css?after">
<style>
#Login_form{
			/* background-color:pink; */
			text-align:center;
			width:600px;
			margin:auto;
		}	
		#Login_form input[type=text],[type=password],[type=submit]{
				width:500px;
				height:70px;
				margin-top: 15px;
				border-radius:10px;
		}
		#Login_form input::placeholder{
			font-size:150%;		
		}
		#Login_find{
			margin:10px 55px 10px 0;
			float:right;
			font-size:100%;
			font-weight:bold;
		}
		#Login_form input[type=submit]{
			
			font-size:120%;
			background-color:purple;
			color:white;
		}
</style>
<script type="text/javascript"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
</head>
<body>
<%
User UDao = new User();
UserVO user = new UserVO();
MarketMember MMDao = new MarketMember();
MarketMemverVO mv = new MarketMemverVO();
%>


<jsp:include page="Market_Top2.jsp"></jsp:include>

	
	<div class="box" id="New_container">
		<div id="New_MainText"><h1>로그인</h1></div>
		<div id="Login_form">
		<form>
			<input type="text" name="Login_id" placeholder=" 아이디 입력" ><br>
			<input type="password" name="Login_pass" placeholder=" 패스워드 입력" ><br>
			<div id="Login_find">아이디 | 비밀번호찾기 
			<a href="Market_signUp.jsp" style="color:purple;">&nbsp;&nbsp;&nbsp;회원가입</a></div><br>
			<input type="submit" value="로그인">
			<a id="kakao-login-btn2">d</a>
		</form>		
		</div>
		<%
			String Login_id = request.getParameter("Login_id");
			String Login_pass = request.getParameter("Login_pass");
			boolean LoginFail = false;
			if(Login_id!=null&&Login_pass!=null){
				if(MMDao.Login_boolean(Login_id, Login_pass)){
					for(MarketMemverVO u:MMDao.getUserInfoAll(Login_id,Login_pass)){					
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
	</div><!-- box -->
						
		


<br><br><br><br><br><br><br>
<%----------------------------------------------------------------------------------------------------%>
<jsp:include page="SNS_Login.jsp"></jsp:include>
<jsp:include page="Market_Footer.jsp"></jsp:include>




	
</body>
<script type="text/javascript">
var LoginFail = <%=LoginFail%>
if(LoginFail){
	alert("로그인 실패, 인증된 아이디가 없습니다.")
}
</script>
</html>