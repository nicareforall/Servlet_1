<%@page import = "ru.appline.Logic.Model" %><%--
  Created by IntelliJ IDEA.
  User: olegn
  Date: 16.12.2022
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <h1>Домашняя страница по работе с пользователями</h1>
  Введите ID пользователя (0 - для вывода всего списка пользователей)
  <br/>
  Доступно: <%
  Model model = Model.getInstance();
  out.print(model.getFromList().size());
  %>
  <form method = "get" action ="get">
    <label>ID:
      <input type = "text" name = "id"></br>
    </label>
    <button type = "submit">Поиск</button>
  </form>
  <a href="addUser.html">Создать нового пользователя</a>
  <a href="deleteUser.html">Удалить пользователя</a>
  </body>
</html>
