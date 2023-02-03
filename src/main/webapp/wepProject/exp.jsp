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
<link rel="stylesheet" type="text/css" href="cssFile/css.css">
<style>
	.items *{
		onclick
	}

</style>
<script type="text/javascript">
/*
 
*/
</script>

</head>
<body>
<%
String kl = (String)request.getParameter("kl");
%>
<h2><%=kl %></h2>
<!-- <ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
          <span>카카오 로그인</span>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>
</ul> -->


</body>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
var kl="<%=kl%>";
var id="";
var connected_at="";
var email="";
var gender="";
//카카오로그인
console.log(kl)
if(kl=="y"){
	Kakao.init('23fbea4a8cc689d8192434226e5baee4'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
        	  id = response.id
        	  connected_at = response.connected_at
        	  kakao_account = response.kakao_account
        	  if(typeof kakao_account != 'undefined'){
            	  email = kakao_account.email;
            	  gender = kakao_account.gender; 
              }
        	  console.log(id+":"+connected_at+":"+email+":"+gender)
        	  location.href="KakaoLogin.jsp?email="+email; 
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
if(kl=="n"){
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>
</html>