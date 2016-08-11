


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>




<div style="width: 100% ; height: 100px; background-color:limegreen; color: white; float: none; ">
    <style>
        .loading3 {
            border-radius: 50%;
            font-size: 20px;
            height: 88px;
            line-height: 88px;
            position: absolute;
            text-align: center;
            width: 88px;
        }
        .loading3 > div:nth-child(2), .loading3 > div:nth-child(3) {
            background-color: rgba(255, 255, 255, 0.2);
            border: 5px solid #FFF;
            border-radius: 50%;
            box-shadow: 0 0 5px 0 #009933;
            height: 88px;
            position: absolute;
            top: 0px;

            /* Устанавливаем ширину верхней и нижней рамки равной 0 */
            border-top-width: 0;
            border-bottom-width: 0;

            /* Анимация css3 */
            -webkit-animation: anim3 4s linear infinite;
            -moz-animation: anim3 4s linear infinite;
            -ms-animation: anim3 4s linear infinite;
            -o-animation: anim3 4s linear infinite;
            animation: anim3 4s linear infinite;
        }
        .loading3 > div:nth-child(2) {
            border-color: #FFF;
            left: 0px;
            width: 88px;
        }
        .loading3 > div:nth-child(3) {
            border-color: #009933;
            left: -5px;
            width: 88px;

            /* Задержка css3 */
            -webkit-animation-delay:0.5s;
            -moz-animation-delay:0.5s;
            -ms-animation-delay:0.5s;
            -o-animation-delay:0.5s;
            animation-delay:0.5s;
        }

        /* Кадры анимации css3 */
        @-webkit-keyframes anim3 {
            from { -webkit-transform: rotateY(0deg); }
            50% { -webkit-transform: rotateY(180deg); }
            to { -webkit-transform: rotateY(360deg); }
        }
        @-moz-keyframes anim3 {
            from { -moz-transform: rotateY(0deg); }
            50% { -moz-transform: rotateY(180deg); }
            to { -moz-transform: rotateY(360deg); }
        }
        @-ms-keyframes anim3 {
            from { -ms-transform: rotateY(0deg); }
            50% { -ms-transform: rotateY(180deg); }
            to { -ms-transform: rotateY(360deg); }
        }
        @-o-keyframes anim3 {
            from { -o-transform: rotateY(0deg); }
            50% { -o-transform: rotateY(180deg); }
            to { -o-transform: rotateY(360deg); }
        }
        @keyframes anim3 {
            from { transform: rotateY(0deg); }
            50% { transform: rotateY(180deg); }
            to { transform: rotateY(360deg); }
        }

    </style>
    <div class="main_body">
        <div class="element">
            <div class="loading1">
            </div>
        </div>
        <div class="element">
            <div class="loading2">
                <div></div>
            </div>
        </div>
        <div class="element">
            <div class="loading3">
                <div>My Shop</div>
                <div></div>
                <div></div>
            </div>
        </div>
        <div class="element">
            <div class="loading4">
            </div>
        </div>
    </div>
<div >
    <p>&emsp;</p>
    <p style="font-size: 30px;text-align: center;">Магазин Яріка</p>
</div>

    <sec:authorize access="isAnonymous()"><a style="
            position: absolute; /* Абсолютное позиционирование */
            left: 80%; /* Положение слоя от левого края */
            top: 10%; /* Положение слоя от верхнего края */
            margin-left: 176px; /* Отступ слева */
            margin-top: 45px; /* Отступ сверху */
            " href="/loginpage"><button style="font-size: 12pt" type="submit">Login</button></a>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <form:form method="post" action="/logout">
            <button type="submit" style="
            position: absolute; /* Абсолютное позиционирование */
            left: 80%; /* Положение слоя от левого края */
            top: 10%; /* Положение слоя от верхнего края */
            margin-left: 176px; /* Отступ слева */
            margin-top: 45px; /* Отступ сверху */
            font-size: 12pt">Logout
            </button>
        </form:form>
    </sec:authorize>
    <sec:authorize access="isAnonymous()">
        <a style="
            position: absolute; /* Абсолютное позиционирование */
            left: 80%; /* Положение слоя от левого края */
            top: 10%; /* Положение слоя от верхнего края */
            margin-left: 70px; /* Отступ слева */
            margin-top: 45px; /* Отступ сверху */
            " href="/registration"><button style="font-size: 12pt" type="submit">Registraion</button></a>
    </sec:authorize>


    <%--<sec:authorize access="isAnonymous()"><a href="/loginpage">Login</a></sec:authorize>--%>
    <%--<sec:authorize access="isAnonymous()"><a href="/registration">Registraion</a></sec:authorize>--%>
    <%--<sec:authorize access="isAuthenticated()">--%>
        <%--Hello, <sec:authentication property="name"/>--%>
        <%--<form:form method="post" action="/logout">--%>
            <%--<button type="submit">Logout!</button>--%>
        <%--</form:form>--%>
    <%--</sec:authorize>--%>

</div>
