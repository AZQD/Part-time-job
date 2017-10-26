<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<title><?php echo ($page_seo["title"]); ?></title>
<meta name="keywords" content="<?php echo ($page_seo["keywords"]); ?>"/>
<meta name="description" content="<?php echo ($page_seo["description"]); ?>"/>
<meta content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,shrink-to-fit=no,user-scalable=no,minimal-ui" name="viewport"/>
<meta name ="format-detection" content="telephone=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
<?php if(C('qscms_page_full_screen') == 1): ?><!-- UC默认竖屏` UC强制全屏 -->
    <meta name="screen-orientation" content="portrait">
    <meta name="full-screen" content="yes"/>
    <meta name="browsermode" content="application"/>
    <!-- QQ强制竖屏` QQ强制全屏 -->
    <meta name="x5-orientation" content="portrait"/>
    <meta name="x5-fullscreen" content="true"/>
    <meta name="x5-page-mode" content="app"/><?php endif; ?>
<?php if($apply['Subsite']): ?><base href="<?php echo C('SUBSITE_DOMAIN');?>"/><?php endif; ?>
<script src="../public/js/rem.js"></script>
<script src="../public/js/zepto.min.js"></script>
<script>
	var qscms = {
		base : "<?php echo C('SUBSITE_DOMAIN');?>",
		domain : "http://<?php echo ($_SERVER['HTTP_HOST']); ?>",
		root : "/qishi/index.php",
		companyRepeat:"<?php echo C('qscms_company_repeat');?>",
		is_subsite : <?php if($apply['Subsite'] and C('SUBSITE_VAL.s_id') > 0): ?>1<?php else: ?>0<?php endif; ?>,
		subsite_level : "<?php echo C('SUBSITE_VAL.s_level');?>",
        smsTatus: "<?php echo C('qscms_sms_open');?>"
	};
	if (!!window.ActiveXObject || "ActiveXObject" in window) {
		window.location.href = '<?php echo U('Index/compatibility');?>';
	}
</script>
<?php echo ($synlogin); ?>
<link rel="stylesheet" href="../public/css/common.css">
    <link rel="stylesheet" href="../public/css/personal.css">
</head>
<body>
<div class="perindextop">
    <div class="return js-back for-event"></div>
    <div class="msg for-event" onClick="javascript:location.href='<?php echo url_rewrite('QS_index');?>'"></div>
    <div class="pic">
        <a href="<?php echo U('personal/user_info');?>">
            <img src="<?php echo ($visitor['avatars']); ?>?<?php echo time();?>" border="0"/>
        </a>
    </div>
    <div class="txt"><?php echo ($resume_info["fullname"]); ?><br/>
        <span class="font12"><?php echo ($resume_info["education_cn"]); ?> | <?php echo ($resume_info["experience_cn"]); ?> | <?php echo ($resume_info["current_cn"]); ?></span>
    </div>
</div>
<div class="perindex_count">
    <div class="clist for-event" onClick="javascript:location.href='<?php echo U('Personal/jobs_interview',array('resume_id'=>$resume_info['id']));?>'">
        <div class="content"><span class="font16"><?php echo ((isset($resume_info['countinterview']) && ($resume_info['countinterview'] !== ""))?($resume_info['countinterview']):0); ?></span><br/>面试邀请</div>
    </div>
    <div class="clist for-event" onClick="javascript:location.href='<?php echo U('Personal/attention_me',array('resume_id'=>$resume_info['id']));?>'">
        <div class="content"><span class="font16"><?php echo ((isset($resume_info['views']) && ($resume_info['views'] !== ""))?($resume_info['views']):0); ?></span><br/>谁看过我</div>
    </div>
    <div class="clist for-event" onClick="javascript:location.href='<?php echo U('Personal/jobs_apply',array('resume_id'=>$resume_info['id']));?>'">
        <div class="content last"><span class="font16"><?php echo ((isset($resume_info["countapply"]) && ($resume_info["countapply"] !== ""))?($resume_info["countapply"]):0); ?></span><br/>求职反馈</div>
    </div>
    <div class="clear"></div>
</div>
<div class="split-block"></div>
<div class="perbtnx4">
    <div class="btns font15">
        <div id="J_create_resume" class="cli t1">创建简历</div>
        <div class="cli t2" onClick="javascript:location.href='<?php echo url_rewrite('QS_jobslist');?>'" }>搜索职位</div>
        <div id="J_refresh_resume" class="cli t3" pid="<?php echo ($resume_info['id']); ?>">刷新简历</div>
        <div class="cli t4" onClick="javascript:location.href='<?php echo U('Personal/resume_list');?>'">管理简历</div>
        <div class="clear"></div>
    </div>
</div>
<div class="split-block"></div>

<div class="mygold">
   <div class="eattitle list_height for-event" onClick="javascript:location.href='<?php echo U('PersonalService/index');?>'">我的<?php echo C('qscms_points_byname');?>
       <div class="point font_yellow"><?php echo ($points); echo C('qscms_points_byname');?></div>
        <div class="more"></div>
        <!--这里的才币有可能是积分，记住从后台调用名称 -->
    </div>


	    <div class="btns font12">

        <div class="cli for-event" onClick="javascript:location.href='<?php echo U('PersonalService/service_stick');?>'">
            <div class="pic t1"></div>
            <div class="txt">简历置顶</div>
        </div>
        <!--<div class="cli" onClick="javascript:location.href='<?php echo U('PersonalService/resume_tag',array('resume_id'=>$resume_info['id']));?>'"> -->
        <div class="cli for-event" onClick="javascript:location.href='<?php echo U('PersonalService/service_tag');?>'">
            <div class="pic t2"></div>
            <div class="txt">醒目标签</div>
        </div>
        <div class="cli for-event" onClick="javascript:location.href='<?php echo U('PersonalService/gold_task');?>'">
            <div class="pic t3"></div>
            <div class="txt">我的任务</div>
        </div>
        <div class="cli for-event" onClick="javascript:location.href='<?php echo U('PersonalService/order_list');?>'">
            <div class="pic t4"></div>
            <div class="txt" onClick="javascript:location.href='<?php echo U('order_list');?>'" >我的订单</div>
        </div>
        <div class="clear"></div>
    </div>

</div>

<div class="split-block"></div>
<div class="list_height plist-img" onClick="javascript:location.href='<?php echo U('personal/jobs_favorites');?>'">
    <div class="pic t1"></div>
    <div class="tit font14">收藏&关注</div>
    <div class="describe font12">收藏的职位、关注的企业</div>
    <div class="arrow"></div>
    <div class="clear"></div>
</div>
<div class="list_height plist-img" onClick="javascript:location.href='<?php echo U('personal/shield_company');?>'" >
    <div class="pic t2"></div>
    <div class="tit font14">屏蔽企业</div>
    <div class="describe font12">可对特定企业进行屏蔽</div>
    <div class="arrow"></div>
    <div class="clear"></div>
</div>
<div class="list_height plist-img" onClick="javascript:location.href='<?php echo U('personal/per_security');?>'">
    <div class="pic t3"></div>
    <div class="tit font14">账号管理</div>
    <div class="describe font12">基本资料、账号安全</div>
    <div class="arrow"></div>
    <div class="clear"></div>
</div>
<div class="list_height plist-img" onClick="javascript:location.href='<?php echo U('personal/pms_list');?>'" >
    <div class="pic t4"></div>
    <div class="tit font14">消息提醒</div>
    <div class="describe font12">留言反馈及系统消息</div>
    <div class="arrow"></div>
    <div class="clear"></div>
</div>
<!-- <div class="list_height plist-img" onClick="javascript:location.href='<?php echo U('personal/user_safety');?>'">
    <div class="pic t4"></div>
    <div class="tit font14">微简历</div>
    <div class="describe font12">专属手机动感简历</div>
    <div class="arrow"></div>
    <div class="clear"></div>
</div> -->
<div class="list_height plist-img last" onClick="javascript:location.href='<?php echo U('personal/feedback');?>'">
    <div class="pic t5"></div>
    <div class="tit font14">
        意见反馈
    </div>
    <div class="describe font12">我们非常看重您的建议</div>
    <div class="arrow"></div>
    <div class="clear"></div>
</div>


<div class="split-block"></div>

<div class="loginout list_height font14 for-event" id="logout">
   <a>退出登录</a>
</div>
<div class="split-block"></div>
<!--<div class="bottom-fixed" id="backtop">
	<a href="javascript:;" class="gotop"></a>
</div>-->
<script src="../public/js/fastclick.js"></script>
<script>
    window.addEventListener( "load", function() {
        FastClick.attach(document.body);
    }, false );
</script>
<script src="../public/js/qsToast.js"></script>
<script src="../public/js/QSpopout.js"></script>
<script src="../public/js/QSfilter.js"></script>
<script src="../public/js/zepto.hwSlider.js"></script>
<script src="../public/js/scrollTo.js"></script>
<script>
  $('a[href]').click(function(){
      var f = $(this).attr('href');
      var reg = /\#(\w+)/;
      if(reg.test(f)) {
        if (!$(this).data('nm')) {
            return !1;
        }
      }
  });
  $('.js-back').on('click', function () {
      history.back();
  });
  $('.rbtn').on('click', function() {
	  forCloseNav();
  })
  $('.t-mask').on('click', function () {
	  forCloseNav();
  })
  $('.h-navclose').on('click', function () {
	  forCloseNav();
  })
  function forCloseNav() {
	  if ($('.topnavshow').hasClass('qs-actionsheet-toggle')) {
		  $('.t-mask').hide();
		  $('.topnavshow').removeClass('qs-actionsheet-toggle');
	  } else {
		  $('.t-mask').show();
		  $('.topnavshow').addClass('qs-actionsheet-toggle');
	  }
  }
  /**
   * 监听鼠标
   */
  if ('ontouchstart' in window) {
      $.EVENT_START = 'touchstart';
      $.EVENT_END = 'touchend';
  } else {
      $.EVENT_START = 'mousedown';
      $.EVENT_END = 'mouseup';
  }
  $('.plist-txt, .qs-btn, .for-event').on($.EVENT_START, function() {
      $(this).addClass('eventactive');
  })
  $('.plist-txt, .qs-btn, .for-event').on($.EVENT_END, function() {
      $(this).removeClass('eventactive');
  })
  //顶部刷新职位
  $('#refresh_jobs_all_top').on('click',function(){
      $.getJSON("<?php echo U('Company/jobs_refresh_all');?>",function(result){
        forCloseNav();
        if(result.status==1){
          qsToast({type:1,context: result.msg});
        }
        else if(result.status==2){
          var dialog = new QSpopout('批量刷新职位');
              dialog.setContent(result.msg);
              dialog.setBtn(2, ['取消', '单条刷新']);
              dialog.show();
              dialog.getPrimaryBtn().on('click', function () {
                  window.location.href = "<?php echo U('company/jobs_list');?>";
              });
        }else{
          qsToast({type:2,context: result.msg});
          return false;
        }
      });
  });
  //顶部刷新简历
  $('#refresh_resume_top').on('click',function(){
    var pid = $(this).attr('pid');
      $.post("<?php echo U('Personal/refresh_resume');?>",{pid:pid},function(result){
        forCloseNav();
      if(result.status == 1){
        if(result.data){
          qsToast({type:1,context: '刷新简历增加'+result.data+'<?php echo C('qscms_points_byname');?>'});
        }else{
          qsToast({type:2,context: result.msg});
          return false;
        }
      }else{
        qsToast({type:2,context: result.msg});
        return false;
      }
    },'json');
  });
  //顶部预览简历
  $('#preview_resume_top').on('click',function(){
    $.getJSON("<?php echo U('Personal/resume_preview');?>",function(result){
      if(result.status == 1){
        window.location.href=result.data;
      }else{
        forCloseNav();
        qsToast({type:2,context:result.msg});
      }
    });
  });
  $('.logout').on('click', function () {
        var dialog = new QSpopout();
        dialog.setContent('确定退出吗？');
        forCloseNav();
        dialog.show();
        dialog.getPrimaryBtn().on('click', function () {
            window.location.href = "<?php echo U('Members/logout');?>";
        });
    });
   //顶部发布职位
   $('#J_jobs_add_top').on('click',function(){
    $.getJSON("<?php echo U('Company/check_jobs_num');?>",function(result){
      if(result.status==1){
        var dialog = new QSpopout();
        var free = result.data;
        if(free==1){
            dialog.setContent('<div class="dialog_notice nospace">您当前是免费会员，发布中的职位数已超过最大限制，升级VIP会员后可继续发布职位，建议您立即升级VIP会员！</div>');
        }else{
            dialog.setContent('<div class="dialog_notice nospace">当前显示的职位已超过最大限制，建议您立即升级服务套餐或将暂时不招聘的职位设为关闭！</div>');
        }
        forCloseNav();
        dialog.show();
        dialog.setBtn(2, ['取消', '升级套餐']);
        dialog.getPrimaryBtn().on('click', function () {
            window.location.href = "<?php echo U('CompanyService/setmeal_add');?>";
        });
      }else{
        window.location.href="<?php echo U('Company/jobs_add');?>";
      }
    });
   });
	// 处理select
  $('select').on('change', function () {
	  $(this).prev().text($(this).find('option').not(function(){ return !this.selected }).text());
  })
  $('select').each(function () {
	  $(this).prev().text($(this).find('option').not(function(){ return !this.selected }).text());
  })
	// 底部导航栏
	$('.js-b-nav-bar').on('click', function () {
		$(this).closest('.bottom-nav-bar-group').find('.bottom-bar-more-group').fadeIn(200);
	})
  $('.js-b-nav-bar-active').on('click', function () {
	  $(this).closest('.bottom-nav-bar-group').find('.bottom-bar-more-group').fadeOut(200);
  })
  $("#hwslider-bottom").hwSlider({
	  autoPlay: false,
	  dotShow: true,
	  touch: true,
	  arrShow: false
  });

  /**
   * 返回顶部
   */
  var global = {
	  h:$(window).height(),
	  st: $(window).scrollTop(),
	  backTop:function(){
		  global.st > (global.h*0.5) ? $("#backtop").show() : $("#backtop").hide();
	  }
  }
  global.backTop();
  $(window).scroll(function(){
	  global.h = $(window).height();
	  global.st = $(window).scrollTop();
	  global.backTop();
  });
  $(window).resize(function(){
	  global.h = $(window).height();
	  global.st = $(window).scrollTop();
	  global.backTop();
  })
  $("#backtop").on('click', function () {
	  $("body").scrollTo({toT: 0});
  })
</script>
<?php echo htmlspecialchars_decode(C('qscms_mobile_statistics'));?>

<script type="text/javascript">
    $('#logout').on('click', function () {
        var dialog = new QSpopout();
        dialog.setContent('确定退出吗？');
        dialog.show();
        dialog.getPrimaryBtn().on('click', function () {
            window.location.href = "<?php echo U('Members/logout');?>";
        });
    });
    $('#J_refresh_resume').click(function() {
        var pid = $(this).attr('pid');
    	$.post("<?php echo U('Personal/refresh_resume');?>",{pid:pid},function(result){
			if(result.status == 1){
				if(result.data){
                    qsToast({type:1,context: '刷新简历增加'+result.data+'<?php echo C('qscms_points_byname');?>'});
				}else{
                    qsToast({type:1,context: result.msg});
				}
			}else{
                qsToast({type:2,context: result.msg});
			}
		},'json');
    });
    <?php if($resume['level'] == 1): ?>var dialog = new QSpopout();
        dialog.setContent('<div class="dialog_notice">你的简历完整度<span class="font_red">太差</span>！完整的简历更容易获得企业的关注，建议你立即完善！</div>');
        dialog.show();
        dialog.setBtn(2, ['取消', '完善简历']);
        dialog.getPrimaryBtn().on('click', function () {
            window.location.href = "<?php echo U('Personal/resume_edit',array('pid'=>$resume['id']));?>";
        });<?php endif; ?>
    $('#J_create_resume').on('click',function(){
        $.getJSON("<?php echo U('Personal/resume_add');?>",function(result){
            if(result.status == 1){
                javascript:location.href="<?php echo U('Personal/resume_add');?>";
            }else{
                var dialog = new QSpopout();
                dialog.setContent(result.msg);
                dialog.show();
                dialog.setBtn(1);
            }
        });
    });
</script>
</body>
</html>