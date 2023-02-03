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

<script>
/*
 
 */
</script>
</head>
<body>
<%
MapList MLDao = new MapList();
MapVO mv = new MapVO();

%>

		<select name="bigsel" id="bigsel" onchange="javascript:selectbig(this)">
		<%for(MapVO m:MLDao.getBigMapList()){%>
			<option value="<%=m.getBigmap()%>"><%=m.getBigmap() %></option>
			<%} %>
		</select>
		
		<select name="midsel" id="midsel" onchange="javascript:selectmid(this)">
		</select>
		
		<select name="smallsel" id="smallsel">
		</select>
<div id="container"></div>
</body>
<script>
var div = document.querySelector("#container");
var midsel = document.querySelector("#midsel");
var smallsel = document.querySelector("#smallsel");
var loc = [{"big":"대분류","mid":"중분류","small":"소분류"}];
<%for(MapVO m:MLDao.getAllMapList()){
	if(!m.getBigmap().equals("세종특별자치시")){
%>
loc.push({"big":"<%=m.getBigmap()%>","mid":"<%=m.getMidmap()%>","small":"<%=m.getSmallmap()%>"});
<%}else{%>
loc.push({"big":"<%=m.getBigmap()%>","mid":"<%=m.getSmallmap()%>","small":"-"});
<%}}%>



function selectbig(val){
	alert(val.value)
var addmidsel ="";
var arrymid = [];
if(val!='세종특별자치시'){
 for(var idx=0; idx<loc.length; idx++){
	 if(loc[idx].big==val.value){
	arrymid.push(loc[idx].mid)
	 }
	}
}
 var arrymid2 = [... new Set(arrymid)] //중복제거
 for(var idx=0; idx<arrymid2.length; idx++){
	 addmidsel+="<option value='"+arrymid2[idx]+"'>"+arrymid2[idx]
 }
  midsel.innerHTML=addmidsel
}
function selectmid(val){
	alert(val.value)
var addsmallsel ="";	
 for(var idx=0; idx<loc.length; idx++){
	 if(loc[idx].mid==val.value){
	addsmallsel+="<option value='"+loc[idx].small+"'>"+loc[idx].small
	 }
	} 
 smallsel.innerHTML=addsmallsel
}









</script>
</html>