
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shine Classic</title>
    <link rel="shortcut icon" href="<c:url value="/resources/img/title.png" />" type="image/x-icon">
    <link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/product.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/map.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/slider.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/intro.css"/>">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/color-thief/2.3.0/color-thief.min.js"></script>
    
    <script src="<c:url value="/resources/js/includeHTML.js"/>"></script>
    <script src="<c:url value="/resources/js/img_resize.js"/>"></script>
</head>

<body>
    <header >
        <%@ include file="header.jsp"%>
    </header>
    <section>
        <article>
            <div id="color-wrapper">

                <div class="wrapper">
                    <div id="mainImg">
                        <ul id="slider">
                            <li>
                                <a href="/subPage.html">
                                    <img src="<c:url value="/resources/img/main/main1.jpg"/>" alt="">

                                    <!-- php나 spring같은 서버와 연동 가능한 페이지를 이용해서 a태그와 img를 -->
                                    <!-- 변형시킨다. 이번 과제에서는 구현하지 않았습니다.-->
                                </a>
                            </li>
                            <li>
                                <div>
                                </div>
                                <a href="/subPage.html">
                                    <img src="<c:url value="/resources/img/main/main2.jpg"/>" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="/subPage.html">
                                    <img src="<c:url value="/resources/img/main/main3.jpg"/>" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="/subPage.html">
                                    <img src="<c:url value="/resources/img/main/main4.jpg"/>" alt="">
                                </a>
                            </li>
                        </ul>

                    </div>
                </div>
            </div>

            <div class="wrapper">
                <div id="counter"></div>
                <div id="pagination-wrap">
                    <ul>
                    </ul>
                </div>
                <div class="buttonList">
                    <div class="button">
                        <div class="out_circle_small">
                            <div class="in_circle_small" id="leftSign">
                            </div>
                        </div>

                    </div>
                    <div class="button">
                        <div class="out_circle">
                            <!-- <div class="in_circle playImg" id=""> -->
                            <div class="in_circle stopImg" id="">
                                <!-- <div class="triangle-right"></div> -->
                            </div>
                        </div>
                    </div>
                    <div class="button">
                        <div class="out_circle_small">
                            <div class="in_circle_small" id="rightSign">
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </article>
        <script>
            imgSize();
        </script>
        <div class="wrapper">


            <div class="title">BEST PRODUCT</div>
            <article id='product'>
                <div class="productContainer">
                    <div class="borderMargin sideContainer ">
                        <div class="borderPadding borderMargin upProduct  ">
                            <a href="/subPage.html">
                                <div class="productImg">
                                    <img src="<c:url value="/resources/img/product/chandelier.jpg"/>" alt="">
                                </div>
                                <div class="product">14k 샹들리에 귀걸이</div>
                                <div class="productPrice">310,000</div>
                            </a>
                        </div>
                        <div class="borderPadding borderMargin downProduct  ">

                            <a href="/subPage.html">
                                <div class="productImg">
                                    <img src="<c:url value="/resources/img/product/chuHeart.jpg"/>" alt="">
                                </div>
                                <div class="product">14k/18k 츄하트 귀걸이</div>
                                <div class="productPrice">310,000</div>
                            </a>
                        </div>
                    </div>
                    <div class="borderMargin centerContainer ">
                        <div class="borderPadding borderMargin centerProduct ">
                            <a href="/subPage.html">
                                <div class="centerProductImg">
                                    <img src="<c:url value="/resources/img/product/Glossy.jpg"/>" alt="">
                                </div>
                                <div class="product centerProductName">14k/18k 글로시 목걸이</div>
                                <div class="productPrice centerProductPrice">310,000</div>
                            </a>
                        </div>
                    </div>
                    <div class="borderMargin sideContainer ">
                        <div class="borderPadding borderMargin upProduct  ">
                            <a href="/subPage.html">
                                <div class="productImg">
                                    <img src="<c:url value="/resources/img/product/Hera.jpg"/>" alt="">
                                </div>
                                <div class="product">14k/18k 헤라 귀걸이</div>
                                <div class="productPrice">310,000</div>
                            </a>
                        </div>
                        <div class="borderPadding borderMargin downProduct  ">
                            <a href="/subPage.html">
                                <div class="productImg">
                                    <img src="<c:url value="/resources/img/product/sugar.jpg"/>" alt="">
                                </div>
                                <div class="product">14k/18k 슈가 팔찌</div>
                                <div class="productPrice">310,000</div>
                            </a>
                        </div>

                    </div>
                </div>
            </article>
        </div>
        <article>
            <div class="title">INTRO</div>
            <div class="container">
                <div class="intro">
                    <div class="wrapper">
                        <div class="introWrapper">
                            <div class="introText">
                                <p class="text">
                                    다양한 디자인과 최고의 서비스
                                </p>
                            </div>
                            <div class="introImg">
                                <img src="<c:url value="/resources/img/store.jpg"/>" alt="">
                            </div>
                        </div>
                        <div class="introWrapper">
                            <div class="introImg">
                                <img src="/resources/img/store_in1.jpg" alt="">
                            </div>
                            <div class="introText">
                                <p class="text">
                                    600개 이상의 다양한 제품들과 빠른 예약 시스템
                                </p>
                            </div>
                        </div>
                        <div class="introWrapper">
                            <div class="introText">
                                <p class="text">
                                    전문 코디네이터를 통한 제품 상담
                                </p>
                            </div>
                            <div class="introImg">
                                <img src="/resources/img/store_in2.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </article>
        <div class="wrapper">
            <article id="mapWrapper">
                <div class="title">Map & Directions</div>
                <div id="map"> </div>
            </article>

        </div>

    </section>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</body>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=p0c3nb4m3c"></script>

<script src="<c:url value="/resources/js/slider.js"/>"></script>
<script src="<c:url value="/resources/js/map.js"/>"></script>
<script>
    $('#mainImg ul#slider li').width($('#mainImg').width());
    $('#mainImg ul#slider li img').width($('#mainImg').width());
    imgToBackgroundColor(0);

    var mapOptions = {
        center: new naver.maps.LatLng('36.999062926815945', '127.11176104769376'),
        zoom: 16,
        scaleControl: false,
        logoControl: true,
        mapDataControl: true,
        zoomControl: false,

    };

    var map = new naver.maps.Map('map', mapOptions);
    var marker = new naver.maps.Marker({
        map: map,
        position: mapOptions.center
    })
    // $('#color-wrapper').css('background-color','red');
    var HOME_PATH = window.HOME_PATH || '.';

    var contentString = [
        '<div class="iw_inner">',
        '<a href="https://map.naver.com/v5/search/%EC%83%A4%EC%9D%B8%ED%81%B4%EB%9E%98%EC%8B%9D/place/1639792609?c=14149638.1023532,4438993.2316762,15,0,0,0,dh&placePath=%3F%2526" target="_blank" rel="noopener noreferrer">',
        ' <div class="mapInner"',
        '   <i><h3 class="mapName">Shine Classic</h3></i>',
        '   <p>평택시 비전5로 10 가로수길  <br>센트럴돔 1119호</p>',
        '   <p>전화번호 :  0507-1453-5557',
        '   </p>',
        '</div>',
        '</a>',
        '</div>'
    ].join('');

    var infowindow = new naver.maps.InfoWindow({
        content: contentString
    });

    naver.maps.Event.addListener(marker, "click", function (e) {
        if (infowindow.getMap()) {
            infowindow.close();
        } else {
            infowindow.open(map, marker);
        }
    });

    infowindow.open(map, marker);
    $('.storeImg').height('200');


    $('#mainImg ul#slider li').width($('#mainImg').width());
    $('#mainImg ul#slider li img').width($('#mainImg').width());
    $('#mainImg ul').css('transition', 'all 0.3s cubic-bezier(1,.01,.32,1)');
    imgToBackgroundColor(0);
</script>

</html>