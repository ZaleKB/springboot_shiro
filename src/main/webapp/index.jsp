<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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

    <h1>System Main Page</h1>

    <h1><shiro:principal/></h1>

    <shiro:authenticated>
        after authentication success <br>
    </shiro:authenticated>
    <shiro:notAuthenticated>
        after authentication fail
    </shiro:notAuthenticated>

    <a href="${pageContext.request.contextPath}/user/logout">logout</a>

    <ul>
        <shiro:hasAnyRoles name="user,admin">
        <li><a href="">User management</a>
            <ul>
                <shiro:hasPermission name="user:add:*">
                <li><a href="">ADD</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="user:delete:*">
                    <li><a href="">DELETE</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="user:update:*">
                    <li><a href="">UPDATE</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="order:find:*">
                    <li><a href="">SEARCH</a></li>
                </shiro:hasPermission>
            </ul>
        </li>
        </shiro:hasAnyRoles>
        <shiro:hasRole name="admin">
            <li><a href="">Product management</a></li>
            <li><a href="">Order management</a></li>
            <li><a href="">Delivery management</a></li>
        </shiro:hasRole>
    </ul>

</body>
</html>