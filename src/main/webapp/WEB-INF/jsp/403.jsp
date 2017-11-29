<%-- 
    Document   : 403
    Created on : Nov 3, 2017, 5:21:32 PM
    Author     : Ivan
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <body>
        <h1>You are not allowed to see this page</h1>
        <c:choose>
            <c:when test="${empty username}">
                <h2>Login</h2>
            </c:when>
            <c:otherwise>
                <h2>User ${username} <br/> you aren't allowed here!</h2>
                <form action="/IT355-DZ02-JelenaZivkovic2731/login">
                    <input type="submit" value="Logout" />
                </form>
                </c:otherwise>
            </c:choose>
    </body>
</html>
</html>
