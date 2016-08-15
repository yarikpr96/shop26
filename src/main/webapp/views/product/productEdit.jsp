<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style="height: 100%">
    <div style="margin-left: 35%;margin-top: 1%; height: 300px;width: 400px;background: #f8f8f8">
        <form action="/productEdit?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">

            <table cellpadding="5px">
                <tr>
                    <td align="right">
                        Id:
                    </td>
                    <td align="left">
                        <input type="text" name="id_product" value="${product.id_product}">
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Назва:
                    </td>
                    <td align="left">
                        <input type="text" name="name_product" value="${product.name_product}">
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Бренд:
                    </td>
                    <td align="left">
                        <input type="text" name="brand" value="${product.brand}">
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Ціна:
                    </td>
                    <td align="left">
                        <input type="number" name="price_product" value="${product.price_product}">
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Опис:
                    </td>
                    <td align="left">
                        <textarea name="description_product">${product.description_product}</textarea>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Зображення:
                    </td>
                    <td align="left">
                        <input type="file" name="image">
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td align="left">
                        <button type="submit">Редагувати</button>
                    </td>
                </tr>
            </table>


        </form>
    </div>
</div>