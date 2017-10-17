<%--
  Created by IntelliJ IDEA.
  User: wanglin
  Date: 2017/10/13
  Time: 下午11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    
    <title>汪林测试接口专用</title>
  </head>
  <body>
  <%=request.getRequestedSessionId()%>
  <%=request.getRequestURI()%>
  <%=request.getRequestURL()%>
  <%=request.getRemoteAddr()%>
  <%=request.getContextPath()%>
  <%=request.getPathInfo()%>
  <%=request.getQueryString()%>
  <%=request.getServletPath()%>
  </body>
</html>
