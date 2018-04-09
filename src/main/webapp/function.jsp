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
    <script>
        function getSelectFile()
        {
            var fileName = document.getElementById("fileSelect").value;
            alert(fileName);
        }

    </script>
</head>
<body>
文件夹选择
<input id="fileSelect" type="file" />
<input value="Get File" type="button" onclick="getSelectFile();"/>
<br>
<
<form action="/user/generate" method="get">
<button>生成Excel</button>
</form>
</body>
</html>
