

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>


<title>编辑汽车信息</title>

<script>
    $(function() {
        $("#editForm").submit(function() {
            if (!checkEmpty("name", "汽车名称"))
                return false;
//			if (!checkEmpty("subTitle", "小标题"))
//				return false;
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

<div class="workingArea">
	<ol class="breadcrumb">
		<li><a href="admin_category_list">所有品牌</a></li>
		<li><a href="admin_product_list?cid=${p.category.id}">${p.category.name}</a></li>
		<li class="active">${p.name}</li>
		<li class="active">编辑车辆</li>
	</ol>

	<div class="panel panel-warning editDiv">
		<div class="panel-heading">编辑车辆</div>
		<div class="panel-body">
			<form method="post" id="editForm" action="admin_product_update">
				<table class="editTable">
					<tr>
						<td>车辆名称</td>
						<td><input id="name" name="name" value="${p.name}"
								   type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>车辆标语</td>
						<td><input id="subTitle" name="subTitle" type="text"
								   value="${p.subTitle}"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>原价格</td>
						<td><input id="originalPrice" value="${p.originalPrice}" name="originalPrice" type="text"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>新人价格</td>
						<td><input id="promotePrice"  value="${p.promotePrice}" name="promotePrice" type="text"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>剩余天数</td>
						<td><input id="stock"  value="${p.stock}" name="stock" type="text"
								   class="form-control"></td>
					</tr>

					<tr class="submitTR">
						<td colspan="2" align="center">
							<input type="hidden" name="id" value="${p.id}">
							<input type="hidden" name="cid" value="${p.category.id}">
							<button type="submit" class="btn btn-success">提 交</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>