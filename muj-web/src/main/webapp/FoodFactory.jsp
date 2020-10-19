<%--
  Created by IntelliJ IDEA.
  User: Bertedel
  Date: 19.10.2020
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Jidlo" %>
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="utf-8">
    <title>Továrna na Jídlo</title>
</head>
<body>
<% Jidlo j = TovarnaNaJidlo.vyrobJidlo(request.getParameter("jidlo")); %>
<form method="GET">
    <label for="jidlo">Vyber si jídlo:</label>
    <select id="jidlo" name="jidla" onchange="this.form.submit()">
        <option value="dort">Dort pro pejska</option>
        <option value="caj">Čaj pro královnu</option>
    </select>
</form>

<dl>
    <dt>Cena</dt><dd><?= j==null ? "" : j.dejCenu()?></dd>
    <dt>Postup</dt><dd><?= j==null ? "" : j.vyrobTo()?></dd>
</dl>
</body>
</html>
