<%--
  Created by IntelliJ IDEA.
  User: GEISHA
  Date: 2019/1/7
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        function go_index() {
            window.location = "${pageContext.request.contextPath}/view/go_index.do";
        }
    </script>
</head>
<body onload="go_index()">

</body>
</html>
