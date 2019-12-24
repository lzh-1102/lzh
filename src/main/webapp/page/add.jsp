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
<f:form modelAttribute="applicant" action="add.do" method="post">
应聘人：<f:input path="name"/>
<f:errors cssStyle="color:red" path="name"></f:errors><br><br>
性别：<f:radiobutton path="gender" value="男"/>男<f:radiobutton path="gender" value="女"/>女
<f:errors cssStyle="color:red" path="gender"></f:errors><br><br>
出生日期：<f:input path="birthday"/>
<f:errors cssStyle="color:red" path="birthday"></f:errors><br><br>
毕业大学：<f:input path="college"/>
<f:errors cssStyle="color:red" path="college"></f:errors><br><br>
所学专业：<f:input path="major"/>
<f:errors cssStyle="color:red" path="major"></f:errors><br><br>
学历:<f:select path="edu">
<f:option value="-1">===请选择===</f:option>
<f:option value="1" >专科</f:option>
<f:option value="2" >本科</f:option>
<f:option value="3" >研究生</f:option>
</f:select>
<f:errors cssStyle="color:red" path="edu"></f:errors><br><br>
学位:<f:select path="degree">
<f:option value="-1">===请选择===</f:option>
<f:option value="1" >学士</f:option>
<f:option value="2" >硕士</f:option>
<f:option value="3" >博士</f:option>
</f:select>
<f:errors cssStyle="color:red" path="degree"></f:errors><br><br>
<input type="submit" value="添加">
</f:form>
</body>
<script type="text/javascript">

</script>
</html>
</html>