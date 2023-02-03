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
<link rel="stylesheet" type="text/css" href="cssFile/top.css">
<link rel="stylesheet" type="text/css" href="cssFile/LoginForm.css">

<style>

</style>


<script type="text/javascript">

</script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<%

MarketProd MPDao = new MarketProd();
MarketVO sch = new MarketVO();
User UDao = new User();
UserVO user = new UserVO();
MarketMember MMDao = new MarketMember();
MarketMemverVO mv = new MarketMemverVO();

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


<div id="top">
		<div id="Main_log">
			<div class="box">
			
			<%if(session.getAttribute("Login_Name")==null){ %>
			<ul>
					<li><a href="Market_signUp.jsp">회원가입</a></li>
					<li><a href="Market_Login.jsp">로그인</a></li>
					<li><a href="#">고객센터</a></li>
			</ul>
			
			<input type="checkbox" id="popup">
			<label for="popup">로그인2</label>
			<div>
				<div>
					<label for="popup"><div>X</div></label> <!-- 닫기 -->
					<div>	
						<div> 
						<div id="New_MainText2" style="text-align:center;">로그인</div>
						<div id="Login_form">
							<form id="Login_form2">
								<input type="text" name="Login_id" placeholder=" 아이디 입력" ><br>
								<input type="password" name="Login_pass" placeholder=" 패스워드 입력" ><br>
								<div id="Login_find">아이디 | 비밀번호찾기 
								<a href="Market_signUp.jsp" style="color:purple;">&nbsp;&nbsp;&nbsp;회원가입</a></div><br>
								<a id="kakao-login-btn">카카오로그인</a>
								<input type="submit" value="로그인">
							</form>		
						</div>
						</div>
					
					</div>
				</div>
				<label for="popup"></label><!-- 바깥눌러도 닫기 -->
			</div>

			<%}else {%>
				
			<ul>
					<li><a href="Market_LogOut.jsp">로그아웃</a></li> 
					<li><a href="Market_cart.jsp">장바구니</a></li> 
					<li><%=session.getAttribute("Login_Name")%>님 반갑습니다.</li>
					<li><a href="#">포인트:<%=session.getAttribute("Login_Point") %>점</a></li>
					
			</ul>
			<%} %>
				
			</div><!-- box -->
		</div> <!-- Main_log -->
		<div id="Main_logo_search">
			<div class="box">
				<div class="top_Main_logo">
					<div><img src="/market_img/Main_logo.png"></div>
					<div id=Main_text>
						<div id="Main_marketkurly"><a href="Market_Main.jsp">마켓컬리</a> </div>
						<div id="Main_beautykurly"><a href="%">뷰티컬리</a></div>
					</div> <!-- Main_text -->
				</div> <!--top_Main_logo -->
				
				<div id="Main_search">
					<form id="search_form" name="MainSearch" action="Market_SearchProd.jsp">
					<input type="text" id="search1" placeholder="검색어를 입력해주세요." name="Searchprod">
						<button type="submit" id="search2"></button>
					</form>
				</div> <!-- Main_search -->   
				<nav class="menu-box">
							<ul>
								<li id="category"><a href="#">카테고리</a>
									<ul>    
										<li><a href="#" onclick="GoToCategory('채소'); return false;">
										<div class="full_img"> 
										<img src="/market_img/category_img/black/cheso.webp" class=black_img>
										<img src="/market_img/category_img/purple/cheso.webp" class=purple_img></div>채소</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
											
										<li><a href="#" onclick="GoToCategory('과일·견과·쌀'); return false;"><div> 
										<img src="/market_img/category_img/black/fruit.webp" class=black_img>
										<img src="/market_img/category_img/purple/fruit.webp" class=purple_img></div>과일·견과·쌀</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
										<li><a href="#" onclick="GoToCategory('수산·해산·건어물'); return false;"><div> 
										<img src="/market_img/category_img/black/shrimp.webp" class=black_img>
										<img src="/market_img/category_img/purple/shrimp.webp" class=purple_img></div>수산·해산·건어물</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
										<li><a href="#" onclick="GoToCategory('정육·계란'); return false;"><div> 
										<img src="/market_img/category_img/black/gogi.webp" class=black_img>
										<img src="/market_img/category_img/purple/gogi.webp" class=purple_img></div>정육·계란</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
										<li><a href="#" onclick="GoToCategory('국·반찬·메인요리'); return false;"><div> 
										<img src="/market_img/category_img/black/kitchen.webp" class=black_img>
										<img src="/market_img/category_img/purple/kitchen.webp" class=purple_img></div>국·반찬·메인요리</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
										<li><a href="#" onclick="GoToCategory('샐러드·간편식'); return false;"><div> 
										<img src="/market_img/category_img/black/salad.webp" class=black_img>
										<img src="/market_img/category_img/purple/salad.webp" class=purple_img></div>샐러드·간편식</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
										<li><a href="#" onclick="GoToCategory('양념·면·오일'); return false;"><div> 
										<img src="/market_img/category_img/black/salad.webp" class=black_img>
										<img src="/market_img/category_img/purple/salad.webp" class=purple_img></div>양념·면·오일</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
										<li><a href="#" onclick="GoToCategory('가전제품'); return false;"><div> 
										<img src="/market_img/category_img/black/salad.webp" class=black_img>
										<img src="/market_img/category_img/purple/salad.webp" class=purple_img></div>가전제품</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
									</ul>
								</li>	
							</ul>
						</nav> <!-- 메뉴박스 -->
				<nav class="main_menu"><!-- 네비 태그 보통 메인메뉴를 나열할 떄 많이 쓴다. -->
					<ul class="main_menubar">
						<li><a href="Market_NewProd.jsp">신상품</a></li>
						<li><a href="Market_BestProd.jsp">베스트</a></li>
						<li><a href="Market_AlDdulProd.jsp">알뜰쇼핑</a></li>
						<li><a href="a">특가혜택</a></li>	
					</ul> <!-- main_menubar -->
				</nav><!-- main_meno -->
			</div> <!-- box -->
		</div> <!-- Main_logo_search -->
	</div>
	
	

	
	
	
	
<jsp:include page="SNS_Login.jsp"></jsp:include>	
</body>
<script type="text/javascript">

function GoToCategory(type){
	  location.href="Market_category.jsp?type="+type 
}






</script>
</html>