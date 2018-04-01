<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
$(document).ready(function(){
	$('#name').on('click',function (){
		var name = $(this).text();
		$('#company_name', opener.document).val(name);
		window.close();
	});
});
</script>

<%-- <h1></h1> --%>
<%-- <h1>${company.type}</h1> --%>
<%-- <h1>${company.sales}</h1> --%>
<%-- <h1>${company.imgname}</h1> --%>
<%-- <h1>${company.regcode }</h1> --%>
<%-- <h1>${company.imgencoding}</h1> --%>
<%-- <h1>${company.industry}</h1> --%>
<%-- <h1>${company.ceo}</h1> --%>
<%-- <h1>${company.employee}</h1> --%>
<%-- <h1>${company.website}</h1> --%>
<%-- <h1>${company.location}</h1> --%>
<%-- <h1>${company.birth}</h1> --%>

 <div>
	<table border = "1" width = "100%">
		<c:forEach var="company" items="${list}" >
			<tr>
				<td rowspan="5">이미지</td>
				<td colspan="3"><a href ="#" id="name">${company.name}</a></td>
				
			</tr>
			<tr>
				<td>대표 ${company.ceo}</td>
				<td>${company.type}</td>
				<td>${company.industry}</td>
			</tr>
			<tr>
				<td>설립 : ${company.birth}</td>
				<td>매출 : ${company.sales}억</td>
				<td>사원 : ${company.employee}명</td>
			</tr>
			<tr>
				<td colspan="2"><a href="http://${company.website}" target="_blank">${company.website}</a></td>
				<td>사업자번호</td>
			</tr>
			<tr>
				<td colspan="3">${company.location}</td>
			</tr>
		</c:forEach>
	</table>
	
	<div id="show_status" class="padding container-100 in-align-center" style="height: 100px;">
		<label class="font-medium">추가할래?</label>
		<br>
		<button class="btn btn-primary btn-lg" onclick="location.href='${pageContext.request.contextPath }/register/register_newcompany'">기업등록</button>
	</div>
</div>