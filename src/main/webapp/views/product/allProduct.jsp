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

<h1 style="text-align: center;float: inherit">Товари</h1>
<div style="
height: auto;
/*overflow: scroll;*/
">

    <div style="width: 100% ; height: 35px; background-color:aliceblue; color: white; float: none;">
        <style>

            #search, #submit
            {
                float: left;
            }

            #search
            {
                padding: 5px 9px;
                height: 35px;
                width: 380px;
                border: 1px solid #a4c3ca;
                font: normal 13px 'trebuchet MS', arial, helvetica;
                background: #f1f1f1;

                -moz-border-radius: 50px 3px 3px 50px;
                border-radius: 50px 3px 3px 50px;
                -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.25) inset, 0 1px 0 rgba(255, 255, 255, 1);
                -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.25) inset, 0 1px 0 rgba(255, 255, 255, 1);
                box-shadow: 0 1px 3px rgba(0, 0, 0, 0.25) inset, 0 1px 0 rgba(255, 255, 255, 1);
            }

            /* ----------------------- */

            #submit
            {
                background: #6cbb6b;
                background-image: -moz-linear-gradient(#95d788, #6cbb6b);
                background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #6cbb6b),color-stop(1, #95d788));

                -moz-border-radius: 3px 50px 50px 3px;
                border-radius: 3px 50px 50px 3px;

                border-width: 1px;
                border-style: solid;
                border-color: #7eba7c #578e57 #447d43;

                -moz-box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3) inset;
                -webkit-box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3) inset;
                box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3) inset;

                height: 35px;
                margin: 0 0 0 10px;
                padding: 0;
                width: 90px;
                cursor: pointer;
                font: bold 14px Arial, Helvetica;
                color: #23441e;

                text-shadow: 0 1px 0 rgba(255,255,255,0.5);
            }

            #submit:hover
            {
                background: #95d788;
                background-image: -moz-linear-gradient(#6cbb6b, #95d788);
                background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #95d788),color-stop(1, #6cbb6b));
            }

            #submit:active
            {
                background: #95d788;
                outline: none;

                -moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
                -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
                box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
            }

            #submit::-moz-focus-inner
            {
                border: 0;  /* Small centering fix for Firefox */
            }
            #search::-webkit-input-placeholder {
                color: #9c9c9c;
                font-style: italic;
            }

            #search:-moz-placeholder {
                color: #9c9c9c;
                font-style: italic;
            }
            #search.placeholder {
                color: #9c9c9c !important;
                font-style: italic;
            }

        </style>
        <form:form id="searchbox" action="/searchh" method="post">
            <p><input id="search" name="name_product" type="text" placeholder="Введіть назву товару"></p>
            <p><input id="submit" type="submit" value="Пошук"></p>
        </form:form>
    </div>
    <style>
        .leftimg {
            float:left;
            margin: 7px 7px 7px 0;
        }

    </style>
    <div>
    <c:forEach items="${product}" var="a">
    <a href="/productPage/${a.id_product}">

    <div  style="font-size: 20px; text-align: center; width: 380px; height: 280px; background-color: gainsboro; color: #101010; float: left; margin: 28px; border: 2px double black; border-radius: 0px;">
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
</div>

