<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<style>
    table {
        width: 950px;
        height: 120px;
    }

    .table {
        width: 900px;
        height: 400px;
    }
    input,
    select {
        width: 150px;
        height: 30px;
    }

    #text1 {
        width: 700px;
        height: 80px;
    }
    #text2 {
        width: 700px;
    }

    #button1 {
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #2fa8e0), color-stop(1, #2fa8e0));
        background: -moz-linear-gradient(center top, #2fa8e0 5%, #2fa8e0 100%);
        background-color: #2fa8e0;
        border-radius: 6px;
        border: 1px solid #dcdcdc;
        display: inline-block;
        color: #ffffff;
        font-size: 17px;
        font-weight: bold;
        font-style: normal;
        height: 40px;
        line-height: 40px;
        width: 90px;
        text-align: center;
    }

    #button2 {
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, darkgoldenrod), color-stop(1, #f1ff30 darkgoldenrod));
        background: -moz-linear-gradient(center top, darkgoldenrod 5%, darkgoldenrod 100%);
        background-color: darkgoldenrod;
        border-radius: 6px;
        border: 1px solid #dcdcdc;
        display: inline-block;
        color: #ffffff;
        font-size: 17px;
        font-weight: bold;
        font-style: normal;
        height: 40px;
        line-height: 40px;
        width: 90px;
        text-align: center;
    }

    tr {
        height: 50px;
    }
</style>
</head>

<body>
    <form>
        <table align="center">
            <tr>
                <td>
                    <h2>문제 등록</h2>
                </td>
            </tr>
        </table>
        <table align="center" class="table">
            <tr>
                <td>종목</td>
                <td colspan="3">&nbsp;<select id="subject" name="subject">
                        <option value="1" selected>데이터베이스
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                        <option value="2">프로그래밍 &nbsp;</option>
                        <option value="2">운영체제 &nbsp;</option>
                        <option value="2">정보기초 &nbsp;</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>문제</td>
                <td colspan="3">&nbsp;<input type="text" id="text1"></td>
            </tr>
            <tr>
                <td>보기1</td>
                <td colspan="3">
                    &nbsp;<input type="text" id="text2" placeholder=" 신입사원 레벨 테스트">
                </td>
            </tr>
            <tr>
                <td>보기2</td>
                <td colspan="3">
                    &nbsp;<input type="text" id="text2" placeholder=" 신입사원 레벨 테스트">
                </td>
            </tr>
            <tr>
                <td>보기3</td>
                <td colspan="3">
                    &nbsp;<input type="text" id="text2" placeholder=" 신입사원 레벨 테스트">
                </td>
            </tr>
            <tr>
                <td>보기4</td>
                <td colspan="3">
                    &nbsp;<input type="text" id="text2" placeholder=" 신입사원 레벨 테스트">
                </td>
            </tr>
            <tr>
                <td>해설</td>
                <td colspan="3">&nbsp;<input type="text" id="text1" placeholder=" 신입사원 레벨 테스트"></td>
            </tr>
            <tr>
                <td>정답</td>
                <td colspan="3">
                    <input type="radio" name="dio" value="radio1" ><label for="radio1">1</label>
                    <input type="radio" name="dio" value="radio2" ><label for="radio2">2</label>
                    <input type="radio" name="dio" value="radio3" ><label for="radio3">3</label> 
                    <input type="radio" name="dio" value="radio4" ><label for="radio4">4</label>
                </td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <input type="button" id="button1" value="등록" onclick="location.href=''">
                    <input type="button" id="button2" value="목록" onclick="location.href=''">
                </td>
            </tr>
        </table>
    </form>
</body>

</html>