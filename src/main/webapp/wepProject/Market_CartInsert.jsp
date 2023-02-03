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
<script type="text/javascript">

</script>

</head>
<body>



<%
	String prodname = request.getParameter("pname");
	String cnt = request.getParameter("cnt");
	int cntInt = 0;
	if(cnt!=null  && !cnt.equals("")){ cntInt = Integer.parseInt(cnt);}
	
	String id = (String)session.getAttribute("Login_ID");
	
	
	 
	boolean isInsert=false;
	if(id!=null){
		CartVO cv = new CartVO(id,cntInt,prodname);
		MarketCart MCDao = new MarketCart();
		MCDao.insertCart(cv);
		isInsert = true;
	} else{
		
	}
	
	
%>
 






</body>
<script type="text/javascript">



var isInsert = <%=isInsert%>;


if(isInsert){
	if(confirm("장바구니에 추가되었습니다. 장바구니로 이동하시겠습니까?")){
		location.href="Market_cart.jsp";
	}else{
		location.href="Market_Main.jsp";
	}
}else{
	if(confirm("로그인이 되지 않았습니다 로그인 화면으로 이동하시겠습니까?")){
		location.href="Market_Login.jsp"
	}else{
		location.href="Market_Main.jsp"
	}
}
  
</script>
</html>