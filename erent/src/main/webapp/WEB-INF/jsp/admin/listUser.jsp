

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<title>用户管理</title>


<div class="workingArea">

    <ol class="breadcrumb">
        <li><a href="admin_category_list">所有品牌</a></li>
        <li class="active">用户管理</li>
    </ol>



    <div class="listDataTableDiv">
        <table
                class="table table-striped table-bordered table-hover  table-condensed">
            <thead>
            <tr class="success">
                <th>ID</th>
                <th>用户名</th>
                <th>密码</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${us}" var="u">

                <tr>
                    <td>${u.id}</td>
                    <td>${u.name}</td>
                    <td>${u.password}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="pageDiv">
        <%@include file="../include/admin/adminPage.jsp"%>
    </div>

<%@include file="../include/admin/adminFooter.jsp"%>
