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
<link rel="stylesheet" type="text/css" href="cssFile/subcss.css?after">
<style>

</style>
<script type="text/javascript">
function GoToCategory(type){
	  location.href="Market_category.jsp?type="+type }
</script>

</head>
<body>
<%MarketProd MPDao = new MarketProd();
MarketVO sch = new MarketVO(); %>


</head>
<body>
<jsp:include page="Market_Top2.jsp"></jsp:include>


	
	<div class="box" id="New_container">
		<div id="New_MainText"><h1>베스트 상품</h1></div>
			<section class="New_content">
				<nav>
				<div id=New_side>
					<div id="New_category">카테고리</div>
					<form>
					<div class="checkbox">
						<div>
					    <input type="checkbox" name="check1" id="check1" value="1" class="checkbox1">
					    <label for="check1">수산·해산·건어물</label><br>
					    </div>
					    
					    <div>
					    <input type="checkbox" name="check1" id="check2" value="2" class="checkbox1">
					    <label for="check2">생활용품·리빙·캠핑</label><br>
					    </div>
					    
					    <div>
					    <input type="checkbox" name="check1" id="check3" value="3" class="checkbox1">
					    <label for="check3">과일·견과·쌀</label><br>
					    </div>
					    
					    <div>
					    <input type="checkbox" name="check1" id="check4" value="4" class="checkbox1">
					    <label for="check4">샐러드·간편식</label><br>
					    </div>
					    <div>
					    <input type="checkbox" name="check1" id="check5" value="5" class="checkbox1">
					    <label for="check5">간식·과자·떡</label><br>
					    </div>
					    <div>
					    <input type="checkbox" name="check1" id="check6" value="6" class="checkbox1">
					    <label for="check6">국·반찬·메인요리</label><br>
					    </div>
					    <div>
					    <input type="checkbox" name="check1" id="check7" value="7" class="checkbox1">
					    <label for="check7">생수·음료·우유·커피</label><br>
					    </div>
					    <div>
					    <input type="checkbox" name="check1" id="check8" value="8" class="checkbox1">
					    <label for="check8">주방용품</label><br>
					    </div>
					    <div>
					    <input type="checkbox" name="check1" id="check9" value="9" class="checkbox1">
					    <label for="check9">반려동물</label><br>
					    </div>
					    <div>
					    <input type="checkbox" name="check1" id="check10" value="10" class="checkbox1">
					    <label for="check10">베이커리·치즈·델리</label><br>
					    </div>
					</div><!-- checkbox -->
					</form>
					</div><!-- newside -->
					
					<div id=New_side>
					<div id="New_category">브랜드</div>
					<form>
					<div class="checkbox">
						<div>
					    <input type="checkbox" name="check1" id="check11" value="1" class="checkbox1">
					    <label for="check11">가농바이오</label><br>
					    </div>
					    
					    <div>
					    <input type="checkbox" name="check1" id="check12" value="2" class="checkbox1">
					    <label for="check12">고기대신</label><br>
					    </div>
					    
					    <div>
					    <input type="checkbox" name="check1" id="check13" value="3" class="checkbox1">
					    <label for="check13">그라놀로지</label><br>
					    </div>
					    
					    <div>
					    <input type="checkbox" name="check1" id="check14" value="4" class="checkbox1">
					    <label for="check14">기라델리</label><br>
					    </div>
					    <div>
					    <input type="checkbox" name="check1" id="check15" value="5" class="checkbox1">
					    <label for="check15">내추로</label><br>
					    </div>
					    <div>
					    <input type="checkbox" name="check1" id="check16" value="6" class="checkbox1">
					    <label for="check16">네스카페</label><br>
					    </div>
					    <div>
					    <input type="checkbox" name="check1" id="check17" value="7" class="checkbox1">
					    <label for="check17">네스프레소</label><br>
					    </div>
					    <div>
					    <input type="checkbox" name="check1" id="check18" value="8" class="checkbox1">
					    <label for="check18">노티드</label><br>
					    </div>
					    <div>
					    <input type="checkbox" name="check1" id="check19" value="8" class="checkbox1">
					    <label for="check19">농협</label><br>
					    </div>
					    <div>
					    <input type="checkbox" name="check1" id="check8" value="8" class="checkbox1">
					    <label for="check8">다담정</label><br>
					    </div>
					</div><!-- checkbox -->
					</form>
					</div><!-- newside -->
				
				</nav>
				
				<main>
					<% for(MarketVO p:MPDao.getProdAllCount()){%>
					<div> 총 <%=p.getCount() %>건</div><%} %>
					<div>
						<ul>
							<li><a href="#">추천순</a></li>
							<li>|</li>
							<li><a href="#">신상품순</a></li>
							<li>|</li>
							<li><a href="#">판매량순</a></li>
							<li>|</li>
							<li><a href="#">혜택순</a></li>
							<li>|</li>
							<li><a href="#">낮은가격순</a></li>
							<li>|</li>
							<li><a href="#">높은가격순</a></li>
						</ul>
					</div>
					<div class="clear"></div>
						<%
			for(MarketVO p:MPDao.getProdList()){
			%>
			<label calss="Prod_lable" onclick="location.replace('Market_ProdInfo.jsp?Prodname=<%=p.getProdname()%>');">
			<ul class="items"> 
						<li><a href="#"><img src="/market_img/Prod/<%=p.getImgname() %>"></a><li>
						<li class="a"><a href="#">[<%=p.getBrand() %>] <%=p.getProdname()%></a></li>
						<li class="b"><a href="#"><%=((int)(p.getPrice()*(100-p.getDiscount())/100)) %>원&nbsp; <span> <%=((int)(1-1+p.getDiscount()))%>%</span></a></li>
						<li class="d"><a href="#"><%=((int)(100+p.getPrice()-100))%>원</a></li>
						<li class="c"><a href="#"><%=p.getInformation()%></a></li>				
					</ul>		
			</label>
			<%} %>
					
					
					
				</main>
			</section>
		</div><!-- box -->
						
		


<br><br><br><br><br><br><br>
<%----------------------------------------------------------------------------------------------------%>
<jsp:include page="Market_Footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>