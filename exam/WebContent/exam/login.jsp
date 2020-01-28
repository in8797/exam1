<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        div {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #41d2a2), color-stop(1, #41d1a1));
            background: -moz-linear-gradient(center top, #41d2a2 5%, #41d1a1 100%);
            background-color: #41d2a2;
            border-radius: 15px;
            display: inline-block;
            color: #ffffff;
            font-family: arial;
            font-size: 16px;
            font-weight: bold;
            font-style: normal;
            height: 30px;
            line-height: 30px;
            width: 100px;
            text-align: center;
        }

        table {
            size: 400px;
            width: 400px;
            height: 150px;
        }

        #button {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #63b8ee), color-stop(1, #63b9ee));
            background: -moz-linear-gradient(center top, #63b8ee 5%, #63b9ee 100%);
            background-color: #63b8ee;
            display: inline-block;
            color: #ffffff;
            font-family: Arial;
            font-size: 16px;
            font-weight: bold;
            font-style: normal;
            height: 40px;
            line-height: 40px;
            width: 375px;
            text-decoration: none;
            text-align: center;
        }

        td {
            text-align: center;
        }

        input {
            height: 30px;
            width: 250px;
        }

        body {
            position: relative;
            top: 300px;
        }
    </style>
</head>

<body>
    <form>
        <table align="center">
            <tr>
                <td>
                    <div>이메일</div>
                </td>
                <td>
                    <input type="text" id="email" name="email" value="내용을 입력해주세요">
                </td>
            </tr>
            <tr>
                <td>
                    <div>패스워드</div>
                </td>
                <td>
                    <input type="text" id="pw" name="pw" value="내용을 입력해주세요">
                </td>
            </tr>
            <tr>
                <td colspan="2"><input type="button" id="button" value="로그인" onclick="location.href='main.jsp'" > </td>
            </tr>
        </table>
    </form>
</body>

</html>