<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/13
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign up page</title>
</head>
<body>
<h1>Sign up</h1>
<form action="/user" method="post">
    <input type="hidden" name="action" value="register">
    <input type="text" name="email" placeholder="EMAIL" value="tester@test.com"><br>
    <input type="password" name="password" placeholder="PASSWORD" value="123"><br>
    <select name="cities" multiple="multiple">
        <option value="Beijing" selected="selected">Beijing</option>
        <option value="Shanghai">Shanghai</option>
        <option value="Guangzhou">Guangzhou</option>
    </select><br>
    <input type="checkbox" name="hobbies" value="TV" checked="checked">TV
    <input type="checkbox" name="hobbies" value="Game">Game
    <input type="checkbox" name="hobbies" value="Play">Play
    <input type="checkbox" name="hobbies" value="Study" checked="checked">Study
    <br>
    <input type="submit" value="SIGN UP">
</form>
</body>
</html>
