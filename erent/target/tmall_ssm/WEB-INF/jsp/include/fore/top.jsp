<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<nav class="top" style="height: 30px;background-color: #0f0f0f";>
    <a href="${contextPath}"style="font-size:17px">
        <span style="color:#c4a71a;margin:0px" class=" glyphicon glyphicon-home redColor"></span>
       e租官网首页
    </a>

    <span style="font-size:15px">亲，欢迎来到e租</span>

    <c:if test="${!empty user}">
        <a href="loginPage">${user.name}</a>
        <a href="forelogout"style="font-size:15px">退出</a>
    </c:if>

    <c:if test="${empty user}">
        <a href="loginPage"style="font-size:15px">请登录</a>
        <a href="registerPage"style="font-size:15px">免费注册</a>
    </c:if>

    <span class="pull-right"style="font-size:15px">
            <a href="forebought">我的e租</a>
            <a href="forecart">
            <span style="color:#C40000;margin:0px;" class=" glyphicon glyphicon-shopping-cart redColor"></span>
            候选车辆列表</a>
        </span>

</nav>