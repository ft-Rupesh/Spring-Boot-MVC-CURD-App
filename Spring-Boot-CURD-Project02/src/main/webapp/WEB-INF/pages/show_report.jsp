
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Report</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f0f2f5, #dfe9f3);
            color: #333;
        }

        .title {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            color: #e74c3c;
            margin-top: 40px;
        }

        .msg {
            text-align: center;
            font-size: 20px;
            color: green;
            margin-top: 20px;
        }

        table {
            margin: 40px auto;
            border-collapse: collapse;
            width: 90%;
            background-color: #fff;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 14px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #2ecc71;
            color: white;
            font-size: 16px;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        a img {
            transition: transform 0.3s ease;
        }

        a:hover img {
            transform: scale(1.1);
        }

        .actions {
            display: flex;
            justify-content: center;
            gap: 15px;
        }

        .links {
            display: flex;
            justify-content: center;
            gap: 50px;
            margin-top: 40px;
        }

        .links a {
            text-decoration: none;
            color: #2980b9;
            font-weight: bold;
            text-align: center;
        }

        .links img {
            width: 100px;
            height: 100px;
            margin-bottom: 10px;
        }

        .no-record {
            text-align: center;
            color: red;
            font-size: 22px;
            margin-top: 50px;
        }
    </style>
</head>
<body>

    <h1 class="title">Student Report Page</h1>

    <c:choose>
        <c:when test="${!empty listStudents}">
            <table>
                <tr>
                    <th>Student ID</th>
                    <th>Student Name</th>
                    <th>Student Address</th>
                    <th>Student ID (Again?)</th>
                    <th>Student Category</th>
                    <th>Student Fee</th>
                    <th>Operations</th>
                </tr>
                <c:forEach var="student" items="${listStudents}">
                    <tr>
                        <td>${student.sid}</td>
                        <td>${student.sname}</td>
                        <td>${student.addrs}</td>
                        <td>${student.sid}</td>
                        <td>${student.category}</td>
                        <td>${student.fee}</td>
                        <td class="actions">
                            <a href="edit?no=${student.sid}">
                                <img src="images/edit.jpg" alt="Edit" width="30" height="30" />
                            </a>
                            <a href="delete?no=${student.sid}" onclick="return confirm('Are you sure to delete the record?')">
                                <img src="images/delete.jpg" alt="Delete" width="30" height="30" />
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:when>

        <c:otherwise>
            <div class="no-record">No Record Found</div>
        </c:otherwise>
    </c:choose>

    <c:if test="${!empty resultMsg}">
        <div class="msg">${resultMsg}</div>
    </c:if>

    <div class="links">
        <a href="register">
            <img src="images/add.jpg" alt="Register Student" />
            <div>Register Student</div>
        </a>
        <a href="./">
            <img src="images/home.jpg" alt="Home" />
            <div>Home</div>
        </a>
    </div>
</body>
</html>
	