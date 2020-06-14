

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<script>
    $(function() {
        $("#addForm").submit(function() {
            if (!checkEmpty("name", "车辆名称"))
                return false;
            if (!checkNumber("originalPrice", "原价格"))
                return false;
            if (!checkNumber("promotePrice", "新人价格"))
                return false;
            if (!checkInt("stock", "可租天数"))
                return false;
            return true;
        });
    });
</script>

<title>汽车管理</title>

<div class="workingArea">

	<ol class="breadcrumb">
		<li><a href="admin_category_list">所有品牌</a></li>
		<li><a href="admin_product_list?cid=${c.id}">${c.name}</a></li>
		<li class="active">车辆管理</li>
	</ol>

	<div class="listDataTableDiv">
		<table
				class="table table-striped table-bordered table-hover  table-condensed">
			<thead>
			<tr class="success">
				<th>ID</th>
				<th>汽车图片</th>
				<th>汽车名称</th>
				<th>汽车标语</th>
				<th width="53px">原价格</th>
				<th width="80px">新人价格</th>
				<th width="80px">可租天数</th>
				<th width="80px">图片管理</th>
				<th width="80px">设置属性</th>
				<th width="42px">编辑</th>
				<th width="42px">删除</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${ps}" var="p">
				<tr>
					<td>${p.id}</td>
					<td>

						<c:if test="${!empty p.firstProductImage}">
							<img width="40px" src="img/productSingle/${p.firstProductImage.id}.jpg">
						</c:if>

					</td>
					<td>${p.name}</td>
					<td>${p.subTitle}</td>
					<td>${p.originalPrice}</td>
					<td>${p.promotePrice}</td>
					<td>${p.stock}</td>
					<td><a href="admin_productImage_list?pid=${p.id}"><span
							class="glyphicon glyphicon-picture"></span></a></td>
					<td><a href="admin_propertyValue_edit?pid=${p.id}"><span
							class="glyphicon glyphicon-th-list"></span></a></td>

					<td><a href="admin_product_edit?id=${p.id}"><span
							class="glyphicon glyphicon-edit"></span></a></td>
					<td><a deleteLink="true"
						   href="admin_product_delete?id=${p.id}"><span
							class="     glyphicon glyphicon-trash"></span></a></td>

				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>

	<div class="pageDiv">
		<%@include file="../include/admin/adminPage.jsp"%>
	</div>

	<div class="panel panel-warning addDiv">
		<div class="panel-heading">新增车辆</div>
		<div class="panel-body">
			<form method="post" id="addForm" action="admin_product_add">
				<table class="addTable">
					<tr>
						<td>车辆名称</td>
						<td><input id="name" name="name" type="text"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>车辆标语</td>
						<td><input id="subTitle" name="subTitle" type="text"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>原价格</td>
						<td><input id="originalPrice" value="99.98" name="originalPrice" type="text"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>新人价格</td>
						<td><input id="promotePrice"  value="19.98" name="promotePrice" type="text"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>可租天数</td>
						<td><input id="stock"  value="99" name="stock" type="text"
								   class="form-control"></td>
					</tr>
					<tr class="submitTR">
						<td colspan="2" align="center">
							<input type="hidden" name="cid" value="${c.id}">
							<button type="submit" class="btn btn-success">提 交</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>

</div>

<%@include file="../include/admin/adminFooter.jsp"%>