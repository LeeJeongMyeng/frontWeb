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

</style>
<script type="text/javascript">




/* function GoToCategory(category){
	  document.frm.action = "Market_category.jsp";
	  document.frm.method = category;
	  document.frm.submit();
} */


</script>

</head>

<%MarketProd MPDao = new MarketProd();
MarketVO sch = new MarketVO();
User UDao = new User();
UserVO user = new UserVO();




%>


</head>
<body>
<jsp:include page="Market_Top2.jsp"></jsp:include>


<%----------------------------------------------------------------------------------------------------%>
	
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
	
	
	
	<div class="box" id="New_container">
		<div id="New_MainText"><h1>추천 상품</h1></div>
			<section class="New_content">
				<main>
					<div class="clear"></div>
				<%for(MarketVO p:MPDao.getProdList1t4()){%>
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
		<div id="New_MainText"><h1>이런상품은 어때요?</h1></div>
			<section class="New_content">
				<main>
					<div class="clear"></div>
						<%
			for(MarketVO p:MPDao.getProdList5t8()){
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
		<div id="New_MainText"><h1>후기 좋은 상품</h1></div>
			<section class="New_content">
				<main>
					<div class="clear"></div>
						<%
			for(MarketVO p:MPDao.getProdList9t12()){
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
						



<%----------------------------------------------------------------------------------------------- --%>

<jsp:include page="Market_Footer.jsp"></jsp:include>

</body>
<script type="text/javascript">

</script>
</html>