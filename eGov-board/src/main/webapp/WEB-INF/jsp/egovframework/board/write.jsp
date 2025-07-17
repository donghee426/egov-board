<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<% request.setAttribute("pageTitle", "게시글 등록"); %>
<%@ include file="/inc/header.jsp" %>

<h1>${boardDTO.idx == null ? '게시글 등록' : '게시글 수정'}</h1>
<form:form modelAttribute="boardDTO" method="post" action="${pageContext.request.contextPath}${boardDTO.idx == null ? '/writeProc.do' : '/updateProc.do'}">
	<input type="hidden" name="idx" value="${boardDTO.idx}" />
    <table>
        <colgroup>
            <col style="width:20%">
            <col style="width:80%">
        </colgroup>
        <tbody>
            <tr>
                <th>작성자ID</th>
                <td><form:input path="userid" cssClass="txt" readonly="${boardDTO.idx != null}" /></td>
            </tr>
            <tr>
                <th>작성자 이름</th>
                <td><form:input path="username" cssClass="txt" readonly="${boardDTO.idx != null}" /></td>
            </tr>
            <tr>
                <th>제목</th>
                <td><form:input path="title" cssClass="txt" /></td>
            </tr>
            <tr>
                <th>내용</th>
                <td><form:textarea path="content" cssClass="txt" rows="10" cols="50" /></td>
            </tr>
            <tr>
                <th>사용 여부</th>
                <td class="tl">
                    <form:radiobutton path="useYn" value="Y" label="사용" />
                    <form:radiobutton path="useYn" value="N" label="미사용" />
                </td>
            </tr>
        </tbody>
    </table>

    <div class="btn_group mt20">
         <button type="submit" class="btn color1">${boardDTO.idx == null ? '등록하기' : '수정하기'}</button>
        <a href="<c:url value='/boardList.do'/>" class="btn">목록</a>
    </div>
</form:form>

<%@ include file="/inc/footer.jsp" %>
