<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="headerContainer">

    <a class="logo" href="${contextPath}/">
        <img src="${contextPath}/resource/images/logo/logo.png"/>
    </a>
    <div class="menu">
        <a class="menu_list" href="${contextPath}/recipe/list">레시피</a>
        <a class="menu_list" href="${contextPath}/community/list">커뮤니티</a>
        <a class="menu_list" href="${contextPath}/notice">공지사항</a>
    </div>
    <div class="right_menu">
        <a class="iconBox" href="${contextPath}/search">
            <span class="material-symbols-outlined">search</span>
        </a>
        <a href="${contextPath}/member/login">로그인</a>
        <a href="${contextPath}/member/join">회원가입</a>
        <%-- 비로그인 사용자
        <sec:authorize access="isAnonymous()">
            <a href="${contextPath}/member/login">로그인</a>
            <a href="${contextPath}/member/join">회원가입</a>
        </sec:authorize> --%>

        <%-- 로그인 사용자
        <sec:authorize access="isAuthenticated()">
            <a href="${contextPath}/member/logout">로그아웃</a>
            <a href="${contextPath}/mypage/mypage">마이페이지</a>
        </sec:authorize> --%>
    </div>
</div>