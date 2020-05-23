<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create new Record in Address Book</title>
</head>
<body>
<div class="general">
    <%@include file="header.jsp" %>
    <style><%@include file="/WEB-INF/css/styles.css"%></style>
    <br> <br>
    <% if (request.getAttribute("error") != null) { %>
    <%=request.getAttribute("error")%>
    <%
        }
    %>
    <form action="/records/create" method="post">
        <table>
            <tr>
                <td>
                    <label for="firstName">First Name: </label>
                </td>
                <td>
                    <input type="text" id="firstName" name="firstName">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="lastName">Last Name: </label>
                </td>
                <td>
                    <input type="text" id="lastName" name="lastName">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="address">Address: </label>
                </td>
                <td>
                    <textarea id="address" cols="18" rows="2" name="address"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <input class="button" type="submit" value="Create">
                </td>
                <td>
                    <input class="button" type="reset" value="Clear">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
