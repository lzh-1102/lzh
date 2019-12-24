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
<form action="<%=request.getContextPath()%>/upapplicant.do" method="post" name="upform">
<input type="hidden" value="${one.id}" name="id">
应聘人:<input type="text" name="name" value="${one.name}"><br>
性别:<input type="radio" name="gender" value="男" ${one.gender eq '男' ? 'checked':'' }>男<input type="radio" name="gender" value="女" ${one.gender eq '女' ? 'checked':'' }>女<br>
出生日期:<input type="text" name="birthday" value="${one.birthday}"><br>
毕业大学:<input type="text" name="college" value="${one.college}"><br>
所选专业:<input type="text" name="major" value="${one.major}"><br>
学历:<select name="edu">
<option value="1" ${one.edu eq '1' ? 'selected':''}>专科</option>
<option value="2" ${one.edu eq '2' ? 'selected':''}>本科</option>
<option value="3" ${one.edu eq '3' ? 'selected':''}>研究生</option>
</select><br>
学位:<select name="degree">
<option value="1" ${one.degree eq '1' ? 'selected':''}>学士</option>
<option value="2" ${one.degree eq '2' ? 'selected':''}>硕士</option>
<option value="3" ${one.degree eq '3' ? 'selected':''}>博士</option>
</select><br>

<input type="button" value="保存" onclick="up()">
</form>
</body>
<script type="text/javascript">



function up(){
	$("form[name='upform']").ajaxSubmit(function(a){
		if(a>0){
			alert("修改成功");
			location.href = "<%=request.getContextPath()%>/getlist.do"
		}
	});
}


</script>
</html>