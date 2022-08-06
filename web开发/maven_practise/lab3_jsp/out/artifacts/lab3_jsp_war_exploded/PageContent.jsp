<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--内置对象--%>



<%
//    pageContext.getRequest()
    pageContext.setAttribute("name1","1");
    request.setAttribute("name2","2");
    session.setAttribute("name3","3");
    application.setAttribute("name4","4");
%>

<%
    // 从pageContext中取出
    String name1 = (String)pageContext.findAttribute("name1");
    String name2 = (String)pageContext.findAttribute("name2");
    String name3 = (String)pageContext.findAttribute("name3");
    String name4 = (String)pageContext.findAttribute("name4");
%>
<%--使用EL表达式输出 ${}--%>

<h1>取出的值为:</h1>
<h3>${name1}</h3>
<h3>${name2}</h3>
<h3>${name3}</h3>
<h3>${name4}</h3>





</body>
</html>
