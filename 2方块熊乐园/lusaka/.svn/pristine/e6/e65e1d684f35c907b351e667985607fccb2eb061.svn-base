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
  <div class="headernavfixed">
  <div class="headernav font18">
    <div class="title">
    	<?php if($page_seo['header_title']): echo ($page_seo['header_title']); ?>
    	<?php else: ?>
			<?php echo ((isset($page_seo["pname"]) && ($page_seo["pname"] !== ""))?($page_seo["pname"]):$page_seo['title']); endif; ?>
      <div class="return js-back for-event"></div>
    <!-- <div class="rbtn for-event"></div> -->
    </div>
  </div>
	<div class="qspageso link_gray6">
  <div class="topbg">
		 <input value="<?php echo (urldecode(urldecode($_GET['key']))); ?>" type="text" class="soimput" id="J_soinput" placeholder="请输入关键字"/>
    	<div class="soselect qs-relative for-event">
		    <span class="for-type-txt"> <?php if($search_type == 'resume' or strtolower(CONTROLLER_NAME) == 'resume'): ?>搜简历<?php else: ?>搜职位<?php endif; ?></span>
		    <input type="hidden" class="for-type-code" id="search_type" name="search_type" value="<?php if(!empty($search_type)): echo ($search_type); else: if(strtolower(CONTROLLER_NAME) == 'resume'): ?>resume<?php else: ?>jobs_commpany<?php endif; endif; ?>">
	    </div>
	    <div class="so-close js-so-close"></div>
      <div class="rightbtn for-event cancel" id="J_submit">取消</div>
		  <!-- <div class="rightbtn-so for-event">搜索</div> -->
	  <div class="choose-s-type-group">
		  <div class="choose-s-type-cell qs-relative">
			  <div class="qs-center <?php if($search_type == 'jobs'): ?>qs-relative<?php endif; ?>"><div class="choose-s-type-list font14" data-code="jobs_commpany" data-title="职位">职位</div></div>
			  <div class="qs-center <?php if($search_type == 'resume'): ?>qs-relative<?php endif; ?>"><div class="choose-s-type-list sl2 font14" data-code="resume" data-title="简历">简历</div></div>
		  </div>
	  </div>
<div class="search_ajax"><ul id="search_mes"></ul></div>
  </div>
  <div class="history"></div>
  
  <div class="clearkey  for-event" id="J_cleanhistory" style="display:none;">清空关键字</div>
  
  
  <div class="split-block"></div>
  
  <div class="sohot font12 link_gray6">
  <div class="hottitle font14 ">热门职位</div>
  <?php $tag_hotword_class = new \Common\qscmstag\hotwordTag(array('列表名'=>'hotword_list','显示数目'=>'12','cache'=>'0','type'=>'run',));$hotword_list = $tag_hotword_class->run();$frontend = new \Common\Controller\FrontendController;$page_seo = $frontend->_config_seo(array("pname"=>"","title"=>"","keywords"=>"","description"=>"","header_title"=>""),$hotword_list);?>
		<?php if(is_array($hotword_list)): $i = 0; $__LIST__ = $hotword_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$hotword): $mod = ($i % 2 );++$i; if(C('qscms_key_urlencode') == 1): ?><a href="<?php echo url_rewrite('QS_jobslist',array('key'=>urlencode($hotword['w_word_code'])));?>" class="hotword substring for-event"><?php echo ($hotword["w_word"]); ?></a>
    <?php else: ?>
    <a href="<?php echo url_rewrite('QS_jobslist',array('key'=>$hotword['w_word_code']));?>" class="hotword substring for-event"><?php echo ($hotword["w_word"]); ?></a><?php endif; endforeach; endif; else: echo "" ;endif; ?>
  <div class="clear"></div>
  <script src="../public/js/zepto.cookie.min.js"></script>
	  <script>
		  $('.js-so-close').on('click', function () {
			  $(this).closest('.topbg').find('.soimput').val('');
			  $('#J_submit').addClass('rightbtn');
			  $('#J_submit').removeClass('rightbtn-so');
			  $('#J_submit').addClass('cancel');
			  $('#J_submit').html('取消');
		  })
    if($('#J_soinput').val()){
      $('#J_submit').addClass('rightbtn-so');
      $('#J_submit').removeClass('rightbtn');
      $('#J_submit').removeClass('cancel');
      $('#J_submit').html('搜索');
    }
    get_history($('.history'));
    function get_history(d){
      var b = "", hlength = 0;
      var searchHistoryArr = new Array();
      if ($.fn.cookie("searchHistory")) {
        searchHistoryArr = $.fn.cookie("searchHistory").split(",");
      };
      if (searchHistoryArr.length == 0) {
        d.hide();
        return false
      }
      $.each(searchHistoryArr.reverse(), function(index, val) {
        hlength += 1;
        b += '<div class="record"><div class="keyimg history_go" data-self="'+val+'">'+val+'</div><div class="delimg close for-event"></div><div class="clear"></div></div>';
      });
      if (hlength > 0) {
        d.empty().html(b);
        $("#J_cleanhistory").show();
        $(".history_go").on("click", function() {
          searchGo($(this).data("self"));
        });
        $(".record .close").on("click", function() {
          var searchHistoryArr = $.fn.cookie("searchHistory").split(","),
            val = $(this).prev().data("self"),
            index = $.inArray(val,searchHistoryArr);
          if (index >= 0) {
            searchHistoryArr.splice(index,1);
          };
          $.fn.cookie("searchHistory",searchHistoryArr,{ path: '/' });
          $(this).parent().remove();
        });
      } else {
        d.empty();
        $("#J_cleanhistory").hide()
      }
    }
    function add_history(key){
      if (key.length > 0) {
        var searchHistoryArr = new Array();
        if ($.fn.cookie("searchHistory")) {
          searchHistoryArr = $.fn.cookie("searchHistory").split(",");
          var isOnly = true;
          $.each(searchHistoryArr, function(index, val) {
            if (val == key) {
              isOnly = false;
            };
          });
          if (isOnly) {
            if (searchHistoryArr.length >= 5) {
              searchHistoryArr.splice(0,1);
            }
            searchHistoryArr.push(key);
          };
        } else {
          searchHistoryArr.push(key);
        };
        $.fn.cookie("searchHistory",searchHistoryArr,{ path: '/' });
      }
    }
    function searchGo(key) {
      add_history(key);
      var search_type = $('#search_type').val();
      if(search_type=='resume'){
        var url = qscms.root+"?m=Mobile&c=Resume&a=index&key="+encodeURI(encodeURI(key));
      }else{
        var url = qscms.root+"?m=Mobile&c=Jobs&a=index&search_type=jobs_commpany&key="+encodeURI(encodeURI(key));
      }
      window.location.href=url;
    }
		  $('.topbg .soselect').on('click', function () {
			  $('.topbg').toggleClass('for-type');
		  })
		  $('.choose-s-type-cell .qs-center').on('click', function () {
			  var stypeCode = $(this).find('.choose-s-type-list').data('code');
		  	var stypeTitle = $(this).find('.choose-s-type-list').data('title');
			  $('.for-type-code').val(stypeCode);
		  	$('.for-type-txt').text('搜' + stypeTitle);
			  $('.topbg').toggleClass('for-type');
		  });
      $('#J_submit').on('click',function(){
        if($(this).hasClass('cancel')){
          searchGo('');
        }else{
          searchGo($('#J_soinput').val());
        }
      });
      $("#J_cleanhistory").on("click", function() {
        $(this).hide();
        $(".history").hide();
        $.fn.cookie('searchHistory', null,{ path: '/' });
      });
      $('#J_soinput').on('keyup',function(){
        if($(this).val()!=''){
          $('#J_submit').addClass('rightbtn-so');
          $('#J_submit').removeClass('rightbtn');
          $('#J_submit').removeClass('cancel');
          $('#J_submit').html('搜索');
        }else{
          $('#J_submit').addClass('rightbtn');
          $('#J_submit').removeClass('rightbtn-so');
          $('#J_submit').addClass('cancel');
          $('#J_submit').html('取消');
        }
      });
      $('.hotword').on('click',function(){
        add_history($(this).text());
        window.location.href=$(this).attr('href');
        return false;
      });
      // 关键字搜索关联
          $('#J_soinput').on('keyup', function() {
              $.getJSON("<?php echo U('ajaxCommon/hotword');?>",{key:$(this).val()},function(result){
                  if (result.status==1) {
                      var reArr = result.data.list;
                      if (reArr.length) {
                          var reHtml = '';
                          var reUrl = "<?php echo url_rewrite('QS_jobslist',array('key'=>urlencode('ooo')));?>";
                          var reUrl1 = "<?php echo url_rewrite('QS_jobslist',array('key'=>'ooo'));?>";
                          for (var i = 0; i < reArr.length; i++) {
                              <?php if(C('qscms_key_urlencode') == 1): ?>reHtml += '<li data-key="'+reArr[i].w_word+'"><a href="'+reUrl.replace('ooo',reArr[i].w_word)+'"><span class="search_wd">'+reArr[i].w_word+'</span></a></li>';
                              <?php else: ?>
                              reHtml += '<li data-key="'+reArr[i].w_word+'"><a href="'+reUrl1.replace('ooo',reArr[i].w_word)+'"><span class="search_wd">'+reArr[i].w_word+'</span></a></li>';<?php endif; ?>
                          }
                          $('#search_mes').html(reHtml);
                          $('.search_ajax').show();
                      }
                  }
              });
          });
	  </script>
</div>
</div>
<!--未登录显示以下 -->
<?php if(!C('visitor')): ?><div class="t-mask"></div>
    <div class="topnavshow">
	    
	  <div class="navlis">
	  	<div class="topnav" onclick="javascript:location.href='<?php echo url_rewrite('QS_index');?>'">
		  <div class="imgbox"><img src="../public/images/198.png" /></div>
		  <div class="tit">返回首页</div>
		</div>
		<div class="topnav" onclick="javascript:location.href='<?php echo U('Members/login');?>'">
		  <div class="imgbox"><img src="../public/images/192.png" /></div>
		  <div class="tit">登录/注册</div>
		</div>
		<div class="topnav" onclick="javascript:location.href='<?php echo url_rewrite('QS_jobslist');?>'">
		  <div class="imgbox"><img src="../public/images/197.png" /></div>
		  <div class="tit">找工作</div>
		</div>
		<div class="topnav" onclick="javascript:location.href='<?php echo url_rewrite('QS_resumelist');?>'">
		  <div class="imgbox"><img src="../public/images/196.png" /></div>
		  <div class="tit">招人才</div>
		</div>
		<?php if(!empty($apply['Jobfair'])): ?><div class="topnav" onclick="javascript:location.href='<?php echo url_rewrite('QS_jobfairlist');?>'">
			<div class="imgbox"><img src="../public/images/199.png" /></div>
			<div class="tit">招聘会</div>
		</div><?php endif; ?>
		<div class="topnav" onclick="javascript:location.href='<?php echo url_rewrite('QS_newslist');?>'">
		  <div class="imgbox"><img src="../public/images/202.png" /></div>
		  <div class="tit">职场资讯</div>
		</div>
		<div class="clear"></div>
	  </div>
	  
      <div class="h-navclose qs-center"><div class="navclose"></div></div>
    </div>
<?php elseif(C('visitor.utype') == 1): ?>	
<!--企业已登录显示 -->
	<div class="t-mask"></div>
    <div class="topnavshow">
	   
	  <div class="navlis">
	  	<div class="topnav" onclick="javascript:location.href='<?php echo url_rewrite('QS_index');?>'">
		  <div class="imgbox"><img src="../public/images/198.png" /></div>
		  <div class="tit">返回首页</div>
		</div>
		<div class="topnav" onclick="javascript:location.href='<?php echo U('Company/index');?>'">
		  <div class="imgbox"><img src="../public/images/192.png" /></div>
		  <div class="tit">企业中心</div>
		</div>
		<div class="topnav" onclick="javascript:location.href='<?php echo url_rewrite('QS_resumelist');?>'">
			<div class="imgbox"><img src="../public/images/196.png" /></div>
			<div class="tit">搜索简历</div>
		</div>
		<div class="topnav" id='J_jobs_add_top'>
		  <div class="imgbox"><img src="../public/images/191.png" /></div>
		  <div class="tit">发布职位</div>
		</div>
		<div class="topnav" id="refresh_jobs_all_top">
		  <div class="imgbox"><img src="../public/images/195.png" /></div>
		  <div class="tit">一键刷新</div>
		</div>
		<div class="topnav" onclick="javascript:location.href='<?php echo U('Company/jobs_apply');?>'">
		  <div class="imgbox"><img src="../public/images/194.png" /></div>
		  <div class="tit">收到的简历</div>
		</div>
		<div class="clear"></div>
	  </div>
	  
      <div class="logout">
	    <div class="outbtn for-event">退出登录</div>
	  </div>
	    <div class="h-navclose qs-center"><div class="navclose"></div></div>
    </div>	
	

<?php else: ?>
<!--个人已登录显示 -->
	<div class="t-mask"></div>
   <div class="topnavshow">
	  <div class="navlis">
	  	<div class="topnav" onclick="javascript:location.href='<?php echo url_rewrite('QS_index');?>'">
		  <div class="imgbox"><img src="../public/images/198.png" /></div>
		  <div class="tit">返回首页</div>
		</div>
		<div class="topnav" onclick="javascript:location.href='<?php echo U('Personal/index');?>'">
		  <div class="imgbox"><img src="../public/images/192.png" /></div>
		  <div class="tit">个人中心</div>
		</div>
		<div class="topnav" onclick="javascript:location.href='<?php echo url_rewrite('QS_jobslist');?>'">
		  <div class="imgbox"><img src="../public/images/197.png" /></div>
		  <div class="tit">搜索职位</div>
		</div>
		<div class="topnav" id="preview_resume_top" pid="<?php echo ($resume['id']); ?>">
		  <div class="imgbox"><img src="../public/images/200.png" /></div>
		  <div class="tit">预览简历</div>
		</div>
		<div class="topnav" id="refresh_resume_top" pid="<?php echo ($resume['id']); ?>">
		  <div class="imgbox"><img src="../public/images/195.png" /></div>
		  <div class="tit">一键刷新</div>
		</div>
		<div class="topnav" onclick="javascript:location.href='<?php echo U('Personal/jobs_interview');?>'">
		  <div class="imgbox"><img src="../public/images/193.png" /></div>
		  <div class="tit">面试通知</div>
		</div>
		<div class="clear"></div>
	  </div>
	  
      <div class="logout">
	    <div class="outbtn for-event">退出登录</div>
	  </div>
	   <div class="h-navclose qs-center"><div class="navclose"></div></div>
    </div><?php endif; ?>
	<!--搜搜层 -->
</div>
  <div class="replenishtop">
      <div class="rename"><strong id="J_title"><?php echo ($resume["title"]); ?></strong><a href="#J_describeTemp" class="J_titleEdit span"><img src="../public/images/173.png"></a></div>
      <div class="integrity">完整度：<span><?php echo ($resume["complete_percent"]); ?>%</span></div>
    </div>
    <div class="replenishtopbg"></div>
    <div class="split-block"></div>
    <div class="listmod">
      <div class="eattitle list_height t1">
        基本资料<span class="font12">(必填)</span>
        <div class="editbtn font13" onClick="javascript:location.href='<?php echo U('personal/resume_edit_basis',array('pid'=>$resume['id']));?>'">修改</div>
      </div>
      <div class="picmod">
        <div class="pic">
          <div class="picborder">
            <img src="<?php echo ($visitor["avatars"]); ?>">
          </div>
        </div>
        <div class="rneme">
          <div class="t font16"><?php echo ($resume["fullname"]); ?></div>
          <div class="txt"><?php echo ($resume["sex_cn"]); ?>&nbsp;|&nbsp;<?php echo date('Y')-$resume['birthdate'];?>岁&nbsp;|&nbsp;<?php echo ($resume["marriage_cn"]); if($resume['height']): ?>&nbsp;|&nbsp;<?php echo ($resume["height"]); ?>cm<?php endif; ?></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="txt2list">
        <div class="tleft">最高学历</div>
        <div class="tright"><?php echo ($resume["education_cn"]); ?></div>
        <div class="clear"></div>
        <div class="tleft">工作经验</div>
        <div class="tright"><?php echo ($resume["experience_cn"]); ?></div>
        <div class="clear"></div>
        <div class="tleft">专业</div>
        <div class="tright"><?php if($resume['major_cn']): echo ($resume["major_cn"]); else: ?>未填写<?php endif; ?></div>
        <div class="clear"></div>
        <div class="tleft">现居住地</div>
        <div class="tright"><?php if($resume['residence']): echo ($resume["residence"]); else: ?>未填写<?php endif; ?></div>
        <div class="clear"></div>
        <div class="tleft">籍贯</div>
        <div class="tright"><?php if($resume['householdaddress']): echo ($resume["householdaddress"]); else: ?>未填写<?php endif; ?></div>
        <div class="clear"></div>
        <div class="tleft">手机</div>
        <div class="tright"><?php if($resume['telephone']): echo ($resume["telephone"]); else: ?>未填写<?php endif; ?></div>
        <div class="clear"></div>
        <div class="tleft">邮箱</div>
        <div class="tright"><?php if($resume['email']): echo ($resume["email"]); else: ?>未填写<?php endif; ?></div>
        <div class="clear"></div>
        <div class="tleft">QQ</div>
        <div class="tright"><?php if($resume['qq']): echo ($resume["qq"]); else: ?>未填写<?php endif; ?></div>
        <div class="clear"></div>
        <div class="tleft">微信号</div>
        <div class="tright"><?php if($resume['weixin']): echo ($resume["weixin"]); else: ?>未填写<?php endif; ?></div>
        <div class="clear"></div>
      </div>
    </div>
    <div class="split-block"></div>	 
    <div class="listmod">
      <div class="eattitle list_height t2">
      求职意向<span class="font12">(必填)</span>
        <div class="editbtn font13" onClick="javascript:location.href='<?php echo U('personal/resume_edit_intent',array('pid'=>$resume['id']));?>'">修改</div>
      </div>
      <div class="txt2list">
        <div class="tleft">求职状态</div>
    	<div class="tright"><?php echo ($resume["current_cn"]); ?></div>
        <div class="clear"></div>
    	  <div class="tleft">工作性质</div>
    	<div class="tright"><?php echo ($resume["nature_cn"]); ?></div>
        <div class="clear"></div>
    	  <div class="tleft">期望薪资</div>
    	<div class="tright"><?php echo ($resume["wage_cn"]); ?></div>
        <div class="clear"></div>
    	  <div class="tleft">期望行业</div>
    	<div class="tright"><?php if($resume['trade_cn']): echo ($resume["trade_cn"]); else: ?>不限<?php endif; ?></div>
        <div class="clear"></div>
    	  <div class="tleft">期望职位</div>
    	<div class="tright"><?php if($resume['intention_jobs']): echo ($resume["intention_jobs"]); else: ?>未填写<?php endif; ?></div>
        <div class="clear"></div>
    	  <div class="tleft">工作地区</div>
    	<div class="tright"><?php if($resume['district_cn']): echo ($resume["district_cn"]); else: ?>未填写<?php endif; ?></div>
        <div class="clear"></div>
      </div>
    </div>
    <div class="split-block"></div>
    <div class="listmod">
      <div class="eattitle list_height t3">
        自我描述
        <div class="editbtn font13" onClick="javascript:location.href='<?php echo U('personal/resume_edit_description',array('pid'=>$resume['id']));?>'">修改</div>
      </div>
      <div class="txtmod"><?php echo ($resume["specialty"]); ?></div>
    </div>
    <div class="split-block"></div>
    <div class="listmod">
      <div class="eattitle list_height t4">
      教育经历
        <div class="addbtn font13" onClick="javascript:location.href='<?php echo U('personal/resume_edit_edu',array('pid'=>$resume['id']));?>'">新增</div>
      </div>
      <div id="J_education"></div>
    </div>
    <div class="split-block"></div>
    <div class="listmod">
      <div class="eattitle list_height t5">
      工作经历
        <div class="addbtn font13" onClick="javascript:location.href='<?php echo U('personal/resume_edit_work',array('pid'=>$resume['id']));?>'">新增</div>
      </div>
      <div id="J_work"></div>
    </div>
    <div class="split-block"></div>
      <div class="listmod">
        <div class="eattitle list_height t6">
        培训经历
        <div class="addbtn font13" onClick="javascript:location.href='<?php echo U('personal/resume_edit_train',array('pid'=>$resume['id']));?>'">新增</div>
      </div>
      <div id="J_training"></div>
    </div>
    <div class="split-block"></div>
    <div class="listmod">
      <div class="eattitle list_height t7">
      获得证书
        <div class="addbtn font13" onClick="javascript:location.href='<?php echo U('personal/resume_edit_certificate',array('pid'=>$resume['id']));?>'">新增</div>
      </div>
      <div id="J_credent"></div>
    </div>
    <div class="split-block"></div>
    <div class="listmod">
      <div class="eattitle list_height t8">
      语言能力
        <div class="addbtn font13" onClick="javascript:location.href='<?php echo U('personal/resume_edit_lang',array('pid'=>$resume['id']));?>'">新增</div>
      </div>
       <div id="J_language"></div>
    </div>
    <div class="split-block"></div>
    <div class="listmod">
      <div class="eattitle list_height t9">
        特长标签
        <div class="addbtn font13" onClick="javascript:location.href='<?php echo U('personal/resume_edit_speciality',array('pid'=>$resume['id']));?>'">新增</div>
      </div>
      <?php if($resume['tag_cn']): ?><div id="J_tags" class="tagmod" pid="<?php echo ($resume["id"]); ?>">
        <?php if(is_array($resume['tag_key'])): $i = 0; $__LIST__ = $resume['tag_key'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$tag): $mod = ($i % 2 );++$i;?><div class="J_tagList litag substring" <?php if($tags[$tag]): ?>tid="<?php echo ($tag); ?>"<?php else: ?>title="<?php echo ($tag); ?>"<?php endif; ?>>
            <?php echo ($tags[$tag]); ?>
            <div class="del"></div>
          </div><?php endforeach; endif; else: echo "" ;endif; ?>
        <?php if(is_array($resume['tag_cn'])): $i = 0; $__LIST__ = $resume['tag_cn'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$tag): $mod = ($i % 2 );++$i; if(!in_array($tag,$tags)): ?><div class="J_tagList litag substring" title="<?php echo ($tag); ?>"><?php echo ($tag); ?><div class="del"></div></div><?php endif; endforeach; endif; else: echo "" ;endif; ?>
        <div class="clear"></div>
      </div><?php endif; ?>
    </div>
    <div class="split-block"></div>
    <div class="listmod">
      <div class="eattitle list_height t10">
        照片/作品
        <div class="addbtn font13" onClick="javascript:location.href='<?php echo U('personal/resume_edit_img',array('pid'=>$resume['id']));?>'">新增</div>
      </div>
      <?php if(is_array($resume_img)): $i = 0; $__LIST__ = $resume_img;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$img): $mod = ($i % 2 );++$i;?><div class="imgmod" iid="<?php echo ($img["id"]); ?>"  type="img" pid="<?php echo ($resume['id']); ?>" sid="<?php echo ($img['id']); ?>">
          <div class="expedit" onClick="javascript:location.href='<?php echo U('personal/resume_edit_img',array('pid'=>$resume['id'],'id'=>$img['id']));?>'"></div>
          <div class="J_delete expdel"></div>
          <div class="imgtd1"><img src="<?php echo attach($img['img'],'resume_img');?>"></div>
          <div class="imgtd2">
            <div class="iname"><?php if($img['title']): echo ($img["title"]); else: ?>未填写备注<?php endif; ?></div>
            <?php switch($img['audit']): case "1": ?><span class="font_green">审核通过</span><?php break;?>
              <?php case "2": ?><span class="font_yellow">审核中</span><?php break;?>
              <?php case "3": ?><span class="font_red">审核未通过</span><?php break; endswitch;?>
          </div>
          <div class="clear"></div>
        </div><?php endforeach; endif; else: echo "" ;endif; ?>
    </div>

    <div class="btns-div">
        <div class="btnli"><div  class="qs-btn qs-btn-orange font18" onClick="javascript:location.href='<?php echo U('personal/resume_list');?>'">保存简历</div></div>
        <div class="btnli"><div class="qs-btn qs-btn-border-blue font18" onClick="javascript:location.href='<?php echo url_rewrite('QS_resumeshow',array('id'=>$resume['id']));?>'">预览简历</div></div>
        <div class="clear"></div>
    </div>

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
    <script src="../public/js/popWin.js"></script>
    <script src="../public/js/qsCategory.js"></script>
    <script id="J_describeTemp" type="text/html">
      <div class="headernavfixed">
          <div class="headernav font18"><div class="title">简历标题<div class="return js-back"></div></div></div>
      </div>
      <div class="split-block"></div>
      <div class="list_height plist-txt notarrow">
          <div class="pic"></div>
          <div class="tit font14">简历标题</div>
          <div class="describe font12">
              <input type="text" id="tpl_title" value="<?php echo ($resume["title"]); ?>" class="font13">
          </div>
          <div class="arrow"></div>
          <div class="clear"></div>
      </div>
      <div class="split-block"></div>
      <div class="btn-spacing">
          <div id="titleBtn" class="qs-btn qs-btn-blue font18" title="确定">确定</div>
      </div>
    </script>
    <script type="text/javascript">
      $('#J_education').load("<?php echo U('personal/ajax_get_education_list',array('pid'=>$resume['id']));?>");
      $('#J_work').load("<?php echo U('personal/ajax_get_work_list',array('pid'=>$resume['id']));?>");
      $('#J_training').load("<?php echo U('personal/ajax_get_training_list',array('pid'=>$resume['id']));?>");
      $('#J_credent').load("<?php echo U('personal/ajax_get_credent_list',array('pid'=>$resume['id']));?>");
      $('#J_language').load("<?php echo U('personal/ajax_get_language_list',array('pid'=>$resume['id']));?>");
      var tip = {
        education : '教育经历',
        language : '语言能力',
        training : '培训经历',
        work : '工作经历',
        credent : '证书',
        img : '照片/作品'
      };
      $('.J_delete').live('click',function(){
        var f = $(this).parent(),
            type = $(this).parent().attr('type'),
            pid = $(this).parent().attr('pid'),
            id = $(this).parent().attr('sid');
        var popout = new QSpopout('删除'+tip[type]);
        popout.setContent('删除后将无法恢复，您确定要删除该'+tip[type]+'吗?');
        popout.getPrimaryBtn().on('click', function() {
            $.post(qscms.root + '?m=Mobile&c=Personal&a=del_'+type,{pid:pid,id:id},function(result){
              if(result.status == 1){
                f.remove();
                qsToast({type:1,context: result.msg});
              }else{
                qsToast({type:2,context: result.msg});
              }
            },'json');
        });
        popout.show();
      });
      $('#J_tags .del').live('click',function(){
        var pid = $(this).closest('#J_tags').attr('pid');
        $(this).parent().remove();
        var tag = $('#J_tags .J_tagList[tid]').map(function(){
          return $(this).attr('tid');
        }).get();
        var tag_cn = $('#J_tags .J_tagList[title]').not('[tid]').map(function(){
          return $(this).attr('title');
        }).get();
        if($('.J_tagList').length==0){
          $('#J_tags').remove();
        }
        $.post("<?php echo U('Personal/resume_edit_speciality');?>",{pid:pid,tag:tag,tag_cn:tag_cn},function(result){
          if(result.status == 1){
            qsToast({type:1,context: '特长标签删除成功！'});
          }else{
            qsToast({type:2,context: result.msg});
          }
        },'json');
      });
      var describeTemp = $('#J_describeTemp').html();
      $('.J_titleEdit').on('click',function(){
        var $this = $(this),
            baseTxt = $this.text();
        popWin.init({
            from:"right",
            html:describeTemp,
            handle:function(a){
              $('#tpl_title').val($('#J_title').html());
              $('#titleBtn').on('click',function(){
                  var title = $('#tpl_title').val();
                  if (title == "") {
                      qsToast({type:2,context: '请填写简历标题'});
                      return false;
                  }
                  if (title != "" && title.length > 12) {
                    qsToast({type:2,context: '简历标题应在1~12个字内'});
                    return false;
                  }
                  var pid = "<?php echo ($resume["id"]); ?>";
                  $.post("<?php echo U('Personal/resume_edit_title');?>",{pid:pid,title:title},function(result){
                      if(result.status == 1){
                        $('#J_title').html(title);
                        qsToast({type:1,context: result.msg});
                      }else{
                        qsToast({type:2,context: result.msg});
                      }
                      a.close();
                  },'json');
              });
            }
        })
      });
    </script>
	</body>
</html>