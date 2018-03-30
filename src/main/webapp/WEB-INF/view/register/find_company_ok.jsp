<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
$(document).ready(function(){
	$(function() {
		$('a').on('click',function (){
			var name = $(this).text();
			$('#company_name', opener.document).val(name);
			window.close();
		});
	});
});
</script>
 <div>
	<table border = "1">
		<c:forEach var="company" items="${list}" >
			<tr>
				<td colspan="6"><a href ="#">${company.name}</a></td>
				<td id="type">type : ${company.type}</td>
				<td id = "sales"> sales : ${company.sales}</td>
				<td id="location"> location : ${company.location}</td>
				<td id="imgname">imgname : ${company.imgname}</td>
<%-- 				<td id="imgencoding">imgencoding : ${company.imgencoding}</td> --%>
				<td id = "regcode"> regcode:${company.regcode }</td>
			</tr>
			<tr>
				<td id="industry">industry : ${company.industry}</td>
				<td id="ceo">CEO : ${company.ceo}</td>
				<td id="employee">사원수 : ${company.employee}명</td>
			</tr>
			<tr>
				<td colspan="3" id="website">WEBSITE : ${company.website}</td>
			</tr>
			<tr>
				<td colspan="3" id = "birth">설립일 : ${company.birth}</td>
			</tr>
			
		</c:forEach>
	</table>
	
	<div id="show_status" class="padding container-100 in-align-center" style="height: 100px;">
		<label class="font-medium">추가할래?</label>
		<br>
		<button class="btn btn-primary btn-lg" onclick="location.href='${pageContext.request.contextPath }/register/register_newcompany'">기업등록</button>
	</div>
</div>