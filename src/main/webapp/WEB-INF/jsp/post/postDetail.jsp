<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="d-flex justify-content-center">
	<div class="w-50">
		<h2 class="mb-4">글 상세/수정</h2>
		<input type="text" id="subject" class="form-control" placeholder="제목을 입력해주세요" value="${post.subject}">
		<textarea rows="15" cols="100" id="content" class="form-control" placeholder="내용을 입력해주세요">${post.content}</textarea>
		<%-- 이미지가 있을 때만 이미지 영역 추가 --%>
		<c:if test="${not empty post.imagePath}">
			<div class="mt-3">
				<img src="${post.imagePath}" alt="업로드 이미지" width="150">
			</div>
		</c:if>
		<div class="d-flex justify-content-end mt-3">
			<input type="file" id="file" accept=".jpg, .jpeg, .png, .gif">
		</div>
		<div class="d-flex justify-content-between mt-4">
			<button type="button" id="postDeleteBtn" class="btn btn-secondary">삭제</button>
			<div class="d-flex">
				<a href="/post/post_list_view" class="btn btn-dark">목록으로</a>
				<button type="button" id="postUpdateBtn" class="btn btn-primary ml-2">수정</button>
			</div>
		</div>
	</div>
</div>

<!-- <script>
$(document).ready(function() {
	
});
</script> -->