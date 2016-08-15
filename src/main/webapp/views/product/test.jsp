<%--
  Created by IntelliJ IDEA.
  User: Ярослав
  Date: 18.07.2016
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1 style="text-align: center;float: inherit">Корзина</h1>
<div style="
height: 120%;
overflow: scroll;">
    <c:forEach items="${product}" var="a">
        <a href="/productPage/${a.id_product}">
            <div style="font-size: 20px; text-align: center; width: 280px; height: 280px; background-color: gainsboro; color: #101010; float: left; margin: 22px; border: 2px double black; border-radius: 0px;">
                <%--<img src="data:image/jpeg;base64,${a.image}" width="132" height="174" class="leftimg"/>--%>
                <p style="font-size: 20px;">${a.name_product}</p>
                <p style="font-size: 20px;">${a.brand}</p>
                <p style="font-size: 20px;">${a.price_product}</p>
                <p style="font-size: 20px;">${a.description_product}</p>
                <form:form action="/testdd/${a.id_product}" method="post">
                    <button type="submit">Видалити</button>
                </form:form>
            </div>
        </a>

    </c:forEach>


    <div style="font-size: 20px; text-align: center; width: 100%; height: 130px; background-color: lightgreen; color: #101010; float: left;  border: 2px double black; border-radius: 0px;">
        <p>Сума замовлення ${price} грн.</p>
        <form:form action="/test" method="post">
            <button type="submit">Замовити</button>
        </form:form>
        <form:form action="/testd" method="post">
            <button type="submit"> Очистити список</button>
        </form:form>
    </div>


</div>
</body>

</html>