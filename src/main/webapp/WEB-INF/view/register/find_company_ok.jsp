<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
$(document).ready(function(){
	$('#aname').on('click',function (){
		var name = $(this).text();
		var sales = $('#asales').text();
		var emp = $('#aemp').text();
		var birth = $('#abirth').text();
		var ind = $('#aind').text();
		var loc = $('#aloc').text();
		var ceo = $('#aceo').text();
		var web = $('#aweb').text();
		var type = $('#atype').text();
		var code = $('#acode').text();
		$('#company_name', opener.document).val(name);
		$('#company_sales',opener.document).val(sales);
		$('#company_employee',opener.document).val(emp);
		$('#company_birth',opener.document).val(birth);
		$('#company_industry',opener.document).val(ind);
		$('#company_location',opener.document).val(loc);
		$('#company_ceo',opener.document).val(ceo);
		$('#company_web',opener.document).val(web);
		$('#company_type',opener.document).val(type);
		$('#company_code',opener.document).val(code);
		
		window.close();
	});
});
</script>

 <div>
	<table border = "1" width = "100%">
		<c:forEach var="company" items="${list}" >
			<tr>
				<td rowspan="5">이미지</td>
				<td colspan="3"><a href ="#" id="aname">${company.name}</a></td>
				
			</tr>
			<tr>
				<td id = "aceo">대표 ${company.ceo}</td>
				<td id = "atype">${company.type}</td>
				<td id = "aind">산업군 : ${company.industry}</td>
			</tr>
			<tr>
				<td id = "abirth">설립 : ${company.birth}</td>
				<td id = "asales">매출 : ${company.sales}억</td>
				<td id = "aemp">사원 : ${company.employee}명</td>
			</tr>
			<tr>
				<td colspan="2" id = 'aweb'><a href="http://${company.website}" target="_blank">${company.website}</a></td>
				<td id = "acode">${company.regcode}</td>
			</tr>
			<tr>
				<td colspan="3" id = "aloc">주소 : ${company.location}</td>
			</tr>
		</c:forEach>
	</table>
	
	<div id="show_status" class="padding container-100 in-align-center" style="height: 100px;">
		<label class="font-medium">추가할래?</label>
		<br>
		<button class="btn btn-primary btn-lg" onclick="location.href='${pageContext.request.contextPath }/register/register_newcompany'">기업등록</button>
	</div>
</div>
