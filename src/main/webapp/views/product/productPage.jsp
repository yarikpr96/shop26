<%--
  Created by IntelliJ IDEA.
  User: Ярослав
  Date: 27.07.2016
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="height: 120%">
    <style>
        .leftimg {
            float:left;
            margin: 7px 7px 7px 0;
        }

    </style>
    <div  style="font-size: 20px; text-align: left; width: 100%; height: 120%; background-color: gainsboro; color: #101010;position: absolute; float: left; ">
        <img src="data:image/jpeg;base64,${product.image}" width="450" height="550" class="leftimg"/>
        <p style="font-size: 20px;margin-top: 3%;margin-left: 1%">Name: ${product.name_product}</p>
        <p style="font-size: 20px;">Brand: ${product.brand}</p>
        <p style="font-size: 20px;">Price: ${product.price_product}</p>
        <p style="font-size: 20px;">Description: ${product.description_product}</p>

</div>
</div>
