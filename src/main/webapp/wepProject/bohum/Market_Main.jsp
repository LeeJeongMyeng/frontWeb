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
<link rel="stylesheet" type="text/css" href="css.css">
<style>


</style>
<script type="text/javascript">


</script>

</head>
<body>
<div id="top">
		<div id="Main_log">
			<div class="box">
				<ul>
					<li><a href="#">회원가입</a></li>
					<li><a href="#">로그인</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
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
										<li><a href="#">
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
											
										<li><a href="#"><div> 
										<img src="/market_img/category_img/black/fruit.webp" class=black_img>
										<img src="/market_img/category_img/purple/fruit.webp" class=purple_img></div>과일·견과·쌀</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
										<li><a href="#"><div> 
										<img src="/market_img/category_img/black/shrimp.webp" class=black_img>
										<img src="/market_img/category_img/purple/shrimp.webp" class=purple_img></div>수산·해산·건어물</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
										<li><a href="#"><div> 
										<img src="/market_img/category_img/black/gogi.webp" class=black_img>
										<img src="/market_img/category_img/purple/gogi.webp" class=purple_img></div>정육·계란</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
										<li><a href="#"><div> 
										<img src="/market_img/category_img/black/kitchen.webp" class=black_img>
										<img src="/market_img/category_img/purple/kitchen.webp" class=purple_img></div>국·반찬·메인요리</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
										<li><a href="#"><div> 
										<img src="/market_img/category_img/black/salad.webp" class=black_img>
										<img src="/market_img/category_img/purple/salad.webp" class=purple_img></div>샐러드·간편식</a>
											<ul>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
												<li><a href="#">2차메뉴1</a></li>
											</ul>
										</li>
										<li><a href="#"><div> 
										<img src="/market_img/category_img/black/salad.webp" class=black_img>
										<img src="/market_img/category_img/purple/salad.webp" class=purple_img></div>양념·면·오일</a>
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
						<li><a href="#">특가혜택</a></li>	
					</ul> <!-- main_menubar -->
				</nav><!-- main_meno -->
			</div> <!-- box -->
		</div> <!-- Main_logo_search -->
	</div>
		
		
		
	<div class="section">
			<input type="radio" name="slide" id="slide01" checked>
			<input type="radio" name="slide" id="slide02">
			<input type="radio" name="slide" id="slide03">
			<input type="radio" name="slide" id="slide04">
			<input type="radio" name="slide" id="slide05">
			
			<div class="slidewrap">
				<ul class="slidelist">
					<li>
						<a>
							<label for="slide05" class="left"></label>
							<img src="/market_img/1banner.png">
							<label for="slide02" class="right"></label>
						</a>
					</li>
					<li>
						<a>
							<label for="slide01" class="left"></label>
							<img src="/market_img/2banner.png">
							<label for="slide03" class="right"></label>
						</a>
					</li>
					<li>
						<a>
							<label for="slide02" class="left"></label>
							<img src="/market_img/3banner.png">
							<label for="slide04" class="right"></label>
						</a>
					</li>
					<li>
						<a>
							<label for="slide03" class="left"></label>
							<img src="/market_img/4banner.png">
							<label for="slide05" class="right"></label>
						</a>
					</li>
					<li>
						<a>
							<label for="slide04" class="left"></label>
							<img src="/market_img/5banner.png">
							<label for="slide01" class="right"></label>
						</a>
					</li>
				</ul>
			</div>
			
		</div>	<!-- secction -->		
		
<% 
MarketProd MPDao = new MarketProd();
MarketVO sch = new MarketVO();
%>	
		
		
		
		<div id="Main_product">
			<div class="box">
					<h1>!추천 상품!</h1>
					<div class="clear"></div>
			<%
			for(MarketVO p:MPDao.getProdList()){
			%>
			<div>
			<ul class="items">
						<li><a href="#"><img src="/market_img/Prod/<%=p.getImgname() %>"></a><li>
						<li class="a"><a href="#">[<%=p.getBrand() %>] <%=p.getProdname()%></a></li>
						<li class="b"><a href="#"><%=((int)(p.getPrice()*(100-p.getDiscount())/100)) %>원&nbsp; <span> <%=((int)(1-1+p.getDiscount()))%>%</span></a></li>
						<li class="d"><a href="#"><%=((int)(100+p.getPrice()-100))%>원</a></li>
						<li class="c"><a href="#"><%=p.getInformation()%></a></li>				
					</ul>		
				</div>	
			<%} %>
					
				</div>
	
		</div><!-- Main_product -->

		<footer>
			<div class="box">
				<div class=Main_foot>
					<h2>고객행복센터</h2>
					<h1>1644-1107 <span>월~토요일 오전7시 - 오후6시</span></h1> 
					<div>
					<input type="button" value="카카오톡 문의" onClick="dd">
							<div class="call_info">
								월-토요일 | 오전7시-오후6시<br>
								일/공휴일 | 오전7시-오후1시
							</div>
					</div>
					<div>
					<input type="button" value="1:1문의" onClick="dd">
							<div class="call_info">
								365일<br>
								고객센터 운영시간에 순차적으로<br>
								답변드리겠습니다.
							</div>
					</div>
					<div>
					<input type="button" value="대량 주문 문의" onClick="dd">
							<div class="call_info">
								월-금요일 | 오전9시-오후6시<br>
								점심시간 | 낮12시-오후1시
							</div>
					</div>
					<div class="call_email">
						비회원 문의:help@kurlycorp.com<br>
						비회원 대량주문 문의 : kurlygift@kurlycorp.com
					</div>
						
				</div> <!-- Main_foot -->
				<div class=Main_foot_right>  
					<div>
						<ul>
							<li><a href="#">컬리소개</a></li>
							<li><a href="#">컬리소개영상</a></li>
							<li><a href="#">인재채용</a></li>
							<li><a href="#">이용약관</a></li>
							<li><a href="#">개인정보처리방침</a></li>
							<li><a href="#">이용안내</a></li>
						</ul>
					</div>
					<div>
						법인명(상호):주식회사 컬리 | 사업자등록번호:261-81-23567 사업자 정보확인<br>
						통신판매업: 제 2018-서울강남-01646호 | 개인정보보호책임자:이원준<br>
						주소:서울특별시 강남구 테헤란로 133,18층(역삼동) | 대표이사 김슬아<br>
						입점문의:입점문의하기|제휴문의:business@kurlycorp.com<br>
						채용문의:recruit@kurlycorp.com<br>
						팩스:070-7500-6098<br>
					</div>
						<div id="foot_sns"> 
						<ul>    
						 	<li><a href="https://www.instagram.com/marketkurly/"><img src="/market_img/instar_logo.jpg"></a>
						 	<li><a href="https://www.facebook.com/marketkurly"><img src="/market_img/facebook_logo.png"></a>
						 	<li><a href="https://m.post.naver.com/marketkurly"><img src="/market_img/naverpost_logo.png"></a>
						 	<li><a href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg"><img src="/market_img/youtube_logo.png"></a>
						</ul>
					
					</div>
				</div><!-- Main_foot_right -->
			</div> <!-- box -->
		</footer>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>