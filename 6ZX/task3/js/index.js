$(function(){
    var mySwiper = new Swiper ('.swiper-container', {
        direction: 'horizontal',//水平滑动
        loop: true, //循环播放
        autoplay: 2000, //自动播放
        autoplayDisableOnInteraction: false, //用户操作swiper之后，是否禁止autoplay。默认为true：停止。
        pagination: '.swiper-pagination'  // 分页器
    });
});