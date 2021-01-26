<%@ page language="java" import="java.util.*" pageEncoding="GBK" contentType="text/html; charset=UTF-8"%>
<%
  request.setCharacterEncoding("GBK");
  response.setCharacterEncoding("GBK");
  response.setContentType("GBK"); %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'book_insert.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="BMS/css/bms_style.css">
	


  </head>
  
  <body>
     <p>hhhhhh</p>
     <a href="user.jsp">Ìø×ªcr-userÏÂµÄuser.jsp</a>
  </body>
</html>