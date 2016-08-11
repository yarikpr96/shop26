<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div style="
height: 100%;
overflow: scroll;">
    <c:forEach items="${product}" var="a">
    <a href="/productPage/${a.id_product}">
        <div style="font-size: 20px; text-align: center; width: 280px; height: 280px; background-color: gainsboro; color: #101010; float: left; margin: 22px; border: 2px double black; border-radius: 0px;">
            <p style="font-size: 20px;">${a.name_product}</p>
            <p style="font-size: 20px;">${a.brand}</p>
            <p style="font-size: 20px;">${a.price_product}</p>
            <p style="font-size: 20px;">${a.description_product}</p>
            <sec:authorize access="hasRole('USER')"><a href="/test/${a.id_product}"><button type="submit">Додати в корзину</button></a></sec:authorize>
        </div>
    </a>

    </c:forEach>



