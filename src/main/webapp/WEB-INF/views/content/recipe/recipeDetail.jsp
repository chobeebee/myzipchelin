<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
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
    <link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/recipe.css">

    <!-- plugin CSS -->
    <link rel="stylesheet" href="${contextPath}/resource/css/swiper-bundle.css">

    <title>집슐랭</title>
</head>
<body>
	<!-- 헤더 -->
    <header class="header">
        <jsp:include page="/WEB-INF/views/layout/header.jsp"/>
    </header>

	<main>
		<div id="main">
			<section class="recipe_detail">
				<div class="recipe_info_container">
					<div class="recipe_title_box">
                        <h6 class="recipe_title">${recipe.recTitle}</h6>
                        <p class="recipe_sub_title">${recipe.recSubt}</p>
                    </div>

                    <img class="recipe_img" src="${contextPath}/resource/images/food/sample.jpg" alt="">

					<div class="recipe_ingredient_box">
                        <p>재료</p>
                        <table class="ingredient_table">
                            <thead>
                                <tr>
                                    <th class="mate_name">필수 준비재료</th>
                                    <th class="mate_name">선택 재료</th>
                                    <th class="mate_name">준비 도구</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="recipe_mate recipe_materials">
                                    <td class="mates">${recipe.recIngreMain}</td>
                                    <td class="mates">${recipe.recIngreSub}</td>
                                    <td class="mates">${recipe.recTool}</td>
                                </tr>
                            </tbody>
                        </table>

                        <div class="recipe_description_box">${recipe.recDesc0}</div>
					</div>
				</div> <!--/.recipe_info_container-->

				<!--반복 컨테이너-->
				<div class="recipe_step_box clearfix">
					<img class="recipe_img" src="${contextPath}/resource/images/food/${recipe.recImg1}.jpg" alt="레시피 이미지">
					<div class="recipe_description_box">
						<div class="step">step1.</div>
						${recipe.recDesc1}
					</div>
				</div>
				<c:if test="${recipe.recDesc2 != null}">
					<div class="recipe_step_box clearfix">
						<img class="recipe_img" src="${contextPath}/resource/images/food/${recipe.recImg2}" alt="레시피 이미지">
						<div class="recipe_description_box last">
							<div class="step">step2.</div>
							${recipe.recDesc2}
						</div>
					</div>
				</c:if>
				<c:if test="${recipe.recDesc3 != null}">
					<div class="recipe_container clearfix">
						<img class="recipe_img" src="${contextPath}/resource/images/food/${recipe.recImg3}" alt="레시피 이미지">
						<div class="recipe_description_box last">
							<div class="step">step3.</div>
							${recipe.recDesc3}
						</div>
					</div>
				</c:if>

				<div class="btnGroup lg btn_list">
                    <button class="btnBgGray btn_list" onclick="location.href='${contextPath}/recipe/recipe'">목록</button>
                </div>
			</section>
		</div>
	</main>

	<!-- 푸터 -->
    <footer id="footer">
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
    </footer>

	<!-- js -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="${contextPath}/resource/js/common.js"></script>
	<script src="${contextPath}/resource/js/guide.js"></script>
</body>
</html>