<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.lang.*" %>
<%
	String basePath = "http://" + request.getServerName() + ":"
			+ request.getServerPort() + request.getContextPath() + "/";
	Object object = request.getSession().getAttribute("username");
	String username = "";
	if (object != null) {
		username = object.toString();
	}
	System.out.println("访问应用："+basePath+",访问者IP:"+request.getRemoteHost());
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NGINX</title>
</head>
<body>
<%=basePath%>
<hr>
本机IP反向代理(不同ip)
<a href='http://xxx123.tk/CLS1.1/'>CLS1.1</a>
<a href='http://xxx456.tk/CLS1.2/'>CLS1.2</a>
<hr>
本机uri反向代理(相同ip)
<a href='http://192.168.16.211/Web1/'>Web1</a>
<a href='http://192.168.16.211/Web2/'>Web2</a>
</body>
<hr>
跨IP反向代理实战
<a href='http://192.168.16.211/KiiikTradeDataCenter/jkImport/pushUrl.html'>jkurl</a>
<a href='http://192.168.16.211/QHTradeDataCenter/qhExport/pushUrl.html'>qhurl</a>
<a href='http://192.168.16.211/HKTradeDataCenter/hkExport/pushUrl.html'>hkurl</a>
</html>