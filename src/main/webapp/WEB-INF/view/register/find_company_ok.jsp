<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div>
	<table class="table-noline">
		<c:forEach var="company" items="${list}" >
			<tr>
				<td>
					${company.name}
				</td>
			</tr>
		</c:forEach>
	</table>	
</div>