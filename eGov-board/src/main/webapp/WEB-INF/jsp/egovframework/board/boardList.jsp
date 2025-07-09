<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- 시간 -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>자료실</title>
    
    <!-- 공통 CSS -->
    <link rel="stylesheet" href="<c:url value='/css/egovframework/style.css' />" />
    
    <!-- 공통 JS -->
    <script type="text/javascript" defer="defer">
	    /* 글 수정 화면 function */
	    function fn_egov_select(id) {
	    	document.listForm.selectedId.value = id;
	       	document.listForm.action = "<c:url value='/update.do'/>";
	       	document.listForm.submit();
	    }
	    
	    /* 글 등록 화면 function */
	    function fn_egov_addView() {
	       	document.listForm.action = "<c:url value='/write.do'/>";
	       	document.listForm.submit();
	    }
	    
	    /* 글 목록 화면 function */
	    function fn_egov_selectList() {
	    	document.listForm.action = "<c:url value='/boardList.do'/>";
	       	document.listForm.submit();
	    }
	    
	    /* pagination 페이지 링크 function */
	    function fn_egov_link_page(pageNo){
	    	document.listForm.pageIndex.value = pageNo;
	    	document.listForm.action = "<c:url value='/boardList.do'/>";
	       	document.listForm.submit();
	    }
    </script>
</head>
<body>
<div id="container">
<h1 class="tc">자료실</h1>

<form:form modelAttribute="searchVO" id="listForm" name="listForm" method="post">
<div id="search" class="search_form mb15">
	<ul class="form_group horizontal jcc">
		<li>
		    <label for="searchCondition" class="vishid">
		    	<spring:message code="search.choose" />
		    </label>
			<form:select path="searchCondition" cssClass="use">
				<c:set var="labelTitle"><spring:message code="search.title"/></c:set>
<form:option value="0" label="${labelTitle}" />
				<form:option value="1">
				    <spring:message code="search.name" />
				</form:option>
			</form:select>
		</li>
		<li>
			<label for="searchKeyword" class="vishid">
				<spring:message code="search.keyword" />
			</label>
			<form:input path="searchKeyword" cssClass="txt" placeholder="검색어를 입력하세요"/>
        </li>
		<li>
			<a href="javascript:fn_egov_selectList();" class="btn color1">
				<spring:message code="button.search" />
			</a>
		</li>
	</ul>
</div>
<table>
	<colgroup>
		<col style="width: 10%;">
		<col style="width: auto;">
		<col style="width: 10%;">
		<col style="width: 15%;">
		<col style="width: 10%;">
	</colgroup>
	<thead>
		<tr>
		    <th>번호</th>
		    <th>제목</th>
		    <th>작성자</th>
		    <th>날짜</th>
		    <th>조회수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="board" items="${boardList}" varStatus="status">
	    <tr>
	        <td>
	        	${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}
	        </td>
	        <td class="tl">
	        	<a href="javascript:fn_egov_select('<c:out value="${board.idx}"/>')" class="ellipsis">
	        		<c:out value="${board.title}" />
	        	</a>
	        </td>
	        <td><c:out value="${board.username}" /></td>
	        <td><fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd" /></td>
	        <td>${board.viewCount}</td>
	    </tr>
	</c:forEach>

	</tbody>
</table>

<div class="btn_group mt20">
	<div id="paging" class="paging type2">
		<ui:pagination paginationInfo="${paginationInfo}" type="text" jsFunction="fn_egov_link_page" />
		<form:hidden path="pageIndex" />
	</div>
	
	<a href="javascript:fn_egov_addView();" class="btn small color1 posa posr"><spring:message code="button.create" /></a>
</div>


</form:form>

</div>
</body>
</html>


