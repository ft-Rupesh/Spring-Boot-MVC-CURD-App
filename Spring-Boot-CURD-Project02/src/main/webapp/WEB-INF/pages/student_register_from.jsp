<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f0f2f5, #dfe9f3);
            color: #333;
        }

        .container {
            width: 100%;
            max-width: 600px;
            margin: 80px auto;
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        }

        .title {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            color: #e74c3c;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 12px;
            font-size: 16px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            box-sizing: border-box;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        input[type="reset"] {
            background-color: #95a5a6;
            color: white;
        }

        input[type="reset"]:hover {
            background-color: #7f8c8d;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="title">Student Registration Page</div>

        <frm:form modelAttribute="student">
            <table>
                <tr>
                    <td>Student Name</td>
                    <td><frm:input type="text" path="sname" /></td>
                </tr>
                <tr>
                    <td>Student Address</td>
                    <td><frm:input type="text" path="addrs" /></td>
                </tr>
                <tr>
                    <td>Student Category</td>
                    <td><frm:input type="text" path="category" /></td>
                </tr>
                <tr>
                    <td>Student Fee</td>
                    <td><frm:input type="text" path="fee" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Register" /></td>
                    <td><input type="reset" value="Cancel" /></td>
                </tr>
            </table>
        </frm:form>
    </div>
</body>
</html>
