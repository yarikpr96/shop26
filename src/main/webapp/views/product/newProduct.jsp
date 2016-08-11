<%--
  Created by IntelliJ IDEA.
  User: Ярослав
  Date: 21.07.2016
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--<div style="height: 100%;">--%>
<%--<form action="newProduct" method="post">--%>
    <%--<input type="text" name="name_product"> name--%>
    <%--<input type="text" name="brand"> brand--%>
    <%--<input type="text" name="price_product"> price--%>
    <%--<input type="text" name="description_product">description--%>
    <%--<button type="submit">Submit</button>--%>
<%--</form>--%>


<div style="height: 120%">
    <div style="font-size: 24px; position: absolute;float: left">
<form:form action="/newProduct" method="post" modelAttribute="product">
    <form:label path="name_product">Name: </form:label>
    <form:input path="name_product"/>
    <form:label path="brand">Brand: </form:label>
    <form:input path="brand"/>
    <form:label path="price_product">Price: </form:label>
    <form:input path="price_product"/>
    <form:label path="description_product">Description: </form:label>
    <form:input path="description_product"/>
    <form:button>Add Product</form:button>
</form:form>






</div>
</div>

