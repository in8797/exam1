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

        #text {
            width: 700px;
            height: 80px;
        }
        #tname {
            width: 500px;
        }

        #button1 {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #2fa8e0), color-stop(1, #2fa8e0));
            background: -moz-linear-gradient(center top, #2fa8e0 5%, #2fa8e0 100%);
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
            width: 90px;
            text-align: center;
        }

        #button2 {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, darkgoldenrod), color-stop(1, #f1ff30 darkgoldenrod));
            background: -moz-linear-gradient(center top,  darkgoldenrod 5%,  darkgoldenrod 100%);
            background-color: darkgoldenrod;
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
            width: 90px;
            text-align: center;
        }
        tr {
            height: 50px;
        }
    </style>
    <script type="text/javascript">
    function newtestCheck() {
    	
    	if (frm.tname.value==""){
    		alert("시험명을 입력하세요");
    		frm.tname.foucs();
    		return false;
    	}
    	if (frm.num.value==""){
    		alert("문항 수를 입력하세요");
    		frm.num.foucs();
    		return false;
    	}
    	if (frm.time.value==""){
    		alert("시간을 입력하세요");
    		frm.time.foucs();
    		return false;
    	}
    	if (frm.text.value==""){
    		alert("상세정보를 입력하세요");
    		frm.text.foucs();
    		return false;
    	}
        else {
            alert("시험등록이 완료되었습니다");
    	return true;
    	}
    }
    </script>
</head>

<body>
   <div>
    <form id="frm" name="frm" action="examCreate.do" method="post" onsubmit="return newtestCheck()">
    <div>
        <table align="center">
            <tr>
                <td>
                    <h2>시험지 등록</h2>
                </td>
            </tr>
            <tr>
                <td>시험명</td>
                <td colspan="3">
                    &nbsp;<input type="text" id="tname" name="tname" placeholder="신입사원 레벨 테스트">
                </td>
            </tr>
            <tr>
                <td>문항 수</td>
                <td colspan="3">&nbsp;<input type="text" name="num" value="10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    시험시간 &nbsp;<input type="text" name="time" value="1시간"></td>
            </tr>
            <tr>
                <td>시험종목</td>
                <td colspan="3">&nbsp;<select id="subject" name="subject">
                        <option value="1" selected>데이터베이스
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                        <option value="2">프로그래밍 &nbsp;</option>
                        <option value="3">운영체제 &nbsp;</option>
                        <option value="4">정보기초 &nbsp;</option>
                    </select></td>
            </tr>
            <tr>
                <td>상세정보</td>
                <td colspan="3">&nbsp;<input type="text" id="text" name="text" placeholder="예담 주식회사 2020년 신입사원 공채 실기 테스트입니다."></td>
            </tr>
            <tr>
                <td>출제유형</td>
                <td colspan="3">
                    <input type="radio" id="radio1" name="random" value="random">
                    <label for="random">랜덤출제</label>
                    <input type="radio" id="radio2" name="random" value="fixed">
                    <label for="fixed">고정출제</label>
                </td>
            </tr>
        </table>
        </div>
            <div>
                    <input type="submit" id="button1" value="등록">
                    <input type="button" id="button2" value="목록" onclick="location.href='main.jsp'">
         </div>
    </form>
    </div>
</body>

</html>