<%-- 
    Document   : StudentOfParent
    Created on : May 19, 2024, 9:46:40 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   
        <table border="1">
            <c:forEach items="${requestScope.list}" var="l">
            <tbody>
                <tr>
                    <td><a href="timetable?stuid=${l.stuid}">${l.sname}</a></td>
                </tr>
            </tbody>
            </c:forEach>
        </table>

    </body>
</html>
