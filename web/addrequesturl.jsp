<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Iterator" %>
<%
    Map map = (Map) application.getAttribute("urlmap");
    if (map == null){
        map = new HashMap<String,String>();
    }
    String ipStr = request.getRemoteAddr();
    String urlStr = request.getParameter("myurl");
    map.put(ipStr,urlStr);
    Set<Map.Entry> set = map.entrySet();
    Iterator<Map.Entry> iterator = set.iterator();
    while (iterator.hasNext()){
        Map.Entry entry = iterator.next();
        System.out.println(entry.getKey()+"===="+entry.getValue());
    }
    application.setAttribute("urlmap",map);
%>
