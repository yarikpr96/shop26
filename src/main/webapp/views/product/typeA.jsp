<%--
  Created by IntelliJ IDEA.
  User: Ярослав
  Date: 18.07.2016
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>A</title>
</head>
<body>

<h1 style="text-align: center;float: inherit">Товари</h1>
<div style="
height: 90%;
overflow: scroll;">
    <c:forEach items="${product}" var="a">
        <a href="/productPage/${a.id_product}">

            <c:if test="${a.id_product>0&&a.id_product<=3}">
                <div  style="font-size: 16px; text-align: center; width: 280px; height: 280px; background-color: turquoise; color: white; float: left; margin: 22px; border: 3px double black; border-radius: 180px;">
                    <p >${a.name_product}</p>
                    <p >${a.brand}</p>
                    <p >${a.price_product}</p>
                    <p >${a.description_product}</p>
                </div>
            </c:if>
        </a>
    </c:forEach>
</div>

</body>
</html>