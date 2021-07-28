<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    <h1>login</h1>


    <form action="${pageContext.request.contextPath}/user/login" method="post">
        username:<input type="text" name="username" > <br/>
        password: <input type="text" name="password"> <br>
        enter code: <input type="text" name="code"><img src="${pageContext.request.contextPath}/user/getImage" alt=""><br>
        <input type="submit" value="login">
    </form>

</body>
</html>