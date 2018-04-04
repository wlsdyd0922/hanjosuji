<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>기업찾기</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css">
<!-- bootstrap을 사용하기 위한 링크 설정 -->

<!-- Latest compiled and minified CSS -->

<!-- Optional theme -->

<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/js/find_company.js"></script>
</head>
<body>
	<div style="width: 682px; height: 500px;">
        <div id="company_search_result"> 
        	<form action="#" onclick="return false;">
	        	<div class="div-2">
	        		<div class="container-90">
	            		<input id="company_name" name="company_name" class="form-control input-lg" type="text" placeholder="원하시는 기업명을 입력해 주세요">
		            </div>	
		            <div class="container-10">
		            	<input type="submit" id="search_button"value="검색">
		            </div>
	        	</div>
            </form>  
        </div>
        <div id = "list">
        </div>
    </div>
</body>
</html>