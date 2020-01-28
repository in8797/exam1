<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>시험응시</title>
    <style>
        div {
            border: 0;
            align-items: center;
        }

        #container {
            width: 960px;
            padding: 20px;
            margin: 0 auto;
        }

        #header {

            padding: 10px;
            margin-bottom: 20px;
            background: #eee;
        }

        #contents {
            width: 620px;
            padding: 20px;
            float: left;
            margin-bottom: 20px;
            background: #eee;
        }

        #sidebar {
            width: 220px;
            padding: 20px;
            float: right;
            margin-bottom: 20px;
            background: #eee;
        }

        #footer {
            width: 620px;
            height: 50px;
            clear: both;
            padding: 20px;
        }

        table {
            width: 100%;
            border: 0;
            border-collapse: collapse;
            text-align: center;

        }

        td {
            padding: 5px;
        }

        .input {
            height: 25px;
        }
        input:click {
            outline-color: #434fcc;
        }
        #btn1 {
            background-color: #1f63a6;
            width: 100%;
            height: 100%;
            border-radius: 4px;
            text-indent: 0;
            border: 0;
            outline: 0;
            display: inline-block;
            color: #ffffff;
            font-size: 16px;
            font-style: normal;
            line-height: 2.5em;
            text-decoration: none;
            text-align: center;
        }
        
    </style>
    

</head>

<body>
    <div id="container">

        <h3>시험응시</h3>

        <div id="header">
            <table>
                <tr>
                    <td>응시자</td>
                    <td>
                        <input type="text" name="tname" class="input" size="15px" placeholder="&nbsp;&nbsp;홍길동">
                    </td>
                    <td>시험명</td>
                    <td>
                        <input type="text" name="sub" class="input" size="25px" placeholder="&nbsp;&nbsp;신입사원 레벨 테스트">
                    </td>
                    <td>문항수</td>
                    <td>
                        <input type="text" name="qn" class="input" size="5px" placeholder="&nbsp;&nbsp;10">
                    </td>
                    <td>시험시간</td>
                    <td>
                        <input type="text" name="time" class="input" size="5px" placeholder="&nbsp;&nbsp;1시간">
                    </td>
                </tr>
                <tr>
                    <td>상세정보</td>
                    <td colspan="5" align="left">
                        &nbsp;&nbsp;&nbsp;<input type="text" name="exp" class="input" size="85px"
                            placeholder="&nbsp;&nbsp;예담 주식회사 2020년 신입사원 공채 실기 테스트입니다.">
                    </td>
                    <td>남은시간</td>
                    <th><input type="text" id="timer" class="input" size="5px"></th>
                    <script>
                        var tetm = 60 * 60;
                        var minc = 0;
                        var x = setInterval(function () {
                            var t = tetm - minc;
                            minc++;
                            var minutes = Math.floor((t % (60 * 60)) / (60));
                            var seconds = Math.floor(t % (60));
                            if (minutes>=10&seconds>=10){
                                document.getElementById("timer").value = "   "+ minutes + " : " + seconds;
                            } else if (minutes<10&seconds>=10){
                                document.getElementById("timer").value = "   0"+ minutes + " : " + seconds;
                            } else if (minutes>=10&seconds<10){
                                document.getElementById("timer").value = "   "+ minutes + " : 0" + seconds;
                            } else {
                                document.getElementById("timer").value = "   0"+ minutes + " : 0" + seconds;

                            }
                            
                            if (t < 0) {
                                clearInterval(x);
                                document.getElementById("timer").value = " Time Out";
                            }
                        }, 1000);
                    </script>
                </tr>
            </table>

	</div>

        <div id="sidebar">
            <script>
                function ct(){
                var tb = document.createElement("table");
                for (i=0; i<10 ; i++){
                    var tr = document.createElement("tr");
                    var th = document.createElement("th");
                    var vl = document.createTextNode([i+1]);
                    th.appendChild(vl);
                    tr.appendChild(th);
                    for (j=0; j<4; j++){
                        var td = document.createElement("td");
                        var rn = document.createElement("input");
                        rn.type="radio";
                        rn.setAttribute("id", "n[i+1]_[j+1]");
                        rn.setAttribute("name", "n[i+1]");
                        var vu = document.createTextNode([j+1]);
                        td.appendChild(rn);
                        td.appendChild(vu);
                        tr.appendChild(td);     
                    }
                    tb.appendChild(tr);  
                }
                document.getElementById("sidebar").append(tb);
            }
            window.onload = function (){              
                ct();
            }
            </script>  
        </div>
        <div id="contents">

            <p> 1. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를
                듣는다 그것은 웅대한 관현악이며 미묘한
                <br>
                <input type="radio" id="radio" name="n1" value="1" checked>1
                </br>
                <input type="radio" id="radio" name="n1" value="2" checked>2
                </br>
                <input type="radio" id="radio" name="n1" value="3" checked>3
                </br>
                <input type="radio" id="radio" name="n1" value="4" checked>4
            </p>
            <p>2. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를
                듣는다 그것은 웅대한 관현악이며 미묘한
                <br>
                <input type="radio" id="radio" name="n2" value="1" checked>1
                </br>
                <input type="radio" id="radio" name="n2" value="2" checked>2
                </br>
                <input type="radio" id="radio" name="n2" value="3" checked>3
                </br>
                <input type="radio" id="radio" name="n2" value="4" checked>4
            </p>
            <p>
                3. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를
                듣는다 그것은 웅대한 관현악이며 미묘한
                <br>
                <input type="radio" id="radio" name="n3" value="1" checked>1
                </br>
                <input type="radio" id="radio" name="n3" value="2" checked>2
                </br>
                <input type="radio" id="radio" name="n3" value="3" checked>3
                </br>
                <input type="radio" id="radio" name="n3" value="4" checked>4
            </p>

        </div>
        <div id="footer">
            <input id="btn1" value="제출하기" onclick="location.href='4-6.html'">


        </div>
</body>

</html>