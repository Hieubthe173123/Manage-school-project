<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Parent Profile</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="styles.css">
        <style>
            body {
                background-color: #b3d9ff;
            }

            .info-group {
                margin-bottom: 1rem;
            }

            .info-group label {
                font-weight: bold;
                margin-bottom: 0.25rem;
                color: #333;
            }

            .info-group p {
                margin-bottom: 0;
                color: #666;
            }

            .card {
                border-radius: 10px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .card-header {
                background-color: #f0f9ff;
                padding: 1rem;
                border-radius: 10px 10px 0 0;
            }

            .card-body {
                padding: 2rem;
            }
        </style>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            <h2>${pa.pname}</h2>
                        </div>
                        <div class="card-body">
                            <div class="info-group">
                                <label>Tên thường gọi</label>
                                <p>${pa.nickname}</p>
                            </div>
                            <div class="info-group">
                                <label>Họ và tên</label>
                                <p>${pa.pname}</p>
                            </div>
                            <div class="info-group">
                                <label>Ngày sinh</label>
                                <p>${pa.dob}</p>
                            </div>
                            <div class="info-group">
                                <label>Email</label>
                                <p>${pa.email}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <c:forEach var="student" items="${stu}">
                        <div class="card mb-3">
                            <div class="card-header">
                                <h3>${student.sname}</h3>
                            </div>
                            <div class="card-body">
                                <div class="info-group">
                                    <label>SĐT</label>
                                    <p>${student.gender}</p>
                                </div>
                                <div class="info-group">
                                    <label>Email</label>
                                    <p>${student.address}</p>
                                </div>
                                <div class="info-group">
                                    <label>Ngày sinh</label>
                                    <p>${student.dob}</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>