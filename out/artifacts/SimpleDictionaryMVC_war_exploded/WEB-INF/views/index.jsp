<%--
  Created by IntelliJ IDEA.
  User: trangbeo
  Date: 2019-04-02
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <style type="text/css">
      .dictionary{
        height:180px;width:480px;
        margin:0px; padding: 10px;
        border:1px solid black;
        text-align: center;
        font-family: "Courier New";
        color: darkred;
      }
    </style>
    <title>Dictionary</title>
  </head>
  <body>
  <form method="post" action="/search">
    <div class="dictionary">
      <h2>Vietnamese Dictionary</h2>
      <input type="text" name="word" placeholder="Enter your word: "/>
      <input type="submit" name="submit" value="Search"/><br/><br/><br/>
      <label>Result: ${result}</label>
    </div>
  </form>
  </body>
</html>
