<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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

    <!-- basic CSS -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/base.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/common.css">

    <!-- page CSS -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/user.css">

    <!-- plugin CSS -->
    <link rel="stylesheet" href="${contextPath}/resource/css/swiper-bundle.css">

    <title>아이디/비밀번호 찾기</title>
</head>
<body id="find_body">
    <!-- 헤더 -->
    <header class="header">
        <jsp:include page="/WEB-INF/views/layout/header.jsp"/>
    </header>

    <main id="find_section">
        <h3 id="find_target" class="pageTitle">아이디찾기</h3>
        <ul class="tabGroup">
            <li id="find_box_id"><a href="#" class="tab active" id="find_id_button" data-tab="">아이디찾기</a></li>
            <li id="find_box_pwd"><a href="#" class="tab" id="find_pwd_button" data-tab="">비밀번호찾기</a></li>
        </ul>

        <div class="tabContWrap">
            <div id="tabFindId">
                <form action="/member/find/id" method="post" class="find_sign_up_form">
                    <div class="find_input_area">
                        <div class="find_input_email find_input_item">
                            <label class="sign_left_label">이메일</label>
                            <div class="sign_input_box">
                                <input path="findIdEmail" type="email" class="findInput" placeholder="이메일" />
                            </div>
                        </div>
                        <div class="find_input_name find_input_item">
                            <label class="sign_left_label">이름</label>
                            <div class="sign_input_box">
                                <input path="findIdName" type="text" class="findInput" placeholder="이름" />
                            </div>
                        </div>

                        <div>
                            <input value="아이디 찾기" type="submit" class="btnBg find_do_find">
                        </div>
                    </div>
                </form>
            </div>

            <div id="tabFindPwd">
                <form action="/member/find/pwd" method="post" class="find_sign_up_form">
                    <div class="find_input_area find_input">
                       <div class="find_desc">
                           <h3>회원님의 정보는 암호화 되어 운영진도 알 수 없습니다!</h3>
                           <p>기존 비밀번호는 초기화 된 후 이메일로 새 비밀번호가 발송됩니다.</p>
                       </div>
                        <div class="find_input_id find_input_item">
                            <label class="sign_left_label">아이디</label>
                            <div class="sign_input_box">
                                <input type="text" class="findInput" id="findId" placeholder="아이디" />
                            </div>
                        </div>
                        <div class="find_input_email find_input_item">
                            <label class="sign_left_label">이메일</label>
                            <div class="sign_input_box">
                                <input type="email" class="findInput" placeholder="이메일" />
                            </div>
                        </div>
                        <div class="find_input_name find_input_item">
                            <label class="sign_left_label">이름</label>
                            <div class="sign_input_box">
                                <input type="text" class="findInput" placeholder="이름" />
                            </div>
                        </div>

                        <div>
                            <input value="비밀번호 찾기" type="submit" class="btnBg find_do_find">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </main>

    <!-- 푸터 -->
    <footer id="footer">
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
    </footer>

    <!-- js -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        <c:choose>
            <c:when test="${pwdError != null}">
                $(document).ready(function () {
                    $("#tabFindPwd").show();
                    $("#tabFindId").hide();
                    $("#find_id_button").removeClass('active');
                    $("#find_pwd_button").addClass('active');
                });
            </c:when>
            <c:otherwise>
                $(document).ready(function () {
                    $("#tabFindPwd").hide();
                    $("#tabFindId").show();
                    $("#find_id_button").addClass('active');
                    $("#find_pwd_button").removeClass('active');
                });
            </c:otherwise>
        </c:choose>

        $("#find_id_button").click(function () {
            $("#tabFindPwd").hide();
            $("#tabFindId").show();
            $("#find_id_button").addClass('active');
            $("#find_pwd_button").removeClass('active');
        });

        $("#find_pwd_button").click(function () {
            $("#tabFindPwd").show();
            $("#tabFindId").hide();
            $("#find_id_button").removeClass('active');
            $("#find_pwd_button").addClass('active');
        });
    </script>
    <script src="${contextPath}/resource/js/common.js"></script>
    <script src="${contextPath}/resource/js/user.js"></script>
</body>
</html>