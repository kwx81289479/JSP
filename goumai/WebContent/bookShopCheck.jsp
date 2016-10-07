<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>已购书信息</title>
</head>
<body bgcolor="	#FF8C69">

   <jsp:useBean id="cart" scope="session" class="soft1532.BookShopBean" />
   <jsp:setProperty property="*" name="cart"/>
   <%   
            cart.processRequest(request);
   %>
<br><font size="5" color="red">您已选购的书有：</font>
<ol>
<%
          String[] items=cart.getItems();
           for (int i=0;i<items.length;i++)
           
              {
%>
<hr>
<li><%=items[i] %></li>


        <%
                } 
        %>
        <hr>
        <%@include file="./bookShop.jsp" %>
        <hr>
</ol>
<br>
<hr>



</body>
</html>