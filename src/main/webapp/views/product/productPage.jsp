<%--
  Created by IntelliJ IDEA.
  User: Ярослав
  Date: 27.07.2016
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="height: 120%">
<div style="
position: absolute; /* Абсолютное позиционирование */
            width: 300px; /* Ширина слоя в пикселах */
            height: 300px; /* Высота слоя в пикселах */
            left: 37.5%; /* Положение слоя от левого края */
            top: 30%; /* Положение слоя от верхнего края */
            /*margin-left: -150px; !* Отступ слева *!*/
            /*margin-top: -100px; !* Отступ сверху *!*/
            background: #fc0; /* Цвет фона */

            /*padding: 10px; !* Поля вокруг текста *!*/
            overflow: auto;
            font-size: 15pt;
            text-align: center">

    <p>Name:${product.name_product}</p>
    <p>Brand:${product.brand}</p>
    <p>Price:${product.price_product}</p>
    <p>Description:${product.description_product}</p>
</div>
</div>
</body>
</html>
