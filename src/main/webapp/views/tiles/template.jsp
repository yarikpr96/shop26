<%--
  Created by IntelliJ IDEA.
  User: Yulian
  Date: 22.07.2016
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html>
<head>
    <title>Title</title>
</head>
<body style="
margin: 0px;
        padding: 0px;
        background: url(http://digital.bnint.com/filelib/s9/photos/white_wood_4500x3000_lo_res.jpg);


/*height:140%;*/
/*float: inherit*/
">
<div><tiles:insertAttribute name="header"/></div>
<div <tiles:insertAttribute name="menu"/> </div>
<div><tiles:insertAttribute name="body"/> </div>
<div><tiles:insertAttribute name="footer"/> </div>
</body>
</html>
