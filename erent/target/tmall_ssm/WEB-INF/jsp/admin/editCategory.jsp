

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>


<title>编辑品牌</title>


<script>
    $(function(){

        $("#editForm").submit(function(){
            if(!checkEmpty("name","品牌名称"))
                return false;

            return true;
        });
    });

</script>

<div class="workingArea">

	<ol class="breadcrumb">
		<li><a href="admin_category_list">所有品牌</a></li>
		<li class="active">编辑品牌</li>
	</ol>

	<div class="panel panel-warning editDiv">
		<div class="panel-heading">编辑品牌</div>
		<div class="panel-body">
			<form method="post" id="editForm" action="admin_category_update"  enctype="multipart/form-data">
				<table class="editTable">
					<tr>
						<td>品牌名称</td>
						<td><input  id="name" name="name" value="${c.name}" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>品牌图片</td>
						<td>
							<input id="categoryPic" accept="image/*" type="file" name="image" />
						</td>
					</tr>
					<tr class="submitTR">
						<td colspan="2" align="center">
							<input type="hidden" name="id" value="${c.id}">
							<button type="submit" class="btn btn-success">提 交</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>