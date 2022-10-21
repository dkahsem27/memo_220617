<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="header" class="d-flex justify-content-between align-items-center">
  <h1 class="logo font-weight-bold">메모 게시판</h1>
  <div class="sign-in-info">
	  <%-- 로그인이 되었을 때만 정보 노출 --%>
	  <c:if test="${not empty userName}">
	  	<span>${userName}님 안녕하세요</span>
	  	<a href="/user/sign_out" class="ml-3 font-weight-bold">로그아웃</a>
	  </c:if>
  </div>
</div>