<%--
  Created by IntelliJ IDEA.
  User: Ярослав
  Date: 11.08.2016
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style="height: 120%">
<div style="margin: 22px;text-decoration:none; overflow:hidden; height:500px; width:500px; max-width:100%;">
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