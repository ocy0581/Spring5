


//current position
var pos = 0;
//number of slides
var totalSlides = $('#mainImg ul li').length;
//get the slide width
var sliderWidth = $('#mainImg').width();
console.log(sliderWidth);
// var tmp = autoSlider;
var tmppos = 1;
function resetImg() {
    sliderWidth = $('#mainImg').width();
    $('#mainImg ul#slider').width(sliderWidth * totalSlides);
    $('#mainImg ul#slider').css('left', -(sliderWidth * pos));
}

var play_stop = $('.in_circle');
$(document).ready(function () {

    $('#mainImg ul#slider').width(sliderWidth * totalSlides);
    var autoSlider = setInterval(slideRight, 4000);

    $('#rightSign').click(function () {
        slideRight();
    });
    $('#leftSign').click(function () {
        slideLeft();
    });
    $('.in_circle').click(function () {
        if (play_stop.hasClass('stopImg')) {
            play_stop.addClass('playImg');
            play_stop.removeClass('stopImg');
            clearInterval(autoSlider);
        } else {
            play_stop.addClass('stopImg');
            play_stop.removeClass('playImg');
            autoSlider = setInterval(slideRight, 4000);
        }
    });
    imgToBackgroundColor(0);
    countSlides();
});
function slideLeft() {
    pos--;
    if (pos == -1) { pos = totalSlides - 1; }
    $('#mainImg ul#slider').css('left', -(sliderWidth * pos));

    imgToBackgroundColor(pos);
    //*> optional
    countSlides();
}

function slideRight() {
    pos++;
    if (pos == totalSlides) { pos = 0; }
    $('#mainImg ul#slider').css('left', -(sliderWidth * pos));

    imgToBackgroundColor(pos);
    //*> optional 
    countSlides();
}




/************************
 //*> OPTIONAL SETTINGS
************************/
function countSlides() {
    $('#counter').html(pos + 1 + ' / ' + totalSlides);
}


var colorThief = new ColorThief();

function imgToBackgroundColor(param) {
    // $('#slider > li:nth-child(1)').width()
    // pos = 1
    if($(window).width() > 1100){
        tmppos = param+1;   
        var color = colorThief.getColor($('#slider > li:nth-child('+tmppos+')  img')[0]);
        $('#color-wrapper').css('background-color','rgb('+color+')');  
    }
}