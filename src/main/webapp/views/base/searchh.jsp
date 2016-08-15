<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div style="
height: 100%;">

        <style>
            .leftimg {
                float:left;
                margin: 7px 7px 7px 0;
            }

        </style>
    <c:forEach items="${product}" var="a">
        <a href="/productPage/${a.id_product}">

            <div  style=" margin:1%;font-size: 20px; text-align: center; width: 380px; height: 280px; background-color: gainsboro; color: #101010; float: left; position: static; border: 2px double black; border-radius: 0px;">
                <img src="data:image/jpeg;base64,${a.image}" width="132" height="174" class="leftimg"/>
                <p style="font-size: 20px;">Name: ${a.name_product}</p>
                <p style="font-size: 20px;">Brand: ${a.brand}</p>
                <p style="font-size: 20px;">Price: ${a.price_product}</p>
                <p style="font-size: 20px;">Description: ${a.description_product}</p>
                <sec:authorize access="hasRole('USER')"><p><a href="/test/${a.id_product}">Додати в корзину</a></p></sec:authorize>
                    <%--<p><sec:authorize access="hasRole('ADMIN')"><a href="/productEdit/${a.id_product}">Модифікувати</a></sec:authorize></p>--%>
                <sec:authorize access="hasRole('ADMIN')"><a href="/productEdit/${a.id_product}"><button type="submit">Модифікувати</button></a></sec:authorize>
                <p><sec:authorize access="hasRole('ADMIN')"><form:form action="/product/delete/${a.id_product}" method="post">
                    <button type="submit">Видалити</button>
                </form:form></sec:authorize></p>
            </div>

        </a>
    </c:forEach>
</div>

