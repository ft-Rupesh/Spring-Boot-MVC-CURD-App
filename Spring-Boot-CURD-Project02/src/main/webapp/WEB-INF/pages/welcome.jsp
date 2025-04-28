
 <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student CRUD Operation</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f0f2f5, #dfe9f3);
            color: #333;
        }

        .container {
            text-align: center;
            padding: 100px 20px;
        }

        .title {
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 50px;
            color: #2c3e50;
        }

        .report-link {
            display: inline-block;
            text-decoration: none;
            background-color: #3498db;
            color: white;
            padding: 15px 25px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .report-link:hover {
            background-color: #2980b9;
            transform: scale(1.05);
        }

        .report-link img {
            vertical-align: middle;
            height: 24px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="title">Welcome to Student CRUD Operation</div>
        <a href="report" class="report-link">
            <img src="images/report.jpg" alt="Report Icon"> View Report
        </a>
    </div>
</body>
</html>
 