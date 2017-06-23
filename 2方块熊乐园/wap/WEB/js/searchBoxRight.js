//搜索 (category.html, profile.html不需要此js，需要单独写)
localStorage.removeItem("searchKeyWord");
$('.searchBox .search .searchRight .searchImg').unbind('click').click(function () {
    var searchKeyWord = $.trim($('.searchBox .search .searchRight .ipt').val());
    localStorage.setItem('searchOrTab',"search");
    localStorage.setItem('searchKeyWord',searchKeyWord);
    window.location.href = "category.html";
});

//点击发布
$('.searchBox .search .searchRight .searchBtn').unbind('click').click(function () {
    window.location.href = "publish.html";
});