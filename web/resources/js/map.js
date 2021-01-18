

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