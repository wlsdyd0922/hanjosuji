<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp" />
<div class="container-1000 out-align-center">
	<div class="in-align-left">
		<h1>제목</h1>
		<h1>보낸이</h1>
		<h5>시간</h5>
	</div>
	<table class="table">
		<thead>
			<tr>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			
				<c:forEach var="ndto" items="${list}">
					<th><a href="#">${ndto.title}</a></th>
					<th>${ndto.company}</th>
					<th>${ndto.reg}</th>
				</c:forEach>
			</tr>
		</tbody>
	</table>
</div>