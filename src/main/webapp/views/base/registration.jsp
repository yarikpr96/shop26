<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style=" height: 100%;">
    <div style="font-size: 16px; text-align: center; width: 280px; height: 570px; background-color: #999999; color: white; float: inherit;position: absolute;left:41%; margin: 0px; border: 3px double black; border-radius: 0px;">

        <form:form action="/registration" method="post" modelAttribute="customer">
            <p>Name</p>
            <form:errors path="name"/>
            <form:input path="name"/>
            <p>Surname</p>
            <form:errors path="surname"/>
            <form:input path="surname"/>
            <p>Email</p>
            <form:errors path="email"/>
            <form:input path="email"/>
            <p>Mobile</p>
            <form:errors path="mobile_phone"/>
            <form:input  path="mobile_phone"/>
            <p>Password</p>
            <form:errors path="password"/>
            <form:password path="password"/>
            <p>Repeat password</p>
            <form:errors path="password"/>
            <form:password path="passwordConfirm"/>
            <p><form:button>Sign up!</form:button></p>
        </form:form>
    </div>
</div>