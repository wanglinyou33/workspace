<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%
    String ipstr = request.getRemoteAddr();
    System.out.println("requesturl urlStr::" + ipstr);
    if (application.getAttribute("urlmap") != null) {
        Map map = (Map) application.getAttribute("urlmap");
        String urlStr = (String) map.get(ipstr);
        System.out.println("requesturl urlStr::" + (urlStr != null ? urlStr : ""));
        if (urlStr != null && !urlStr.equals("")) {
            out.print(urlStr);
        } else {
            out.print("");
        }
    }
%>
