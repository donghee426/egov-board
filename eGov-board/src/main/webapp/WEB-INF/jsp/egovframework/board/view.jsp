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
    <title>게시글 보기</title>
    
    <link rel="stylesheet" href="<c:url value='/css/egovframework/style.css'/>" />

    <script type="text/javascript">
        function fn_egov_selectList() {
            document.viewForm.action = "<c:url value='/boardList.do'/>";
            document.viewForm.submit();
        }

        function fn_egov_updateView() {
            document.viewForm.action = "<c:url value='/update.do'/>";
            document.viewForm.submit();
        }

        function fn_egov_delete() {
            if (confirm("정말 삭제하시겠습니까?")) {
                document.viewForm.action = "<c:url value='/deleteProc.do'/>";
                document.viewForm.submit();
            }
        }
    </script>
</head>
<body>
<div id="container">
<h1 class="tc">게시글 보기</h1>

<form:form modelAttribute="board" name="viewForm" id="viewForm" method="post">

<input type="hidden" name="idx" value="${board.idx}" />

<table class="td_tl">
    <colgroup>
        <col style="width: 20%;">
        <col style="width: auto;">
        <col style="width: 20%;">
        <col style="width: auto;">
    </colgroup>
    <tbody>
        <tr>
            <th>제목</th>
            <td colspan="3"><c:out value="${board.title}" /></td>
        </tr>
        <tr>
            <th>작성ID</th>
            <td><c:out value="${board.userid}" /> (<c:out value="${board.userid}" />)</td>
            <th>작성자</th>
            <td><c:out value="${board.username}" /> (<c:out value="${board.userid}" />)</td>
        </tr>
        <tr>
            <th>작성일</th>
            <td><fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
            <th>조회수</th>
            <td><c:out value="${board.viewCount}" /></td>
        </tr>
        <tr>
            <th>내용</th>
            <td colspan="3">
            	<pre style="white-space: pre-wrap; min-height:200px"><c:out value="${board.content}" /></pre>
            </td>
        </tr>
        <tr>
        	<th>첨부파일</th>
        	<td colspan="3"></td>
        </tr>        
        <tr>
        	<th>공개여부</th>
        	<td colspan="3"><c:out value="${board.useYn}" /></td>
        </tr>
    </tbody>
</table>

<div class="btn_group mt20 tr">
    <a href="javascript:fn_egov_selectList();" class="btn color1 ">목록</a>
    <a href="javascript:fn_egov_updateView();" class="btn color2 ">수정</a>
    <a href="javascript:fn_egov_delete();" class="btn red ">삭제</a>
</div>

</form:form>

</div>
</body>
</html>
