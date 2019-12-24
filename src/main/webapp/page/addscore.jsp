<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/index_work.css"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/messages_zh.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/jquery/jquery.form.js"></script>
</head>
<body>
<form action="<%=request.getContextPath()%>/addscore.do" method="post" name="addform">
面试人:${one.name}<br>
<input type="hidden" name="aid" value="${one.id}">
科目:<select name="jid">
<option value="">===请选择===</option>
<c:forEach items="${list}" var="l">
<option value="${l.id}">${l.name}</option>
</c:forEach>
</select><br>
成绩:<input type="text" name="score"><br>
<input type="button" value="添加" onclick="add()">
</form>
</body>
<script type="text/javascript">

function add(){
	$("form[name='addform']").ajaxSubmit(function(a){
		if(a>0){
			alert("录入成功");
			location.href = "<%=request.getContextPath()%>/getlist.do";
		}
	});
}

</script>
</html>