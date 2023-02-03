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
 <link rel="stylesheet" type="text/css" href="cssFile/gesipan.css?after"> 
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
		<div class="gesi_write_wrap"> <!-- 리스트 페이지번호, 버튼이 들어가는곳 -->
			<div class="gesi_write">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dd><input type="text" placeholder="제목입력" value="글 제목이 들어갑니다."></dd>
					</dl>
				</div>
				<div class="info">
					<dl>
						<dt>글쓴이</dt> 
						<dd><input type="text" placeholder="글쓴이 입력" value="김이름"></dd>
					</dl>
					<dl>
						<dt>비밀번호</dt>
						<dd><input type="password" placeholder="비밀번호 입력" value="1234"></dd>
					</dl>
				</div>
				<div class="cont">
					<textarea placeholder="내용 입력">
글내용이 들어갑니다
글내용이 들어갑니다.
글내용이 들어갑니다.
글내용이 들어갑니다.
글내용이 들어갑니다.
글내용이 들어갑니다.
글내용이 들어갑니다.
글내용이 들어갑니다.
					</textarea>
				</div>
				
				
			</div><!-- gesi_list -->
			
			<div class="bt_wrap">
				<a href="viewgesi.jsp" class="on">수정</a>
				<a href="gesipan.jsp">취소</a>
			</div>
		</div>
	</div>


</body>
<script>
/*

 */
</script>
</html>