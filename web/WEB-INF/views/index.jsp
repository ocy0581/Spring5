<%--
  Created by IntelliJ IDEA.
  User: 오차영
  Date: 2021-01-13
  Time: 오후 1:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/index.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>"/>
<%--https://youtu.be/ee9-hN5zb0k--%>
  </head>
  <body>
        <article>
            <div class="wrapper">
                <div>
                    <iframe id="ytplayer" type="text/html" width="640" height="360"
                    src="https://www.youtube.com/embed/BFwL5jlNNzc" frameborder="0">
                    </iframe>
                </div>
            </div>
            <script>
                // Load the IFrame Player API code asynchronously.
                var tag = document.createElement('script');
                tag.src = "https://www.youtube.com/player_api";
                var firstScriptTag = document.getElementsByTagName('script')[0];
                firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

                // Replace the 'ytplayer' element with an <iframe> and
                // YouTube player after the API code downloads.
                var player;
                function onYouTubePlayerAPIReady(playerid) {
                  player = new YT.Player('ytplayer', {
                    height: '360',
                    width: '640',
                    videoId: 'BFwL5jlNNzc'
                  });
                }
              </script>
        </article>
<%--    ${userlist.get()}--%>
  <c:forEach items="${userList}" var="user">
      <div>
        <p>
          ${user.toString()}
          <hr>
        </p>
      </div>
  </c:forEach>
  <c:forEach var="accessory" items="${accessoryList}">
      <p>
        ${accessory.toString()}
      </p>
  </c:forEach>
  <div class="tmp_box">

  </div>
  <div class="control-box">
    control-box
  </div>
  <div class="toggle-button">
    tmp
  </div>
  </body>
</html>
