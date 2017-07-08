//搜索 (category.html, profile.html不需要此js，需要单独写)
localStorage.removeItem("searchKeyWord");
$('.searchBox .search .searchRight .searchImg').unbind('click').click(function () {
    var searchKeyWord = $.trim($('.searchBox .search .searchRight .ipt').val());
    if(searchKeyWord != ''){
        localStorage.setItem('searchOrTab',"search");
        localStorage.setItem('searchKeyWord',searchKeyWord);
        window.location.href = "category.html?searchOrTab=search&searchKeyWord="+searchKeyWord;
    //    window.location.href = "category.html?searchOrTab=tab&cid="+cid;
    }else{
        //alert('请输入搜索关键词！');
    }
});

//点击发布
$('.searchBox .search .searchRight .searchBtn').unbind('click').click(function () {
    window.location.href = "publish.html";
});