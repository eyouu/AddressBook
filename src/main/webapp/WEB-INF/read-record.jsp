<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Read Record from Address Book</title>
</head>
<body>
<div class="general">
    <%@include file="header.jsp" %>
    <br>
    <p>First Name: <b><%=request.getAttribute("firstName")%>
    </b></p>
    <p>Last Name: <b><%=request.getAttribute("lastName")%>
    </b></p>
    <p>Address: <b><%=request.getAttribute("address")%>
    </b></p>
</body>
</div>
</html>
