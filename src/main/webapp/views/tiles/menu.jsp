
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--<div style="width: 34.8cm ; height: 45px; background-color: greenyellow; color: white; float: none; margin: 20px;border-radius: 10px;">--%>
    <%--<style>--%>
        <%--.menu {--%>
            <%--display: block;--%>
            <%--z-index: 999999;--%>

        <%--}--%>
        <%--.menu li {--%>
            <%--display: inline-block;--%>
            <%--position: relative;--%>
            <%--left:0;--%>
        <%--}--%>
        <%--.menu li.dropdown:hover > .submenu {--%>
            <%--display: block;--%>
        <%--}--%>
        <%--.menu li a {--%>
            <%--display: block;--%>
            <%--padding: 12px 8px;--%>
            <%--background: greenyellow;--%>
        <%--}--%>
        <%--.menu li.dropdown > a::after {--%>
            <%--font-size: 16px;--%>
            <%--font-family: 'Glyphicons Halflings';--%>
            <%--font-style: normal;--%>
            <%--font-weight: 400;--%>
            <%--margin-left: 8px;--%>

        <%--}--%>
        <%--.menu li a::before {--%>
            <%--font-size: 16px;--%>

            <%--font-family: 'Glyphicons Halflings';--%>
            <%--font-style: normal;--%>
            <%--font-weight: 400;--%>
            <%--margin-right: 8px;--%>
        <%--}--%>
        <%--.menu li a:hover {--%>
            <%--background: grey;--%>
        <%--}--%>
        <%--.menu .submenu {--%>
            <%--display: none;--%>
        <%--}--%>
        <%--.submenu {--%>
            <%--margin: 0px;--%>
            <%--padding: 0px;--%>
            <%--position: absolute;--%>
            <%--left: 0px;--%>
            <%--list-style-type: none;--%>
            <%--display: block;--%>
            <%--width: 200px;--%>
            <%--z-index: 9;--%>
        <%--}--%>
        <%--.submenu li {--%>
            <%--display: block;--%>
        <%--}--%>
        <%--.submenu li a {--%>
            <%--display: block;--%>
            <%--background: #999;--%>
            <%--color: #fff;--%>
            <%--padding: 8px 6px;--%>
            <%--margin-bottom: 1px;--%>
        <%--}--%>
        <%--.menu .submenu > li.dropdown:hover > .submenu {--%>
            <%--display: block;--%>
        <%--}--%>
        <%--.menu .submenu .submenu {--%>
            <%--position: absolute;--%>
            <%--left: 202px;--%>
            <%--top: 0px;--%>
        <%--}--%>
        <%--.submenu li.dropdown > a:after {--%>
            <%--font-size: 16px;--%>
            <%--font-family: 'Glyphicons Halflings';--%>
            <%--font-style: normal;--%>
            <%--font-weight: 400;--%>
            <%--margin-left: 8px;--%>

        <%--}--%>
    <%--</style>--%>

    <%--<ul style="font-size: 16px;" class="menu">--%>
        <%--<li><a  href="/">Головна</a></li>--%>
        <%--<li><sec:authorize access="hasRole('USER')"><a href="/cabinet">Мій профіль</a></sec:authorize></li>--%>
        <%--<li>--%>
            <%--<sec:authorize access="hasRole('USER')"><a href="/cabinet">Мій профіль</a></sec:authorize>--%>
        <%--</li>--%>
        <%--<li class="dropdown">--%>
            <%--<a href="/allProduct">Товари</a>--%>
            <%--<ul class="submenu">--%>
                <%--<li>--%>
                    <%--<sec:authorize access="hasRole('ADMIN')"><a href="/newProduct">Додати товар</a></sec:authorize>--%>
                <%--</li>--%>

                <%--<li class="dropdown">--%>
                    <%--<a href="/allType">Категорія</a>--%>
                    <%--<ul class="submenu">--%>
                        <%--<li class="dropdown">--%>
                            <%--<a href="/typeA">A</a>--%>
                            <%--<ul class="submenu">--%>
                                <%--<li>--%>
                                    <%--<a href="/productPage/1">One</a>--%>
                                <%--</li>--%>
                                <%--<li class="dropdown">--%>
                                    <%--<a href="/productPage/2">Two</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="/productPazge/3">Three</a>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                        <%--<li class="dropdown">--%>
                            <%--<a href="/typeB">B</a>--%>
                            <%--<ul class="submenu">--%>
                                <%--<li>--%>
                                    <%--<a href="/productPage/4">Four</a>--%>
                                <%--</li>--%>
                                <%--<li class="dropdown">--%>
                                    <%--<a href="/productPage/5">Five</a>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                        <%--<li class="dropdown">--%>
                            <%--<a href="/typeC">C</a>--%>
                            <%--<ul class="submenu">--%>
                                <%--<li>--%>
                                    <%--<a href="/productPage/6">Six</a>--%>
                                <%--</li>--%>
                                <%--<li class="dropdown">--%>
                                    <%--<a href="/productPage/7">Seven</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="/productPage/8">Eight</a>--%>
                                <%--</li>--%>
                                <%--<li class="dropdown">--%>
                                    <%--<a href="/productPage/9">Nine</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="/productPage/10">Ten</a>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
            <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="dropdown">--%>
            <%--<a href="">Інше</a>--%>
            <%--<ul class="submenu">--%>
                <%--<li>--%>
                    <%--<a href="/aboutShop">Про магазин</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="/contacts">Контакти</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="/guarantee">Гарантія</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="/delivery">Доставка</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="/test">Тест</a>--%>
                <%--</li>--%>

            <%--</ul>--%>
        <%--</li>--%>

    <%--</ul>--%>


<%--</div>--%>




<style>
    /* Стили меню */
    #nav {
        display: block;
        width: 100%;
        margin: 0px auto;
        padding: 0;
        background: #335599 repeat-x 0 -110px;
        height: 47px;
        border-radius: 10px; /*немного css3*/
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        box-shadow: 0 2px 2px rgba(0, 0, 0, .5);
        -moz-box-shadow: 0 2px 2px rgba(0, 0, 0, .5);
        -webkit-box-shadow: 0 2px 2px rgba(0, 0, 0, .5);
        z-index: 999999;
    }

    #nav li {
        margin: 10px;
        float: left;
        position: relative;
        list-style: none; z-index: 999999;
    }

    #nav a {
        font-weight: bold;
        color: #e7e5e5;
        text-decoration: none;
        display: block;
        padding: 8px 20px; z-index: 999999;

        border-radius: 10px; /*немного css3*/
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        text-shadow: 0 2px 2px rgba(0, 0, 0, .7);
    }

    /* sВыбранный пункт меню */
    #nav .current a, #nav li:hover > a {
        background: #7788aa repeat-x 0 -20px;
        color: #000;
        border-top: 1px solid #f8f8f8;

        box-shadow: 0 2px 2px rgba(0, 0, 0, .7); /*немного css3*/
        -moz-box-shadow: 0 2px 2px rgba(0, 0, 0, .7);
        -webkit-box-shadow: 0 2px 2px rgba(0, 0, 0, .7);
        text-shadow: 0 2px 2px rgba(255, 255, 255, 0.7); z-index: 999999;
    }

    /* Подуровень */
    #nav ul li:hover a, #nav li:hover li a {
        background: none;
        border: none;
        color: #000; z-index: 999999;
    }

    #nav ul li a:hover {
        background: #335599 repeat-x 0 -100px;
        color: #fff;

        border-radius: 10px; /*немного css3*/
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        text-shadow: 0 2px 2px rgba(0, 0, 0, 0.7);
    }

    #nav ul li:first-child > a {
        -moz-border-radius-topleft: 10px; /*немного css3*/
        -moz-border-radius-topright: 10px;
        -webkit-border-top-left-radius: 10px;
        -webkit-border-top-right-radius: 10px;
    }

    #nav ul li:last-child > a {
        -moz-border-radius-bottomleft: 10px; /*немного css3*/
        -moz-border-radius-bottomright: 10px;
        -webkit-border-bottom-left-radius: 10px;
        -webkit-border-bottom-right-radius: 10px;
    }

    /* выпадающий список */
    #nav li:hover > ul {
        opacity: 1;
        visibility: visible;
    }

    #nav ul {
        opacity: 0;
        visibility: hidden;
        padding: 0;
        width: 175px;
        position: absolute;
        /*TyT*/
        top: 38px;
        background: #aabbcc repeat-x 0 0;
        border: 1px solid #7788aa;

        border-radius: 10px; /*немного css3*/
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        box-shadow: 0 2px 2px rgba(0, 0, 0, .5);
        -moz-box-shadow: 0 2px 2px rgba(0, 0, 0, .5);
        -webkit-box-shadow: 0 2px 2px rgba(0, 0, 0, .5);

        -moz-transition: opacity .25s linear, visibility .1s linear .1s;
        -webkit-transition: opacity .25s linear, visibility .1s linear .1s;
        -o-transition: opacity .25s linear, visibility .1s linear .1s;
        transition: opacity .25s linear, visibility .1s linear .1s;
    }

    #nav ul li {
        float: none;
        margin: 0;

    }

    #nav ul a {
        font-weight: normal;
        text-shadow: 0 2px 2px rgba(255, 255, 255, 0.7);

    }

    #nav ul ul {
        left: 177px;
        top: 0px;
    }
</style>

<div class="example">
    <ul id="nav">
        <li class="current"><a href="/">Головна</a></li>
        <li class="current"><sec:authorize access="hasRole('USER')"><a href="/cabinet">Мій
            профіль</a></sec:authorize></li>

        <li><a href="/allProduct">Товари</a>
            <ul>
                <li><sec:authorize access="hasRole('ADMIN')"><a href="/newProduct">Додати товар</a></sec:authorize>
                </li>
                <li><a href="/allType">Категорії</a>
                    <ul>
                        <li><a href="/typeA">A</a>
                            <ul>
                                <li>
                                    <a href="/productPage/1">One</a>
                                </li>
                                <li class="dropdown">
                                    <a href="/productPage/2">Two</a>
                                </li>
                                <li>
                                    <a href="/productPage/3">Three</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="/typeB">B</a>
                            <ul>
                                <li>
                                    <a href="/productPage/4">Four</a>
                                </li>
                                <li class="dropdown">
                                    <a href="/productPage/5">Five</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="/typeC">C</a>
                            <ul>
                                <li>
                                    <a href="/productPage/6">Six</a>
                                </li>
                                <li class="dropdown">
                                    <a href="/productPage/7">Seven</a>
                                </li>
                                <li>
                                    <a href="/productPage/8">Eight</a>
                                </li>
                                <li class="dropdown">
                                    <a href="/productPage/9">Nine</a>
                                </li>
                                <li>
                                    <a href="/productPage/10">Ten</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><sec:authorize access="hasRole('USER')"><a href="/test">Корзина</a></sec:authorize>
        <li><sec:authorize access="hasRole('ADMIN')"><a href="/allOrder">Замовлення</a></sec:authorize>
        <li><a href="">Інше</a>
            <ul class="submenu">
                <li>
                    <a href="/aboutShop">Про магазин</a>
                </li>
                <li>
                    <a href="/contacts">Контакти</a>
                </li>
                <li>
                    <a href="/guarantee">Гарантія</a>
                </li>
                <li>
                    <a href="/delivery">Доставка</a>
                </li>


            </ul>
        </li>
    </ul>
</div>

</body>
</html>