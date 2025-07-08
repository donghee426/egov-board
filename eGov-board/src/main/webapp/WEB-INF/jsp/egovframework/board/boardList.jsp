<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="styleSheet" href="style.css">
<h1>게시판 CRUD</h1>
<table>
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
	        <td><c:out value="${board.title}" /></td>
	        <td><c:out value="${board.username}" /></td>
	        <td><fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd" /></td>
	        <td>${board.viewCount}</td>
	    </tr>
	</c:forEach>

	</tbody>
</table>