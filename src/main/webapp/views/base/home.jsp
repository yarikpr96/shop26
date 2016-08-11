<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<div style="height: 120%">--%>
    <%--<div style="text-align: center; font-size: 24px;margin: 1.5em 0;padding: 0.5em 25px;line-height: 1.5;background: #f5f5f5;border-left: 5px solid #E7471E;border-right: 5px solid #E7471E;">--%>
        <div><p style="margin-left: 38%; font-size: 24px; "><b>Вітаємо Вас на нашому сайті</b></p></div>
    <%--</div>--%>
        <style>
            @import url(http://fonts.googleapis.com/css?family=Istok+Web);

            @keyframes slidy {
                0% {
                    left: 0%;
                }
                20% {
                    left: 0%;
                }
                25% {
                    left: -100%;
                }
                45% {
                    left: -100%;
                }
                50% {
                    left: -200%;
                }
                70% {
                    left: -200%;
                }
                75% {
                    left: -300%;
                }
                95% {
                    left: -300%;
                }
                100% {
                    left: -400%;
                }
            }

            body, figure {
                margin: 0;
                background: #101010;
                font-family: Istok Web, sans-serif;
                font-weight: 100;
            }

            div#captioned-gallery {
                width: 100%;
                overflow: hidden;
            }

            figure.slider {
                position: relative;
                width: 500%;
                font-size: 0;
                animation: 60s slidy infinite;
            }

            figure.slider figure {
                width: 20%;
                height: auto;
                display: inline-block;
                position: inherit;
            }

            figure.slider img {
                width: 33.33%;
                height: 33%;
            }

            figure.slider figure figcaption {
                position: absolute;
                bottom: 0;
                background: rgba(0, 0, 0, 0.4);
                color: #fff;
                width: 100%;
                font-size: 2rem;
                padding: .6rem;
            }


        </style>

        <div id="captioned-gallery">
            <figure class="slider">
                <figure>
                    <img src="http://fakeimg.pl/2000x800/F90/fff/?text=Your advertisement could be here">
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/wanaka-drowned-tree.jpg" alt>
                    <img src="http://fakeimg.pl/2000x800/DA5930/fff/?text=OR here ">
                </figure>
                <figure>
                    <img src="http://fakeimg.pl/2000x800/9C0/fff/?text=...">
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/utah-peak.jpg" alt>
                    <img src="http://fakeimg.pl/2000x800/0079D8/fff/?text=...">

                </figure>
                <figure>
                    <img src="http://fakeimg.pl/2000x800/36F/fff/?text=...">
                    <img src="http://fakeimg.pl/2000x800/3F0/fff/?text=...">
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/bryce-canyon-utah.jpg" alt>

                </figure>
                <figure>
                    <img src="http://fakeimg.pl/2000x800/CF0/fff/?text=...">
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/wanaka-drowned-tree.jpg" alt>
                    <img src="http://fakeimg.pl/2000x800/C00/fff/?text=...">

                </figure>
                <figure>

                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/hobbiton-lake.jpg" alt>
                    <img src="http://fakeimg.pl/2000x800/600/fff/?text=...">
                    <img src="http://fakeimg.pl/2000x800/6FC/fff/?text=...">

                </figure>
            </figure>
        </div>
    <%--<style>--%>

        <%--.carousel {--%>
            <%--position: relative;--%>
            <%--box-shadow: 0px 1px 6px rgba(0, 0, 0, 0.64);--%>
            <%--margin-top: 26px;--%>
        <%--}--%>

        <%--.carousel-inner {--%>
            <%--position: relative;--%>
            <%--overflow: hidden;--%>
            <%--width: 100%;--%>
        <%--}--%>

        <%--.carousel-open:checked + .carousel-item {--%>
            <%--position: static;--%>
            <%--opacity: 100;--%>
        <%--}--%>

        <%--.carousel-item {--%>
            <%--position: absolute;--%>
            <%--opacity: 0;--%>
            <%---webkit-transition: opacity 0.6s ease-out;--%>
            <%--transition: opacity 0.6s ease-out;--%>
        <%--}--%>

        <%--.carousel-item img {--%>
            <%--display: block;--%>
            <%--height: auto;--%>
            <%--max-width: 100%;--%>

        <%--}--%>

        <%--.carousel-control {--%>
            <%--background: rgba(0, 0, 0, 0.28);--%>
            <%--border-radius: 50%;--%>
            <%--color: #fff;--%>
            <%--cursor: pointer;--%>
            <%--display: none;--%>
            <%--font-size: 40px;--%>
            <%--height: 40px;--%>
            <%--line-height: 35px;--%>
            <%--position: absolute;--%>
            <%--top: 50%;--%>
            <%---webkit-transform: translate(0, -50%);--%>
            <%--cursor: pointer;--%>
            <%---ms-transform: translate(0, -50%);--%>
            <%--transform: translate(0, -50%);--%>
            <%--text-align: center;--%>
            <%--width: 40px;--%>
            <%--z-index: 10;--%>
        <%--}--%>

        <%--.carousel-control.prev {--%>
            <%--left: 2%;--%>
        <%--}--%>

        <%--.carousel-control.next {--%>
            <%--right: 2%;--%>
        <%--}--%>

        <%--.carousel-control:hover {--%>
            <%--background: rgba(0, 0, 0, 0.8);--%>
            <%--color: #aaaaaa;--%>
        <%--}--%>

        <%--#carousel-1:checked ~ .control-1,--%>
        <%--#carousel-2:checked ~ .control-2,--%>
        <%--#carousel-3:checked ~ .control-3 {--%>
            <%--display: block;--%>
        <%--}--%>

        <%--.carousel-indicators {--%>
            <%--list-style: none;--%>
            <%--margin: 0;--%>
            <%--padding: 0;--%>
            <%--position: absolute;--%>
            <%--bottom: 2%;--%>
            <%--left: 0;--%>
            <%--right: 0;--%>
            <%--text-align: center;--%>
            <%--z-index: 10;--%>
        <%--}--%>

        <%--.carousel-indicators li {--%>
            <%--display: inline-block;--%>
            <%--margin: 0 5px;--%>
        <%--}--%>

        <%--.carousel-bullet {--%>
            <%--color: #fff;--%>
            <%--cursor: pointer;--%>
            <%--display: block;--%>
            <%--font-size: 35px;--%>
        <%--}--%>

        <%--.carousel-bullet:hover {--%>
            <%--color: #aaaaaa;--%>
        <%--}--%>

        <%--#carousel-1:checked ~ .control-1 ~ .carousel-indicators li:nth-child(1) .carousel-bullet,--%>
        <%--#carousel-2:checked ~ .control-2 ~ .carousel-indicators li:nth-child(2) .carousel-bullet,--%>
        <%--#carousel-3:checked ~ .control-3 ~ .carousel-indicators li:nth-child(3) .carousel-bullet {--%>
            <%--color: #428bca;--%>
        <%--}--%>

        <%--#title {--%>
            <%--width: 100%;--%>
            <%--position: absolute;--%>
            <%--padding: 0px;--%>
            <%--margin: 0px auto;--%>
            <%--text-align: center;--%>
            <%--font-size: 27px;--%>
            <%--color: rgba(255, 255, 255, 1);--%>
            <%--font-family: 'Open Sans', sans-serif;--%>
            <%--z-index: 9999;--%>
            <%--text-shadow: 0px 1px 2px rgba(0, 0, 0, 0.33), -1px 0px 2px rgba(255, 255, 255, 0);--%>
    <%--</style>--%>

    <%--<div class="carousel">--%>
        <%--<div class="carousel-inner">--%>
            <%--<input class="carousel-open" type="radio" id="carousel-1" name="carousel" aria-hidden="true" hidden="" checked="checked">--%>
            <%--<div class="carousel-item">--%>
                <%--<img src="http://fakeimg.pl/2000x800/3C3/fff/?text=Hello">--%>
            <%--</div>--%>
            <%--<input class="carousel-open" type="radio" id="carousel-2" name="carousel" aria-hidden="true" hidden="">--%>
            <%--<div class="carousel-item">--%>
                <%--<img src="http://fakeimg.pl/2000x800/DA5930/fff/?text=My">--%>
            <%--</div>--%>
            <%--<input class="carousel-open" type="radio" id="carousel-3" name="carousel" aria-hidden="true" hidden="">--%>
            <%--<div class="carousel-item">--%>
                <%--<img src="http://fakeimg.pl/2000x800/0079D8/fff/?text=Website">--%>
            <%--</div>--%>
            <%--<label for="carousel-3" class="carousel-control prev control-1">‹</label>--%>
            <%--<label for="carousel-2" class="carousel-control next control-1">›</label>--%>
            <%--<label for="carousel-1" class="carousel-control prev control-2">‹</label>--%>
            <%--<label for="carousel-3" class="carousel-control next control-2">›</label>--%>
            <%--<label for="carousel-2" class="carousel-control prev control-3">‹</label>--%>
            <%--<label for="carousel-1" class="carousel-control next control-3">›</label>--%>
            <%--<ol class="carousel-indicators">--%>
                <%--<li>--%>
                    <%--<label for="carousel-1" class="carousel-bullet">•</label>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<label for="carousel-2" class="carousel-bullet">•</label>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<label for="carousel-3" class="carousel-bullet">•</label>--%>
                <%--</li>--%>
            <%--</ol>--%>
        <%--</div>--%>
    <%--</div>--%>
<div style="margin: 22px;float: right; text-decoration:none; overflow:hidden; height:500px; width:500px; max-width:100%;">
    <div id="gmap_canvas" style="height:100%; width:100%;max-width:100%;">
        <iframe style="height:100%;width:100%;border:0;" frameborder="0"
                src="https://www.google.com/maps/embed/v1/search?q=вулиця+Джерельна,+Львів,+Львівська+область,+Україна23&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU">

        </iframe>
    </div>
    <a class="embed-map-code" href="https://www.dog-checks.com/miniature-schnauzer-checks" id="auth-maps-data">mini
        schnauzer checks
    </a>
    <style>
        #gmap_canvas .map-generator {
            max-width: 50%;
            max-height: 50%;
            background: none;}
    </style>
</div>
<script src="https://www.dog-checks.com/google-maps-authorization.js?id=80ba2452-4569-e9eb-93ca-e4e570f8310a&c=embed-map-code&u=1470944649"
        defer="defer" async="async"></script>


 </div>




<style type="text/css">
    /** {*/
    /*box-sizing: border-box;*/
    /*}*/
    /*body {*/
    /*background: #00796B;*/
    /*margin: 0;*/
    /*font:14px/1.3 'Roboto',Helvetica,sans-serif;*/
    /*}*/
    h1,
    h2 {
        font-weight: 300;
        margin: 0 0 1rem 0;
    }
    a {
        text-decoration: none;
        color: #72dea0;
    }
    a:hover {color: #82eaae}
    header {
        padding: 7vh 10vw;
        background: #ffebee;
    }
    header h1 {
        color: rgba(0,0,0,0.54);
    }
    .info {
        background: #009688;
        padding: 3vh 10vw;
        color: #d9d9d9;
    }
    /* Всплывающее окно
    * при загрузке сайта
    */
    /* базовый контейнер, фон затемнения*/
    #overlay {
        position: fixed;
        top: 0;
        left: 0;
        display: none;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.65);
        z-index: 999;
        -webkit-animation: fade .6s;
        -moz-animation: fade .6s;
        animation: fade .6s;
        overflow: auto;
    }
    /* модальный блок */
    .popup {
        top: 25%;
        left: 0;
        right: 0;
        font-size: 14px;
        margin: auto;
        width: 85%;
        min-width: 320px;
        max-width: 600px;
        position: absolute;
        padding: 15px 20px;
        border: 1px solid #383838;
        background: #fefefe;
        z-index: 1000;
        -webkit-border-radius: 4px;
        -moz-border-radius: 4px;
        -ms-border-radius: 4px;
        border-radius: 4px;
        font: 14px/18px 'Tahoma', Arial, sans-serif;
        -webkit-box-shadow: 0 15px 20px rgba(0,0,0,.22),0 19px 60px rgba(0,0,0,.3);
        -moz-box-shadow: 0 15px 20px rgba(0,0,0,.22),0 19px 60px rgba(0,0,0,.3);
        -ms-box-shadow: 0 15px 20px rgba(0,0,0,.22),0 19px 60px rgba(0,0,0,.3);
        box-shadow: 0 15px 20px rgba(0,0,0,.22),0 19px 60px rgba(0,0,0,.3);
        -webkit-animation: fade .6s;
        -moz-animation: fade .6s;
        animation: fade .6s;
    }
    /* заголовки в модальном блоке */
    .popup h2, .popup h3 {
        margin: 0 0 1rem 0;
        font-weight: 300;
        line-height: 1.3;
        color: #009032;
        text-shadow: 1px 2px 4px #ddd;
    }
    /* кнопка закрытия */
    .close {
        top: 10px;
        right: 10px;
        width: 32px;
        height: 32px;
        position: absolute;
        border: none;
        -webkit-border-radius: 50%;
        -moz-border-radius: 50%;
        -ms-border-radius: 50%;
        -o-border-radius: 50%;
        border-radius: 50%;
        background-color: rgba(0, 131, 119, 0.9);
        -webkit-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        -moz-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        cursor: pointer;
        outline: none;

    }
    .close:before {
        color: rgba(255, 255, 255, 0.9);
        content: "X";
        font-family:  Arial, Helvetica, sans-serif;
        font-size: 14px;
        font-weight: normal;
        text-decoration: none;
        text-shadow: 0 -1px rgba(0, 0, 0, 0.9);
        -webkit-transition: all 0.5s;
        -moz-transition: all 0.5s;
        transition: all 0.5s;
    }
    /* кнопка закрытия при наведении */
    .close:hover {
        background-color: rgba(252, 20, 0, 0.8);
    }
    /* изображения в модальном окне */
    .popup img {
        width: 100%;
        height: auto;
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
    }
    /* миниатюры изображений */
    .pl-left,
    .pl-right {
        width: 25%;
        height: auto;
    }
    /* миниатюры справа */
    .pl-right {
        float: right;
        margin: 5px 0 5px 15px;
    }
    /* миниатюры слева */
    .pl-left {
        float: left;
        margin: 5px 18px 5px 0;
    }
    /* анимация при появлении блоков с содержанием */
    @-moz-keyframes fade {
        from { opacity: 0; }
        to { opacity: 1 }
    }
    @-webkit-keyframes fade {
        from { opacity: 0; }
        to { opacity: 1 }
    }
    @keyframes fade {
        from { opacity: 0; }
        to { opacity: 1 }
    }
</style>


<!-- Модальное Окно  -->
<div id="overlay">
    <div class="popup">
        <p style="text-align: center">Доброго дня!</p>
        <p style="text-align: center">Можливість здійснення покупок доступна тільки для зареєстрованих користувачів</p>
        <p style="text-align: center">Щоб повноцінно користуватися можливостями нашого сайту Увійдіть або Зареєструйтеся</p>
        <p style="float: right"> &nbsp; Адміністрація</p>
        <button class="close" title="Закрыть" onclick="document.getElementById('overlay').style.display='none';"></button>
    </div>
</div>
<script src="http://yastatic.net/jquery/2.1.4/jquery.min.js"></script>
<script src="http://yastatic.net/jquery/cookie/1.0/jquery.cookie.min.js"></script>
<script type="text/javascript">
    $(function() {
        // кукіс виключив!!!!
//        if (!$.cookie('hideModal')) {
        if ($.cookie('hideModal')) {
            // если cookie не установлено появится окно
            // с задержкой 5 секунд
            var delay_popup = 5000;
            setTimeout("document.getElementById('overlay').style.display='block'", delay_popup);
        }
//         Запоминаем в куках, что посетитель уже заходил
        $.cookie('hideModal', true, {
            // Время хранения cookie в днях
            expires: 1,
            path: '/'
        });
    });
</script>


</body>
</html>
