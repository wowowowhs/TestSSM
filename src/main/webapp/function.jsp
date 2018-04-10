<%--
  Created by IntelliJ IDEA.
  User: 浩盛
  Date: 2018/4/8
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>.
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>functest</title>
    <style>
        body{
            background-color: deepskyblue;
        }
        #d1{
            /*text-align: center;*/
            position:absolute;
            top:100px;
            left:150px;
            width:280px;
        }

    </style>

    <script>
        function getSelectFile()
        {
            var fileName = document.getElementById("fileSelect").value;
            alert(fileName);
        }
    </script>

</head>
<body>
<div id="d1">

    <input id="fileSelect" type="file" />
    <br><br>
    <form action="/user/generate" method="get">
        <button>生成Excel</button>
    </form>

</div>
<!--<input value="Get File" type="button" onclick="getSelectFile();"/>-->
<br>

</body>
</html>
