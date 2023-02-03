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

<style>
	#CartMainText{
		text-align: center;
    font-size: 31px;
    font-weight: bold;
    margin:0 0 20px 0;
	}
	.box_cart{
 		width:1300px; 
		margin:0 auto;
		display:flex;
	}
	.cart_tablewrap{
		border;
		width:850px;
		border-collapse:collapse;
	}
	.cart_tablewrap thead{
	height:50px;
	}
	.cart_tablewrap tr{
		border-bottom:1px solid #c8c8c8;
	}
	.cart_tablewrap td>img{
		margin: 11px;
   		 width: 100px;
	}
	.cart_tablewrap tbody td:first-child{
		width:19px;
		
	}
	.cart_tablewrap tbody td:nth-child(2){
		width: 100px;
	}
	.cart_tablewrap tbody td:nth-child(3){
		width: 440px;
	    padding: 10px;
	    font-size: 16px;
	    font-weight: bold;
	}
	.cart_tablewrap tbody td:nth-child(4){
		width:120px;
		text-align:center;
	}
	.cart_tablewrap tbody td:nth-child(5){
		width:120px;
		font-size: 14px;
	    font-weight: bold;
	    text-align:right;
	    padding:10px;
	}
	.cart_tablewrap tbody td:last-child{
		width:20px;
	}
	
.totpay_wrap {
	width: 300px;
    height: 450px;
    margin: 47px 0 0 20px;
    
}

.totpay_wrap tr{
	border;
}

.totpay_ship{
	border: 1px solid #dcdcdc;
    padding: 15px;
}

.totpay_ship div{
 margin: 0 0 10px 0;
}

.totpay_ship div:first-child{
	font-size: 18px;
    font-weight: 900;
    
}
.totpay_ship div:nth-child(2){
 	font-size: 17px; 
    font-weight: 900;
}
.totpay_ship div:nth-child(3){
 	font-weight: 400;
    color: purple;
}
.totpay_ship div:nth-child(4){
 	text-align:center;
}


.totpay_ship input[type=button]{
	margin: 9px 0 0 0;
    width: 220px;
    height: 40px;
    background: none;
    color: purple;
    font-size: 16px;
    font-weight: bold;
    border: 1px solid purple;
    border-radius: 5px;
}
.totpay_pay table{
	width:100%;
	height: 100%;
	    border-bottom: 1px solid #c8c8
}

.totpay_pay div:nth-child(1){
	width: 100%;
    height: 100px;
    background:#EBF5FF;
}
.totpay_pay div td:nth-child(1){
	font-size: 17px;
    font-weight: 900;
}
.totpay_pay div td:nth-child(2){
	font-size: 17px;
    font-weight: 900;
    text-align: right;
}
.totpay_pay div:nth-child(2){
	height: 50px;
	background:#EBF5FF;
}
.totpay_pay div:nth-child(3){
	text-align:center;
}
.totpay_pay div:nth-child(3) input{
	    margin: 20px 0 0 0;
    width: 300px;
    height: 55px;
    border: none;
    border-radius: 5px;
    background: #AD46E0;
    color: white;
    font-size: 20px;
    font-weight: 900;
}
</style>
<script type="text/javascript">
/*
 
*/
</script>

</head>
<body>
<%
				String id = (String)session.getAttribute("Login_ID");
				MarketCart MCDao = new MarketCart();
				CartVO sch = new CartVO(id);
				
	%>		
	<jsp:include page="Market_Top2.jsp"></jsp:include>
		<br><br><br><br>
		<div id="CartMainText"> '<%=session.getAttribute("Login_ID") %>'님의 장바구니 내역 </div>
	<div class="box_cart" id="New_container">
		
	 	
	
	
	
	
		<form>
			<table class="cart_tablewrap" id="cart_tablewrap">
				<thead><tr><td><input type="checkbox" name="cartAll" onclick="ckAllFn(this)"/></td><td colspan="5">전체선택</td></tr></thead>
				
		<%for(CartVO c:MCDao.getSearchCartList(sch)){ 
				%>
				<tbody>
					<tr><td onclick="checksuc()"><input type="checkbox" name="cart" value="" /></td>
					    <td><img src="/market_img/Prod/<%=c.getImgname()%>"></td>
					    <td>[<%=c.getBrand()%>]<%=c.getProdname() %></td>
					    <td class="cart_cnt"><%=(int)c.getCnt()%></td>
					    <%int price=((int)(c.getPrice()*(100-c.getDiscount())/100));
					    int priceInt = Math.round(price/100)*100;%>
					    <td class="cart_price"><%=priceInt %></td>
					    <td>X</td></tr>
					    
				</tbody>
				
		<%
		
		} %>

			</table>
		</form>
		<div class="totpay_wrap">
			<div class="totpay_ship">
				<div> 배송지</div>		
				<div> 서울 양천구 목동중앙남로 16나길 38-10 (월드메르디앙)201호</div>		
				<div> 샛별배송</div>
				<div><input type="button" value="배송지 변경"></div>
			</div>
			<div class="totpay_pay">
				<div> 
					<table>
						<tr><td>상품금액</td><td id="cart_totpay">0원</td></tr>
						<tr><td>배송비</td><td>2500원</td></tr>
					</table>
				</div>
				<div>
					<table>
						<tr><td>결제예정금액</td><td id="cart_totpay2">0원</td></tr>
					</table>
				</div>
				<div>
					<input type="button" value="주문하기">
				</div>
			</div>
		</div>
	
	</div> 

	<h2 id="container"></h2>
	<jsp:include page="Market_Footer.jsp"></jsp:include>		
</body>
<script type="text/javascript">
 /*var carts = document.querySelectorAll("[name=cart]")
var carts = document.querySelectorAll("[name=cart]")
var carts = document.querySelectorAll("[name=cart]") */



 var h2 = document.querySelector("#container ")
 var cart_totpay = document.querySelector("#cart_totpay ")
 var cart_totpay2 = document.querySelector("#cart_totpay2 ")
 var carts = document.querySelectorAll("[name=cart]")
 
 var table =document.getElementById('cart_tablewrap');
 
 
/*  function ckAllFn(obj){//전체클릭 기능(체크하나풀렷을떄도 적용해야함)
		
		for(var idx=0; idx<carts.length;idx++){
			
			carts[idx].checked = obj.checked
			checksuc();
		}	
	} */

 
 
 for(var idx=0; idx<carts.length;idx++){
		// 각요소 객체를 이벤트 할당
		carts[idx].onclick=function(){
			checksuc();
		}
	}
 
 function checksuc(){
	 var totpay=0;
	/*  alert("gdgdgdgddg") */
  var table =document.getElementById('cart_tablewrap');
  var rowList = table.rows; 
  
  
  for (i=1; i<rowList.length; i++) {//thead부분 제외.
	  var row = rowList[i];
      //var tdsNum = row.childElementCount;// 자식요소 갯수 구하기.
      var row_checked = row.cells[0].firstElementChild.checked;
      if(row_checked){
    	  var row_price = parseInt(row.cells[4].innerHTML)
          var row_cnt = parseInt(row.cells[3].innerHTML)
          var totmem = row_price*row_cnt
          totpay+=totmem
          cart_totpay.innerHTML=totpay+"원"
          cart_totpay2.innerHTML=totpay+parseInt("2500")+"원"          
      	}
      } 
  }

 
  

</script>
</html>