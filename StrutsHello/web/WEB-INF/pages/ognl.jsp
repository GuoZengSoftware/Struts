<%--
  Created by IntelliJ IDEA.
  User: WangGenshen
  Date: 2/27/16
  Time: 08:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:debug></s:debug>
<br />
Product: id ${product.id}, name ${product.name}
<br />
Product: id <s:property value="product.id"/>, name <s:property value="product.name" />, name <s:property value="[0].product.name" /><!-- 从值栈中获取数据 -->
<br />
New Product: id <s:property value="id"/>, name <s:property value="name" />
<br />
Result: <s:property value="result" />, <s:property value="[0].result" /><!-- [0]表示栈顶 -->
<br />
<!-- 按request, session, application的顺序从域中读取值,使用#object.property的方式,如果指定从session中读取则用#session.object.property的形式 -->
Application:<s:property value="#application.applicationKey" /><br />
Session:<s:property value="#session.sessionKey" /> <br/>
Request:<s:property value="#request.requestKey" />
</body>
</html>