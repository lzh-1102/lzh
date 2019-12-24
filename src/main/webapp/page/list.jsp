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
快速过滤:&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/getlist.do">全部</a>&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/getlist.do?avg=80">平均分在80分以上</a>&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/getlist.do?score=90">主持分在90分以上</a>&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/getlist.do?degree=3">学历在研究生以上</a>
<br>
<input type="button" value="添加面试人员" onclick="add()">
<table>
  <tr>
    <th>应聘人</th>
    <th>性别</th>
    <th>年龄</th>
    <th>毕业学校</th>
    <th>所学专业</th>
    <th>学历</th>
    <th>学位</th>
    <th>面试成绩</th>
    <th>平均成绩</th>
    <th>操作</th>
  </tr>
  <c:forEach items="${getlist.list}" var="list">
	  <tr>
	    <td>${list.name}</td>
	    <td>${list.gender}</td>
	    <td>${list.birthday}</td>
	    <td>${list.college}</td>
	    <td>${list.major}</td>
	    <td>
	   ${list.getedu(list.edu) }
	    </td>
	    <td>
	    ${list.getdegree(list.degree)}
	    </td>
	    <td>${list.score}</td>
	    <td>${list.avg}</td>
	    <td>
	    <input type="button" value="更新" onclick="up(${list.id})">
	    <input type="button" value="删除" onclick="del(${list.id})">
	    <input type="button" value="录入成绩" onclick="score(${list.id})">
	    </td>
	  </tr>
  </c:forEach>
  	  <tr>
	    <td colspan="10">
	    <a href = "<%=request.getContextPath()%>/getlist.do?pageNum=1">首页</a>
	    <a href = "<%=request.getContextPath()%>/getlist.do?pageNum=${getlist.isFirstPage ? 1 : getlist.prePage}">上一页</a>
	    <a href = "<%=request.getContextPath()%>/getlist.do?pageNum=${getlist.isLastPage ? getlist.lastPage : getlist.nextPage}">下一页</a>
	    <a href = "<%=request.getContextPath()%>/getlist.do?pageNum=${getlist.pages}">尾页</a>当前 ${getlist.pageNum} / ${getlist.pages}页
	    </td>
	  </tr>
</table>

</body>
<script type="text/javascript">
function add(){
	location.href = "<%=request.getContextPath()%>/toAdd.do";
}

function del(a){
	$.post("<%=request.getContextPath()%>/del.do",{aid:a},function(a){
		if(a>0){
			alert("删除成功");
			location.href = "<%=request.getContextPath()%>/getlist.do"
		}
	},"json");
}
function score(a){
	location.href = "<%=request.getContextPath()%>/toscore.do?id="+a;
}
function up(a){
	location.href = "<%=request.getContextPath()%>/toupdate.do?id="+a;
}



</script>
</html>