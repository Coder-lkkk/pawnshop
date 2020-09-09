<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <title>image</title>
	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<!-- jquery -->
<script src="<%=basePath%>js/jquery-3.4.1.min.js"></script>

<!-- bootstrap -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<title>list</title>
<style type="text/css">
	#images{
		width: 150px;
		height: 250px;
	}
</style>
  </head>
  
  <body>
	
	<table class="table table-bordered table-hover">
		<tr>
			<th>序号</th>
			<th>图片</th>
		</tr>
		<c:forEach items="${lists}" var="user">
			<tr>
				<td>${user.uid}</td>
				<td>
					<c:if test="${user.uimage != null}">
						<img alt="" src="/images/${user.uimage}" id="images">
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
