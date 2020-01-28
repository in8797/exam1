<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        table {
            width: 1000px;
            height: 120px;
        }

        #button1 {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, darkgoldenrod), color-stop(1, #f1ff30 darkgoldenrod));
            background: -moz-linear-gradient(center top,  darkgoldenrod 5%,  darkgoldenrod 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='darkgoldenrod', endColorstr='darkgoldenrod');
            background-color: darkgoldenrod;
            color: #ffffff;
            font-family: Arial;
            font-size: 16px;
            font-weight: bold;
            font-style: normal;
            height: 40px;
            line-height: 40px;
            width: 90px;
            text-decoration: none;
            text-align: center;
        }

        #button1:active {
            position: relative;
            top: 1px;
        }

        #button2 {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #2fa8e0), color-stop(1, #2fa8e0));
            background: -moz-linear-gradient(center top, #2fa8e0 5%, #2fa8e0 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#2fa8e0', endColorstr='#2fa8e0');
            background-color: #2fa8e0;
            display: inline-block;
            color: #ffffff;
            font-family: Arial;
            font-size: 16px;
            font-weight: bold;
            font-style: normal;
            height: 40px;
            line-height: 40px;
            width: 90px;
            text-decoration: none;
            text-align: center;
        }

        #button2:active {
            position: relative;
            top: 1px;
        }

        #button3 {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #2fa8e0), color-stop(1, #2fa8e0));
            background: -moz-linear-gradient(center top, #2fa8e0 5%, #2fa8e0 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#2fa8e0', endColorstr='#2fa8e0');
            background-color: #2fa8e0;
            -webkit-border-top-left-radius: 6px;
            -moz-border-radius-topleft: 6px;
            border-top-left-radius: 6px;
            -webkit-border-top-right-radius: 6px;
            -moz-border-radius-topright: 6px;
            border-top-right-radius: 6px;
            -webkit-border-bottom-right-radius: 6px;
            -moz-border-radius-bottomright: 6px;
            border-bottom-right-radius: 6px;
            -webkit-border-bottom-left-radius: 6px;
            -moz-border-radius-bottomleft: 6px;
            border-bottom-left-radius: 6px;
            text-indent: 0;
            color: white;
            font-family: arial;
            font-size: 15px;
            font-weight: bold;
            font-style: normal;
            height: 40px;
            line-height: 40px;
            width: 120px;
            text-decoration: none;
            text-align: center;
        }
        #button4 {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #2fa8e0), color-stop(1, #2fa8e0));
            background: -moz-linear-gradient(center top, #2fa8e0 5%, #2fa8e0 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#2fa8e0', endColorstr='#2fa8e0');
            background-color: #2fa8e0;
            -webkit-border-top-left-radius: 6px;
            -moz-border-radius-topleft: 6px;
            border-top-left-radius: 6px;
            -webkit-border-top-right-radius: 6px;
            -moz-border-radius-topright: 6px;
            border-top-right-radius: 6px;
            -webkit-border-bottom-right-radius: 6px;
            -moz-border-radius-bottomright: 6px;
            border-bottom-right-radius: 6px;
            -webkit-border-bottom-left-radius: 6px;
            -moz-border-radius-bottomleft: 6px;
            border-bottom-left-radius: 6px;
            text-indent: 0;
            color: white;
            font-family: arial;
            font-size: 12px;
            font-weight: bold;
            font-style: normal;
            height: 30px;
            line-height: 30px;
            width: 70px;
            text-decoration: none;
            text-align: center;
        }
        #button5 {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, rgb(76, 76, 76)), color-stop(1,  rgb(76, 76, 76)));
            background: -moz-linear-gradient(center top,  rgb(76, 76, 76) 5%,  rgb(76, 76, 76) 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#2fa8e0', endColorstr='#2fa8e0');
            background-color: rgb(76, 76, 76);
            -webkit-border-top-left-radius: 6px;
            -moz-border-radius-topleft: 6px;
            border-top-left-radius: 6px;
            -webkit-border-top-right-radius: 6px;
            -moz-border-radius-topright: 6px;
            border-top-right-radius: 6px;
            -webkit-border-bottom-right-radius: 6px;
            -moz-border-radius-bottomright: 6px;
            border-bottom-right-radius: 6px;
            -webkit-border-bottom-left-radius: 6px;
            -moz-border-radius-bottomleft: 6px;
            border-bottom-left-radius: 6px;
            text-indent: 0;
            color: white;
            font-family: arial;
            font-size: 15px;
            font-weight: bold;
            font-style: normal;
            height: 35px;
            line-height: 35px;
            width: 90px;
            text-decoration: none;
            text-align: center;
        }

        #testname {
            height: 30px;
        }

        #subject {
            height: 35px;
        }

        #table1 {
            background-color: rgb(212, 211, 211);
        }

        #tr1 {
            background-color: rgb(212, 211, 211);
        }

        #table2 {
            border-collapse: collapse;
            height: 300px;
        }

        th {
            width: 250px;
        }
    </style>
</head>

<body>
    <form>
        <table align="center">
            <tr>
                <td>
                    <h2>시험목록</h1>
                </td>
            </tr>
        </table>
        <table align="center" id="table1">
            <tr>
                <td align="center">응시여부</td>
                <td>&nbsp;&nbsp;<input type="radio" name="전체" value="전체" checked> 전체&nbsp;&nbsp;
                    <input type="radio" name="미응시" value="미응시" checked> 미응시&nbsp;&nbsp;
                    <input type="radio" name="응시" value="응시" checked> 응시&nbsp;&nbsp;</td>

                <td colspan="3" align="center"><input type="button" id="button1" value="초기화"></td>
            </tr>
            <tr>
                <td align="center">시험종목</td>
                <td>&nbsp;&nbsp;
                    <select id="subject" name="subject">
                        <option value="1" selected>데이터베이스
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                        <option value="2">프로그래밍 &nbsp;</option>
                        <option value="3">운영체제 &nbsp;</option>
                        <option value="4">정보기초 &nbsp;</option>
                    </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    시험명&nbsp;&nbsp; <input type="text" id="testname" value="내용을 입력해주세요" height="50px"></td>
                <td colspan="2" align="center"><input type="button" id="button2" value="검색"></td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <td align="right">
                    <input type="button" id="button3" value="문제등록" onclick="location.href='questForm.jsp'">
                    <input type="button" id="button3" value="시험지등록" onclick="location.href='examForm.jsp'">
                </td>
            </tr>
        </table>

        <table align="center" id="table2" border="1" frame="hsides" rules="rows">
                <tr id="tr1" align="center">
                    <th>No.</th>
                    <th>시험종목</th>
                    <th>시험명</th>
                    <th>응시여부</th>
                </tr>
                <tr align="center">
                    <td>89</td>
                    <td>데이터베이스</td>
                    <td>3월 정기시험&nbsp;</td>
                    <td><input type="button" id="button5" value="응시하기" onclick="location.href='test1.html'"></td>
                </tr>
                <tr align="center">
                    <td>88</td>
                    <td>프로그래밍&nbsp;</td>
                    <td>&nbsp;진급시험</td>
                    <td><input type="button" id="button4" value="결과확인" onclick="location.href='result.html'"></td>
                </tr>
                <tr align="center">
                    <td>87</td>
                    <td>운영체제&nbsp;</td>
                    <td>3월 정기시험&nbsp;</td>
                    <td><input type="button" id="button5" value="응시하기" onclick="location.href='test1.html'"></td>
                </tr>
                <tr align="center">
                    <td>86</td>
                    <td>&nbsp;프로그래밍</td>
                    <td>&nbsp;신입사원 레벨 테스트</td>
                    <td><input type="button" id="button4" value="결과확인" onclick="location.href='result.html'"></td>
                </tr>
                <tr align="center">
                    <td>85</td>
                    <td>정보기초&nbsp;</td>
                    <td>&nbsp;신입사원 레벨 테스트</td>
                    <td><input type="button" id="button5" value="응시하기" onclick="location.href='test1.html'"></td>
                </tr>
        </table>
    </form>
</body>

</html>