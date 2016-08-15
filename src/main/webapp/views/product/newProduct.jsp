<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div style="height: 100%;">
    <div style="width: 100%; height: 40px; background:#f1f1f1;font-size: 20px; position: absolute;float: left ">
        <form action="/newProduct?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
            <a>Ім'я <input type="text" name="name_product"></a>
            <a>Бренд <input type="text" name="brand"></a>
            <a>Ціна <input type="number" name="price_product"></a>
            <a>Опис <textarea  name="description_product"></textarea></a>
            <a>Фото <input type="file" name="image"></a>
            <button type="submit">Add!</button>
        </form>

    </div>
</div>


