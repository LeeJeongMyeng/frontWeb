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
<link rel="stylesheet" type="text/css" href="cssFile/gesipan.css">
<style>

</style>

<script>

</script>

</head>
<body>

	<div class="gesi_wrap">
		<div class="gesi_title">
			<strong>공지사항</strong>
			<p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
		</div>
		<div class="gesi_list_wrap"> <!-- 리스트 페이지번호, 버튼이 들어가는곳 -->
			<div class="gesi_list">
				<div class="top">
					<div class="num">번호</div>
					<div class="title">제목</div>
					<div class="writer">글쓴이</div>
					<div class="date">작성일</div>
					<div class="count">조회</div>
				</div>
				<div>
					<div class="num">5</div>
					<div class="title"><a href="viewgesi.jsp">글제목이 들어갑니다.</a></div>
					<div class="writer">김이름</div>
					<div class="date">2021.1.15</div>
					<div class="count">33</div>
				</div>
				<div>
					<div class="num">4</div>
					<div class="title"><a href="viewgesi.jsp">글제목이 들어갑니다.</a></div>
					<div class="writer">김이름</div>
					<div class="date">2021.1.15</div>
					<div class="count">33</div>
				</div>
				<div>
					<div class="num">3</div>
					<div class="title"><a href="viewgesi.jsp">글제목이 들어갑니다.</a></div>
					<div class="writer">김이름</div>
					<div class="date">2021.1.15</div>
					<div class="count">33</div>
				</div>
				<div>
					<div class="num">2</div>
					<div class="title"><a href="viewgesi.jsp">글제목이 들어갑니다.</a></div>
					<div class="writer">김이름</div>
					<div class="date">2021.1.15</div>
					<div class="count">33</div>
				</div>
				<div>
					<div class="num">1</div>
					<div class="title"><a href="viewgesi.jsp">글제목이 들어갑니다.</a></div>
					<div class="writer">김이름</div>
					<div class="date">2021.1.15</div>
					<div class="count">33</div>
				</div>
				
			</div><!-- gesi_list -->
			<div class="gesi_page">
					<a href="#" class="gesibt first"><<</a>
					<a href="#" class="gesibt prev"><</a>
					<a href="#" class="gesinum on">1</a>
					<a href="#" class="gesinum">2</a>
					<a href="#" class="gesinum">3</a>
					<a href="#" class="gesinum">4</a>
					<a href="#" class="gesinum">5</a>
					<a href="#" class="gesibt next">></a>
					<a href="#" class="gesibt last">>></a>
			</div>
			<div class="bt_wrap">
				<a href="gesi_write.jsp" class="on">등록</a>
				<!--  <a href="#">수정</a>-->
			</div>
		</div>
	</div>


</body>
<script>
/*

 */
</script>
</html>