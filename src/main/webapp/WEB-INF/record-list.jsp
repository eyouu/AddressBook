<%@ page import="com.softserve.itacademy.AddressBook" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Records from Address Book</title>
</head>
<body>
<div class="general">
    <style>
        <%@include file="/WEB-INF/css/styles.css" %>
    </style>
    <%@include file="header.jsp" %>
    <br><br>
    <div class="decoration__sort">
        Sort by: <a href="/records/list?sort=asc">ascending</a> | <a href="/records/list?sort=desc">descending</a>
    </div>
    <br>
    <table>
        <tr>
            <th>№</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th colspan="3">Operations</th>
        </tr>

        <%
            for (Object record : (AddressBook) request.getAttribute("records")) {
                String[] split = record.toString().split(" ", 4);
        %>
        <tr>
            <td><%=split[0]%>
            </td>
            <td><%=split[1]%>
            </td>
            <td><%=split[2]%>
            </td>
            <td><%=split[3]%>
            </td>
            <td>
                <a class="button8" href="/records/read?first-name=<%=split[1]%>&last-name=<%=split[2]%>">Read</a>
            </td>
            <td>
                <a class="button8" href="/records/update?first-name=<%=split[1]%>&last-name=<%=split[2]%>">Update</a>
            </td>
            <td>
                <a class="button8" href="/records/delete?first-name=<%=split[1]%>&last-name=<%=split[2]%>">Delete</a>
            </td>
        </tr>
        <%
            }
        %>

    </table>
</div>
</body>
</html>
