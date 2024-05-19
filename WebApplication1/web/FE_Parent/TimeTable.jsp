<%-- 
    Document   : TimeTable
    Created on : May 17, 2024, 11:46:21 AM
    Author     : DELL
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
        <h2>TimeTable For Student</h2>
        
        <table border="2">
            <c:forEach items="${requestScope.curiculum}" var="c">
            <tbody>
                <tr>
                    <td>${c.atid.timeStart} - ${c.atid.timeEnd}</td>
                    <td>${c.nameAct}</td>
                </tr>            
            </tbody>
            </c:forEach>
        </table>
        
        <h2>Menu For Student</h2>
        
        <table border="2">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>

        <h2>FeedBack For Student</h2>
        <div class="text_box">
            
        </div>

    </body>
</html>
