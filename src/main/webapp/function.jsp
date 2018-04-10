<%--
  Created by IntelliJ IDEA.
  User: 浩盛
  Date: 2018/4/8
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>.
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>

    <style>
        body{
            /*background-image: url("http://localhost:8080/img/bk.jpg ");*/
            background-color: deepskyblue;
        }
        
        /*
        #d1{

            position:absolute;
            top:100px;
            left:150px;
            width:280px;
        }
        #d2{
            position:absolute;
            top:100px;
            left:155px;
            width:280px;
        }
        */
        #fileSelect{
            position:absolute;
            top:100px;
            left:150px;
            width:280px;
        }
        #p{
            position:absolute;
            top:110px;
            left:150px;
            width:280px;
        }
        #d1{
            position:absolute;
            top:160px;
            left:170px;
            width:280px;
        }
        #b1{
            position:absolute;
            top:320px;
            left:150px;
            width:280px;
        }

    </style>

    <script>
        //获取文件路径
        function getSelectFile()
        {
            var fileName = document.getElementById("fileSelect").value;
            alert(fileName);
        }
    </script>
    <script>
        //显示选中的复选框中的值---
        function displayResult(){
            var obj = document.getElementsByName("test");
            var check_val = [];
            for(var k in obj){
                if(obj[k].checked)
                    check_val.push(obj[k].value);
            }
            alert(check_val);
        }
    </script>

    <title>文字提取</title>

</head>
<body>


    <marquee>
        <span style="font-weight: bolder;font-size: 40px;color: yellow;">欢迎使用！</span>
    </marquee>


    <input id="fileSelect" type="file" />
    <br>
    <p id="p">选择需要提取的内容：</p>
    <div id="d1">
    <form>
        <input type="checkbox" name="test" id="bike" value="Bike"> 类型 <br>
        <input type="checkbox" name="test" id="addr" value="住所"> 住所 <br>
        <input type="checkbox" name="test" id="person" value="法人代表"> 法人代表 <br>
        <input type="checkbox" name="test" id="time" value="成立时间"> 成立时间 <br>
        <input type="checkbox" name="test" id="money" value="注册资本"> 注册资本 <br>
    </form>
    <button type="button" onclick="displayResult()">显示value值</button>
    </div>

    <form id="b1" action="/user/generate" method="get">
        <button>生成Excel</button>
    </form>


<!--<input value="Get File" type="button" onclick="getSelectFile();"/>-->
<br>

</body>
</html>
