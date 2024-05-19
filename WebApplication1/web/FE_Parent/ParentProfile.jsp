<%-- 
    Document   : ParentProfile
    Created on : May 16, 2024, 9:55:22 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../CSS/ParentProfile.css"/>
    </head>
    <body>
        <div class="user-profile">
            <div class="div">
                <div class="overlap-group">
                    <div class="overlap">
                        <div class="text-wrapper">${pa.pname}</div>
                        <div class="text-wrapper-2">Mẹ Lê Lan Chi</div>
                        <div class="overlap-2">
                            <p class="gi-o-vi-n">
                                <span class="span">Giáo Viên<br /></span> <span class="text-wrapper-3"><br /></span>
                            </p>
                            <div class="text-wrapper-4">Nguyễn Thảo Trang</div>
                        </div>
                        <div class="text-wrapper-5">Phụ Huynh</div>
                        <div class="text-wrapper-6">${pa.email}</div>
                    </div>
                    <div class="overlap-3">
                        <div class="text-wrapper-7">Tên thường gọi</div>
                        <div class="text-wrapper-8">${pa.nickname}</div>
                    </div>
                    <div class="overlap-4">
                        <div class="text-wrapper-9">Họ và tên</div>
                        <div class="text-wrapper-10">${pa.pname}</div>
                    </div>
                    <div class="overlap-5">
                        <div class="text-wrapper-11">Ngày sinh</div>
                        <div class="text-wrapper-12">${pa.dob}</div>
                    </div>
                    <div class="text-wrapper-13">THÔNG TIN CỦA BÉ</div>
                </div>

                <c:forEach var="student" items="${stu}">
                    <div class="navbar">
                        <div class="rectangle"></div>
                        <div class="text-wrapper-14">Họ và tên</div>
                        <div class="text-wrapper-15">${student.sname}</div>
                    </div>
                    <div class="text-wrapper-16">THÔNG TIN CÁ NHÂN</div>
                    <div class="overlap-7">
                        <div class="text-wrapper-17">SĐT</div>
                        <div class="text-wrapper-18">${student.gender}</div>
                    </div>
                    <div class="overlap-8">
                        <div class="text-wrapper-19">Email</div>
                        <div class="text-wrapper-20">${student.address}</div>
                    </div>
                    <div class="overlap-9">
                        <div class="text-wrapper-21">Ngày sinh</div>
                        <div class="text-wrapper-22">${student.dob}</div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>
