<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="d-flex justify-content-center">
	<div class="w-50">
		<h2 class="mb-4">글 목록</h2>
		<table class="table text-center">
			<thead>
				<tr>
					<th>No.</th>
					<th>제목</th>
					<th>작성일</th>
					<th>수정일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${postList}" var="post" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td class="text-left">${post.subject}</td>
						<td><fmt:formatDate value="${post.createdAt}" pattern="yyyy-MM-dd hh:mm:ss" /></td>
						<td><fmt:formatDate value="${post.updatedAt}" pattern="yyyy-MM-dd hh:mm:ss" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="d-flex justify-content-end">
			<a href="/post/post_create_view" class="btn btn-primary">글쓰기</a>
		</div>
	</div>
</div>