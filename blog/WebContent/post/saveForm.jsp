<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div class="container">
	<br />
	<h2>글쓰기 페이지</h2>
	<br />
	<form action="/post?cmd=saveProc" method="POST">
		<input type="hidden" value="${sessionScope.principal.id}" name="userId"/>
		<div class="form-group">
			<label for="username">제목:</label> 
			<input type="text" class="form-control" id="title" placeholder="title" name="title" required="required"/>
		</div>

		<div class="form-group">
			<textarea id="summernote" class="form-control" name="content"></textarea>
			
		</div>
		
		<button type="submit" class="btn btn-primary">글쓰기 완료</button>
	</form>
</div>
<script>
      $('#summernote').summernote({
        placeholder: 'Hello Bootstrap 4',
        tabsize: 2,
        height: 300
      });
</script>
<%@ include file="../layout/footer.jsp" %>