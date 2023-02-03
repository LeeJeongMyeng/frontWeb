<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
    import="jspexp.a13_database.vo.*"
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
/*
 23fbea4a8cc689d8192434226e5baee4
 */
</script>

<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>


	<!-- <form action="Market_Top2" id="kakaform">
		<input type="text" id="kakaoemail">
	</form>


	

	 
	 <button class="api-btn" onclick="unlinkApp()">앱 탈퇴하기</button>
	<div id="result"></div> -->
	<!--  <a id="kakao-login-btn">d</a> -->
	
	
<script type="text/javascript">
function unlinkApp() {
    Kakao.API.request({
      url: '/v1/user/unlink',
      success: function(res) {
        alert('success: ' + JSON.stringify(res))
      },
      fail: function(err) {
        alert('fail: ' + JSON.stringify(err))
      },
    })
  }
</script>
<script type="text/javascript">
var id=""
var connected_at=""
var email=""
var gender=""
Kakao.init('23fbea4a8cc689d8192434226e5baee4');
console.log(Kakao.isInitialized());
var buttons =document.querySelectorAll(".kakao-login-btn")
  Kakao.Auth.createLoginButton({
    container: "#kakao-login-btn",
    success: function(authObj) {
      Kakao.API.request({
        url: '/v2/user/me',
        success: function(result) {
          id = result.id
          connected_at = result.connected_at
          kakao_account = result.kakao_account
          if(typeof kakao_account != 'undefined'){
        	  email = kakao_account.email;
        	  gender = kakao_account.gender; 
          }
         location.href="exp2.jsp?email="+email;         
        },
        fail: function(error) {
          alert(
            'login success, but failed to request user information: ' +
              JSON.stringify(error)
          )
        },
      })
    },
    fail: function(err) {
      alert('failed to login: ' + JSON.stringify(err))
    }, 
  })
  
   Kakao.Auth.createLoginButton({
    container: '#kakao-login-btn2',
    success: function(authObj) {
      Kakao.API.request({
        url: '/v2/user/me',
        success: function(result) {
          id = result.id
          connected_at = result.connected_at
          kakao_account = result.kakao_account
          if(typeof kakao_account != 'undefined'){
        	  email = kakao_account.email;
        	  gender = kakao_account.gender; 
          }
         location.href="KakaoLogin.jsp?email="+email;         
        },
        fail: function(error) {
          alert(
            'login success, but failed to request user information: ' +
              JSON.stringify(error)
          )
        },
      })
    },
    fail: function(err) {
      alert('failed to login: ' + JSON.stringify(err))
    }, 
  }) 

</script>
</body>
<script>

</script>
</html>