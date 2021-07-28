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

    <h1>Register</h1>


    <form action="${pageContext.request.contextPath}/user/register" method="post">
        username:<input type="text" name="username" > <br/>
        password: <input type="text" name="password"> <br>
        <input type="submit" value="register">
    </form>

</body>
</html>