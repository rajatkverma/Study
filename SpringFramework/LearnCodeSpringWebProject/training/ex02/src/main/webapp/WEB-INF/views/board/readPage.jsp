<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
  src="http://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>
<title>Insert title here</title>
<script>
$(document).ready(function() {
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-warning").on("click", function() {
		formObj.attr("action", "/board/modify");
		formObj.attr("method", "get");
		formObj.submit();
	});
	
	$(".btn-danger").on("click", function() {
		formObj.attr("action", "/board/remove");
		formObj.submit();
	});
	
	$(".btn-primary").on("click", function() {
		formObj.attr("method", "get");
		formObj.attr("action", "/board/listPage");
		formObj.submit();
	});
});
</script>
</head>
<body>
<%@include file="../include/header.jsp"%>

<form role="form" method="POST">
	<input type="hidden" name="bno" value="${boardVO.bno}">
	<input type="hidden" name="page" value="${cri.page }">
	<input type="hidden" name="perPageNum" value="${cri.perPageNum }">
</form>

<div class="box-body">
	<div class="form-group">
		<label for="exampleInputEmail1">Title</label>
		<input type="text" name="title" class="form-control" value="${boardVO.title}" readonly="readonly">
	</div>
	<div class="form-group">
		<label for="exampleInputPassword1">Content</label>
		<textarea class="form-control" name="content" rows="3" readonly="readonly">${boardVO.content}</textarea>
	</div>
	<div class="form-group">
		<label for="exampleInputEmail1">Writer</label>
		<input type="text" name="writer" class="form-control" value="${boardVO.writer}" readonly="readonly">
	</div>
</div>
<!-- /.box-body -->

<div class="box-footer">
	<button type="submit" class="btn btn-warning">Modify</button>
	<button type="submit" class="btn btn-danger">REMOVE</button>
	<button type="submit" class="btn btn-primary">LIST ALL</button>
</div>
<%@include file="../include/footer.jsp"%>
</body>
</html>