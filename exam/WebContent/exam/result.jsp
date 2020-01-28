<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
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

        #table1 {
            background-color: rgb(212, 211, 211);
        }

        input {
            background-color: rgb(212, 211, 211);
            width: 210px;
            height: 30px;
        }

        #long {
            width: 850px;
        }
        #table2 {
            width: 1000px;
            height: 100px;
            background-color: rgb(212, 211, 211);
            position: relative;
            top: 10px;
        }

        #table3 {
            width: 1000px;
            position: relative;
            top: 10px;
        }

        #table4 {
            width: 950px;
            height: 400px;
            position: relative;
            top: 10px;
        }
        #table5 {
            width: 1000px;
            position: relative;
            top: 10px;
        }

        span {
            font-size: xx-large;
            color: cornflowerblue;
        }

        #radio {
            width: 20px;
            height: 15px;
        }
        #button1 {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #2fa8e0), color-stop(1, #2fa8e0));
            background: -moz-linear-gradient(center top, #2fa8e0 5%, #2fa8e0 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#2fa8e0', endColorstr='#2fa8e0');
            background-color: #2fa8e0;
            border-radius: 6px;
            border: 1px solid #dcdcdc;
            display: inline-block;
            color: #ffffff;
            font-family: arial;
            font-size: 17px;
            font-weight: bold;
            font-style: normal;
            height: 40px;
            line-height: 40px;
            width: 200px;
            text-align: center;
        }
    </style>
</head>

<body>
    <form>
        <div>
            <table align="center">
                <tr>
                    <td>
                        <h2>시험응시</h1>
                    </td>
                </tr>
            </table>
            <table align="center" id="table1">
                <tr>
                    <td align="center">시험명</td>
                    <td>&nbsp; <input type="text" id="t1" value="홍길동"></td>
                    <td>문항 수 &nbsp;<input type="text" id="t3" value="10"></td>
                    <td>시험시간 &nbsp;<input type="text" id="t4" value="1시간"></td>
                </tr>
                <tr>
                    <td align="center">&nbsp;&nbsp; 상세정보</td>
                    <td colspan="4">&nbsp;&nbsp;<input type="text" id="long" value="예담 주식회사 2020년 신입사원 공채 실기 테스트입니다.">
                    </td>
                </tr>
            </table>
            <table id="table2" align="center">
                <tr>
                    <td align="center">홍길동님의 결과는 <span>70점</span>입니다.</td>
                </tr>
            </table>
            <table id="table3" align="center">
                <tr>
                    <td>
                        <h2>틀린문제 다시보기</h2>
                    </td>
                </tr>

            </table>
            <table id="table4" align="center">
                <tr>
                    <td>1. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는
                        생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한</td>
                </tr>
                <tr>
                    <td>정답 &nbsp;&nbsp; <input type="radio" id="radio" name="1번" checked>1</td>
                </tr>
                <tr>
                    <td>해설 &nbsp;&nbsp;&nbsp;&nbsp; 해설</td>
                </tr>
                <tr>
                    <td>5. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는
                        생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한</td>
                </tr>
                <tr>
                    <td>정답 &nbsp;&nbsp; <input type="radio" id="radio" name="5번" checked>1</td>
                </tr>
                <tr>
                    <td>해설 &nbsp;&nbsp;&nbsp;&nbsp; 해설</td>
                </tr>
                <tr>
                    <td>10. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는
                        생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한</td>
                </tr>
                <tr>
                    <td>정답 &nbsp;&nbsp; <input type="radio" id="radio" name="10번" checked>1</td>
                </tr>
                <tr>
                    <td>해설 &nbsp;&nbsp;&nbsp;&nbsp; 해설</td>
                </tr>

            </table>
            <table id="table5" align="center">
                    <tr>
                        <td align="center">
                            <input type="button" id="button1" value="시험목록으로" onclick="location.href='main.html'">
                        </td>
                    </tr>
                </table>
        </div>
    </form>
</body>

</html>