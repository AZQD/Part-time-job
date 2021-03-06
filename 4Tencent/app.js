
/*刘超杰批阅：
* jquery是优秀的Javascrīpt框架, 一般我们采用这种方式书代码：
* $(document).ready(function(){
 // 在这里写你的代码...
 });
 这种方式意思是在DOM加载完成时运行的代码，是初始化jquery对象的惯用方法，从而提高用户体验。
* */

// 用户名称 - 修改为自己的名称
var userName = 'Lu仔酱';
// 需要渲染的页面的数据
// 朋友圈页面的数据
var data = [{
    user: {
        name: '阳和',
        avatar: './img/avatar2.png'
    },
    content: {
        type: 0, // 多图片消息
        text: '华仔真棒，新的一年继续努力！',
        pics: ['./img/reward1.png', './img/reward2.png', './img/reward3.png', './img/reward4.png'],
        timeString: '3分钟前',
    },
    reply: {
        hasLiked: false,
        likes: ['Guo封面', '源小神'],
        comments: [{
            author: 'Guo封面',
            text: '你也喜欢华仔哈！！！'
        }, {
            author: '喵仔zsy',
            text: '华仔实至名归哈'
        }]
    }
}, {
    user: {
        name: '伟科大人',
        avatar: './img/avatar3.png'
    },
    content: {
        type: 1, // 分享消息
        text: '全面读书日',
        pics: [],
        share: {
            pic: '',
            text: '飘洋过海来看你'
        },
        timeString: '50分钟前',
    },
    reply: {
        hasLiked: false,
        likes: ['阳和'],
        comments: []
    }
}, {
    user: {
        name: '深圳周润发',
        avatar: './img/avatar4.png'
    },
    content: {
        type: 2, // 单图片消息
        text: '很好的色彩',
        pics: ['http://coding.imweb.io/img/default/k-2.jpg'],
        timeString: '一小时前',
    },
    reply: {
        hasLiked: false,
        likes: [],
        comments: []
    }
}, {
    user: {
        name: '喵仔zsy',
        avatar: './img/avatar5.png'
    },
    content: {
        type: 3, // 无图片消息
        text: '以后咖啡豆不敢浪费了',
        pics: [],
        timeString: '2个小时前',
    },
    reply: {
        hasLiked: false,
        likes: [],
        comments: []
    }
}];


// 页面元素
var $momentsList = $('.moments-list');

/**
 * 渲染函数：点赞列表
 * @param {Array} likes 点赞名称数组
 */
function likesHtmlTpl(likes) {
    if (!likes.length) {
        return '';
    }
    var htmlText = ['<div class="reply-like"><i class="icon-like-blue"></i>'];
    if (likes.length) {
        htmlText.push(' <a class="reply-who" href="#">' + likes[0] + '</a>');
    }
    // 后面的前面都有逗号

    /*
    * 刘超杰批阅：
    * 普通的for循环，先保存变量，然后再进行for循环遍历，避免每次都要计算likes数组的长度：
    * var len = likes.length;
     for(var i=0; i<len.length; i++){

     }
    * */

    for (var i = 1, len = likes.length; i < len; i++) {
        htmlText.push('，<a class="reply-who" href="#">' + likes[i] + '</a>');
    }
    htmlText.push('</div>');
    return htmlText.join('');
}
/**
 * 渲染函数：评论内容
 * @param {Array} comments 评论信息对象数组
 */
function commentsHtmlTpl(comments) {
    if (!comments.length) {
        return '';
    }
    var htmlText = ['<div class="reply-comment">'];

    /*
    * 刘超杰批阅：
    * for循环规则，同上；
    * */

    for (var i = 0, len = comments.length; i < len; i++) {
        var comment = comments[i];
        htmlText.push('<div class="comment-item"><a class="reply-who" href="#">' + comment.author + '</a>：' + comment.text + '</div>');
    }
    htmlText.push('</div>');
    return htmlText.join('');
}
/**
 * 渲染函数：消息回复
 * @param {Array} comments 评论信息对象数组
 */
function replyTpl(replyData) {
    var htmlText = [];
    htmlText.push('<div class="reply-zone">');
    // 点赞模板
    htmlText.push(likesHtmlTpl(replyData.likes));
    // 评论模块
    htmlText.push(commentsHtmlTpl(replyData.comments));
    htmlText.push('</div>');
    return htmlText.join('');
}
/**
 * 渲染函数：多张图片
 */
function multiplePicTpl(pics) {
    var htmlText = [];
    htmlText.push('<ul class="item-pic">');

    /*
     * 刘超杰批阅：
     * for循环规则，同上；
     * */

    for (var i = 0, len = pics.length; i < len; i++) {

        /*
         * 刘超杰批阅：
         * 语句结束之后，加上分号；
         * htmlText.push('<li class="pic-wrap"><img class="pic-item" src="' + pics[i] + '"></li>');
         *虽然是细节，并不影响js引擎解析代码，但是还是要养成良好的习惯比较好。
         * */

        htmlText.push('<li class="pic-wrap"><img class="pic-item" src="' + pics[i] + '"></li>')
    }
    htmlText.push('</ul>');
    return htmlText.join('');
}
/**
 * 循环：消息体
 * 生成的html文本可参考 message.html文件
 * @param {Object} messageData 对象
 */
function messageTpl(messageData) {
    var user = messageData.user;
    var content = messageData.content;
    var htmlText = [];

    /*
     * 刘超杰批阅：
     * 函数里面用到了多个数组的push方法，把html代码字符串拼接到一起之后，最终一起push比较好；
     * 如：
         var messageStr = '<div class="moments-item" data-index="0">' +
            'messageContent' +
         '</div>';
         htmlText.push(messageStr);
     * */

    htmlText.push('<div class="moments-item" data-index="0">');
    // 消息用户头像
    htmlText.push('<a class="item-left" href="#">');
    htmlText.push('<img src="' + user.avatar + '" width="42" height="42" alt=""/>');
    htmlText.push('</a>');
    // 消息右边内容
    htmlText.push('<div class="item-right">');
    // 消息内容-用户名称
    htmlText.push('<a href="#" class="item-name">' + user.name + '</a>');
    // 消息内容-文本信息
    htmlText.push('<p class="item-msg">' + content.text + '</p>');
    // 消息内容-图片列表 （目前只支持多图片消息，需要补充完成其余三种消息展示）
    htmlText.push(multiplePicTpl(content.pics));
    // 消息时间和回复按钮
    htmlText.push('<div class="item-ft">');
    htmlText.push('<span class="item-time">' + content.timeString + '</span>');
    htmlText.push('<div class="item-reply-btn">');
    htmlText.push('<span class="item-reply"></span>');
    htmlText.push('</div></div>');
    // 消息回复模块（点赞和评论）
    htmlText.push(replyTpl(messageData.reply));
    htmlText.push('</div>');
    return htmlText.join('');
}

/**
 * 页面渲染函数：render
 */
function render() {
    // TODO: 目前只渲染了一个消息（多图片信息）,需要展示data数组中的所有消息数据。
    // var messageHtml = messageTpl(data[0]);
    //遍历，添加data数组中的所有消息数据；
    data.forEach(function (item) {
        $momentsList.append(messageTpl(item));
    })
}
/**
 * 页面绑定事件函数：bindEvent
 */
function bindEvent() {
    // TODO: 完成页面交互功能

    /*
     * 刘超杰批阅：
     * 建议命名采用驼峰命名：var curLikeList = null;
     * */

    var curlikelist = null;

    /*
     * 刘超杰批阅：
     * $.fn是指jQuery的命名空间，加上fn上的方法及属性，会对jquery实例每一个有效。
     * 1.如果需要对jQuery的方法或属性进行扩展，建议单独创建一个js文件，并在引入jQuery库之后引入；
     * 2.jQuery库中已经有toggle方法，无需自定义或更改toggle方法，如果需要扩展其他jQuery方法，切记不要与已有jQery库中的方法重名。
     * */

    //toggle功能
    $.fn.toggle = function (fn, fn2) {
        var args = arguments, guid = fn.guid || $.guid++, i = 0,
            toggle = function (event) {
                var lastToggle = ( $._data(this, "lastToggle" + fn.guid) || 0 ) % i;
                $._data(this, "lastToggle" + fn.guid, lastToggle + 1);
                event.preventDefault();
                return args[lastToggle].apply(this, arguments) || false;
            };
        toggle.guid = guid;
        while (i < args.length) {
            args[i++].guid = guid;
        }
        return this.click(toggle);
    };
    //添加点赞评论
    $('.item-reply-btn').before("<div class='item-reply-likelist'><span class='item-reply-likelist-like'>点赞</span><span class='item-reply-likelist-comment'>评论</span></div>");
    //添加评论栏
    $(".page-moments").append('<div class="moments-comment"><input type="text" class="moments-comment-input"><button class="moments-comment-button">评论</button></div>');
    //将点赞评论隐藏

    /*
     * 刘超杰批阅：
     * class命名时，采用以下两种方式：
     * 1.驼峰命名：如$(".itemReplyLikeList").hide();
     * 2.连接符-：如$(".item-reply-like-list").hide();
     * */

    $(".item-reply-likelist").hide();

    /*
     * 刘超杰批阅：
     * jQuery获取DOM元素时，加上父级元素，减少遍历元素次数，如：
     * <div class="box1">
     *     <div class="box2"></div>
 *     </div>
 *     当获取box2时，这样书写： $(".box1 .box2")，而不要使用$(".box2")；
     * */

    //点击评论按钮出现 点赞/评论,且只显示一个
    $(".item-ft").on('click', '.item-reply-btn', function (e) {

        curlikelist = $(this).siblings(".item-reply-likelist");
        var index = curlikelist.index(".item-reply-likelist");
        //遍历隐藏不是当前选项的选项卡

        /*
         * 刘超杰批阅：
         * for循环规则，同上；
         * */

        for (var i = 0, len = $(".item-reply-likelist").length; i < len; i++) {
            if (i != index) {
                $(".item-reply-likelist").eq(i).hide();
            }
        }

        /*
         * 刘超杰批阅：
         * 语句结束之后，加上分号；
         curlikelist.animate({
             width: "toggle",
             height: "36px"
         }, 300);
         *虽然是细节，并不影响js引擎解析代码，但是还是要养成良好的习惯比较好。
         * */

        curlikelist.animate({
            width: "toggle",
            height: "36px"
        }, 300)
        return false;
    })

    /*
     * 刘超杰批阅：
     * jQuery获取DOM元素时，加上父级元素，减少遍历元素次数，如：
     * <div class="box1">
     *     <div class="box2"></div>
     *     </div>
     *     当获取box2时，这样书写： $(".box1 .box2")，而不要使用$(".box2")；
     * */

    //点击评论按钮出现评论栏
    $(".item-ft").on('click', '.item-reply-likelist-comment', function () {
        $(this).parent(".item-reply-likelist").animate({
            width: "toggle",
            height: "36px"
        }, 300);
    });
    $(".item-ft").on('click', '.item-reply-likelist-like', function () {
    })
    //点赞toggle
    var a = '<i>，</i><a class="reply-who" href="#">' + userName + '</a>';
    $(".item-reply-likelist-like").toggle(function () {
            $(this).text("取消");
            //如果有人赞过
            if ($(this).parents('.item-right').find('.reply-like').length == 1) {
                $(this)
                    .parents('.item-right')
                    .find('.reply-like')
                    .append(a);
            } else {
                //如果没人赞过
                $(this)
                    .parents('.item-right')
                    .find('.reply-zone')
                    .prepend('<div class="reply-like"><i class="icon-like-blue"></i> <a class="reply-who" href="#">' + userName + '</a>')
            }
            $(this).parent('.item-reply-likelist').animate({
                width: "toggle",
                height: "36px"
            }, 300);
        }, //取消点赞
        function () {
            $(this).text("点赞");
            //暂时用append和remove来模拟
            if ($(this).parents('.item-right').find('.reply-like').children("a").length == 1) {
                //如果只有自己点赞，将整个点赞节点删除
                $(this).parents('.item-right').find('.reply-like').remove();
            } else {
                //如果有其他人点赞，只删除自己的
                $(this).parents('.item-right').find('.reply-like')
                    .children("a:last-child").remove()
                    .children("i:last-child").remove();
            }

            $(this).parent('.item-reply-likelist').animate({
                width: "toggle",
                height: "36px"
            }, 300);
        })
    //点击图片toggle
    var $windowW = $(".page-moments");

    /*
     * 刘超杰批阅：
     * jQuery获取DOM元素时，加上父级元素，减少遍历元素次数，如：
     * <div class="box1">
     *     <div class="box2"></div>
     *     </div>
     *     当获取box2时，这样书写： $(".box1 .box2")，而不要使用$(".box2")；
     * */

    //小图点击放大
    $(".item-right").on('click', '.pic-item', function () {
        $(this).parent(".pic-wrap")
            .addClass("item-pic-big")
            .css({
                width: $windowW.outerWidth() + "px",
                height: "100vh"
                //获取页面宽度
            })
        $(document.body).css({
            overflow: "hidden"
        });
        $(this).addClass("pic-mgpd");
    })

    /*
     * 刘超杰批阅：
     * jQuery获取DOM元素时，加上父级元素，减少遍历元素次数，如：
     * <div class="box1">
     *     <div class="box2"></div>
     *     </div>
     *     当获取box2时，这样书写： $(".box1 .box2")，而不要使用$(".box2")；
     * */

    //大图点击恢复
    $(".item-right").on('click', '.item-pic-big', function () {
        $(this)
            .removeClass("item-pic-big")
            .css({
                height: "90px",
                width: "90px"
            })
        $(document.body).css({
            overflow: "auto"
        });
        $(this).find(".pic-item").removeClass("pic-mgpd");
    })
    //评论功能实现
    $(".moments-comment").hide();
    $(".item-reply-likelist-comment").on('click', function (e) {
        $(".moments-comment").show();
        $(".moments-comment-input:eq(0)").focus();
        curlikelist.animate({
            width: "toggle",
            height: "36px"
        })
        e.stopPropagation();
    })
    //点击非输入框区隐藏输入框
    //点击其他部分 点赞/评论按钮隐藏
    $(window).on('click', function (e) {
        var target = e.target;
        $(".item-reply-likelist").hide();
        if (target.className != "moments-comment") {
            $('.moments-comment-input').val("");
            $(".moments-comment").hide();
        }
    });
    // 监听输入框改变

    /*
     * 刘超杰批阅：
     * 采用链式调用，一行代码完成：
     * $('.moments-comment-button').attr("disabled",true).css("background","#ccc");
     * */

    $('.moments-comment-button').attr("disabled",true);
    $('.moments-comment-button').css(
        "background","#ccc"
    )
    $('.moments-comment-input').bind('input propertychange', function () {

        /*
         * 刘超杰批阅：
         * 需要加上阻止冒泡事件，避免点击window之后的事件冒泡给$('.moments-comment-input')；
         * e.stopPropagation();
         * */

        // 把字符串去掉空格，检查是否为空。
        $str = $.trim($('.moments-comment-input').val());
        if ($str === "") {
            //判断输入框是否为空

            /*
             * 刘超杰批阅：
             * 采用链式调用，一行代码完成：
             * $('.moments-comment-button').css("background", "#ccc").attr("disabled", true);
             * */

            $('.moments-comment-button').css("background", "#ccc");
            $('.moments-comment-button').attr("disabled", true);
        } else {

            /*
             * 刘超杰批阅：
             * 采用链式调用，一行代码完成：
             * $('.moments-comment-button').attr("disabled", false).css("background", "#47b111");
             * */

            $('.moments-comment-button').attr("disabled", false);
            $('.moments-comment-button').css("background", "#47b111");
        }
    });
//#47b111
    $(".moments-comment").on('click', "button", function () {
        var comment = curlikelist.parents(".moments-item").find(".reply-comment");
        //如果已经有评论，增加一条评论,且输入不能为空
        //若不为空，且已有评论
        if (comment.parents(".reply-zone").find(".comment-item").length > 0) {
            comment.append('<div class="comment-item"><a class="reply-who" href="#">' + userName + '</a>：' + $(".moments-comment-input").val() + '</div>')

        } else {
            //若不为空，但是没有评论
            curlikelist.parents(".moments-item").find('.reply-zone').append('<div class="reply-comment"><div class="comment-item"><a class="reply-who" href="#">' + userName + '</a>：' + $(".moments-comment-input").val() + '</div></div>')
        }
        ;

        /*
         * 刘超杰批阅：
         * 采用链式调用
         * */

        //隐藏评论区，重置input button
        $(".moments-comment-input").val("");
        $(".moments-comment").hide();
        $('.moments-comment-button').attr("disabled", true);
        $('.moments-comment-button').css(
            "background", "#ccc"
        )

    })
}

/**
 * 页面入口函数：init
 * 1、根据数据页面内容
 * 2、绑定事件
 */
function init() {
    // 展现自己的名称
    $('.user-name').text(userName);
    render();
    bindEvent();
}
init();