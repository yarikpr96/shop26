<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style="height: 100%">
    <div style="width: 100%; height: 40px; background-color: #d9d9d9;text-align: center;font-size: 16px;position: absolute;float: left ;margin: 10px">
        <form:form action="/productEdit" method="post" modelAttribute="product">
            <a>ID</a><form:input path="id_product" value="${product.id_product}"/>
            <a>Name</a><form:input path="name_product" value="${product.name_product}"/>
            <a>Price</a> <form:input path="price_product" value="${product.price_product}"/>
            <a>Brand</a><form:input path="brand" value="${product.brand}"/>
            <a>Description</a><form:input path="description_product" value="${product.description_product}"/>
            <form:button>Модифікувати</form:button>
        </form:form>
    </div>
</div>