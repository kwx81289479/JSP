<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>在线购书-数据处理</title>
</head>
<body>


<jsp:useBean id="user" scope="session" class="soft1532.UserInfoBean" />

<jsp:setProperty property="*" name="user"/>

<%
if(user.getUsername()==null||user.getPasswd()==null){
%>
<jsp:forward page="index.htm" />

<%
}else{
%>

<jsp:forward page="bookShop.jsp">
<jsp:param value="<%=user.getUsername() %>" name="username"/>
</jsp:forward>
<%}%>

</body>
</html>