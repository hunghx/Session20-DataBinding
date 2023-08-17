<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: hung1
  Date: 8/17/2023
  Time: 1:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form modelAttribute="user" action="/login" method="post">
    <div>
        <form:label path="username">username : </form:label>
        <form:input path="username"></form:input>
    </div>
    <div>
        <form:label path="password">password : </form:label>
        <form:input path="password"></form:input>
    </div>
    <div>
        <form:label path="sex">Sex</form:label>
        <form:checkbox path="sex"></form:checkbox>
        <br>
<%--        <form:checkboxes path="hobbies" items="${hobbies}"></form:checkboxes>--%>
    </div>
    <div>
        <form:label path="radio"></form:label>
        <form:radiobutton path="radio"></form:radiobutton>
<%--        <form:radiobuttons path="hobbies" items="${hobbies}"></form:radiobuttons>--%>
    </div>
    <div>
<%--        <select name="choices" multiple>--%>
<%--            <option value="1">A</option>--%>
<%--            <option value="2">B</option>--%>
<%--            <option value="3">C</option>--%>
<%--            <option value="4">D</option>--%>
<%--        </select>--%>
        <form:select path="hobbies" items="${hobbies}">

        </form:select>
    </div>
    <input type="submit" value="Login">
</form:form>
</body>
</html>
