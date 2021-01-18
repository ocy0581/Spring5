
function imgSize(){
    var width_size = $(window).width();
    if(width_size < 1100){
        $('#mainImg').width(width_size);
        $('#mainImg ul#slider').width(width_size);
        $('#mainImg ul#slider li').width(width_size);
        $('#mainImg ul#slider li img').width(width_size);
        var height_size = width_size / 11 * 6;
        $('#mainImg').height(height_size);
        $('#mainImg ul#slider').height(height_size);
        $('#mainImg ul#slider li').height(height_size);
        $('#mainImg ul#slider li img').height(height_size);
    }
}

$(window).resize(function(){
    if($(window).width() < 1100){
        imgSize();  
        resetImg();
    }
})


