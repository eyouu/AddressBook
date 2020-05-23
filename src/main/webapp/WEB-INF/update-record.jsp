<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update existing Record id Address Book</title>
</head>
<body>
<div class="general">
    <%@include file="header.jsp" %>
    <br>
    <form action="/records/update" method="post">
        <table>
            <tr>
                <td>
                    <label for="firstName">First Name: </label>
                </td>
                <td>
                    <input type="text" id="firstName" name="firstName" value="<%=request.getAttribute("first-name")%>"
                           disabled>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="lastName">Last Name: </label>
                </td>
                <td>
                    <input type="text" id="lastName" name="lastName" value="<%=request.getAttribute("last-name")%>"
                           disabled>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="address">Address: </label>
                </td>
                <td>
                    <textarea id="address" cols="18" rows="2"
                              name="address"><%=request.getAttribute("address")%></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <input class="button" type="submit" value="Update">
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
