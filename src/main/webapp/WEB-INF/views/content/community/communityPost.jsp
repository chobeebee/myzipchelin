<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="keywords" content="레시피, 혼밥, 요리">
    <meta name="description" content="요리에 관한 모든 정보를 한 번에 보세요">

    <meta property="og:type" content="website">
    <meta property="og:title" content="집슐랭">
    <meta property="og:description" content="요리에 관한 모든 정보를 한 번에 보세요">
    <meta property="og:image" content="">
    <meta property="og:url" content="">

    <!-- favicon-->
    <link rel="shortcut icon" type="text/css" href="">
    <link rel="icon" type="text/css" href="">

    <!-- google icon CDN -->
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- basic CSS -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/base.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/common.css">

    <!-- plugin CSS -->
    <link rel="stylesheet" href="/front/css/swiper-bundle.css">

    <!-- page CSS -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/community.css">

    <title>나만의 레시피</title>
</head>
<body>
    <!-- 헤더 -->
    <header class="header">
        <jsp:include page="/WEB-INF/views/layout/header.jsp"/>
    </header>

    <!-- 메인 -->
    <main>
        <section class="post-section">
            <article class="post-article">
                <div>
                    <div class="post-top">
                        <h1 class="pageTitle">${myrecipe.myreTitle}</h1>
                        <div class="post-info">
                            <div class="comment-profile">
                                <img class="comment-img" src="${contextPath}/resource/images/icon/profile.jpg" alt="">
                            </div>
                            <strong class="post-id">${myrecipe.memberId}</strong>
                            <span class="postdate">
                                <fmt:parseDate value="${myrecipe.myreDate}" pattern="yyyy-MM-dd'T'HH:mm" var="parseDateTime" />
                                <fmt:formatDate pattern="yyyy-MM-dd" value="${parseDateTime}" />
                            </span>
                            <div class="comment_writeracc">
                                <button class="comment_update">
                                    <a href="${contextPath}/community/myrecipe/update/${myrecipe.myreNum}">수정</a>
                                </button>
                                <button class="comment_delete">
                                    <a href="${contextPath}/community/myrecipe/delete/${myrecipe.myreNum}">삭제</a>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="post-content">
                        <p class="content">${myrecipe.myreContent}</p><br>
                    </div>
                    <a href="${contextPath}/community/myrecipe">
                        <div class="btnGroup lg btn_list">
                            <button class="btnBgGray btn_list">목록</button>
                        </div>
                    </a>
                </div>
            </article>
        </section>
    </main>

    <!-- 푸터 -->
    <footer id="footer">
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
    </footer>

    <!-- js -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="${contextPath}/resource/js/common.js"></script>
    <script src="${contextPath}/resource/js/community.js"></script>
</body>
</html>