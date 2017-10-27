<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <?php $tag_jobs_show_class = new \Common\qscmstag\jobs_showTag(array('列表名'=>'jobs_info','职位id'=>$_GET['id'],'cache'=>'0','type'=>'run',));$jobs_info = $tag_jobs_show_class->run();$frontend = new \Common\Controller\FrontendController;$page_seo = $frontend->_config_seo(array("pname"=>"招聘详细页","title"=>"{jobs_name} - {companyname} - {site_name}","keywords"=>"{companyname},{jobs_name},{nature_cn},{category_cn},{district_cn}","description"=>"{companyname}招聘岗位,{jobs_name}","header_title"=>""),$jobs_info);?>
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
    <link rel="stylesheet" href="../public/css/jobs.css">
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
  <?php $tag_hotword_class = new \Common\qscmstag\hotwordTag(array('列表名'=>'hotword_list','显示数目'=>'12','cache'=>'0','type'=>'run',));$hotword_list = $tag_hotword_class->run();$frontend = new \Common\Controller\FrontendController;$page_seo = $frontend->_config_seo(array("pname"=>"招聘详细页","title"=>"{jobs_name} - {companyname} - {site_name}","keywords"=>"{companyname},{jobs_name},{nature_cn},{category_cn},{district_cn}","description"=>"{companyname}招聘岗位,{jobs_name}","header_title"=>""),$hotword_list);?>
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
<div class="jobsshowtop">
  <div class="jobsname font18"><?php echo ($jobs_info["jobs_name"]); ?>
      <?php if($jobs_info['emergency'] == 1): ?><img src="../public/images/231.png"/><?php endif; ?>
  </div>
  <div class="wage font18"><?php echo ($jobs_info["wage_cn"]); ?></div>
  <div class="city font14"><?php echo ($jobs_info["district_cn"]); ?></div>
  <div class="time font12"><?php echo ($jobs_info['refreshtime_cn']); ?></div>
</div>


<div class="jobsshowatt">
  <div class="attul">
  	<div class="attli t1">性别<?php echo ($jobs_info["sex_cn"]); ?></div>
	<div class="attli t2"><?php if($jobs_info["education"] == 0): ?>学历不限<?php else: echo ($jobs_info["education_cn"]); endif; ?></div>
	<div class="attli t3"><?php if($jobs_info["experience"] == 0): ?>经验不限<?php else: echo ($jobs_info["experience_cn"]); endif; ?></div>
	<div class="attli t4"><?php echo ($jobs_info["nature_cn"]); ?></div>
	<div class="attli t5"><?php if($jobs_info["age_cn"] == '不限'): ?>年龄不限<?php else: echo ($jobs_info["age_cn"]); endif; ?></div>
	<div class="attli t6"><?php if($jobs_info['department']): echo ($jobs_info["department"]); else: ?>部门不限<?php endif; ?></div>
	<div class="clear"></div>
  </div>
</div>

<?php if($jobs_info['tag_cn']): ?><div class="split-block"></div>
<div class="jobsshowtag font13">
  <div class="tagul">
  <?php if(is_array($jobs_info['tag_cn'])): $i = 0; $__LIST__ = $jobs_info['tag_cn'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$tag): $mod = ($i % 2 );++$i;?><div class="tagli substring"><?php echo ($tag); ?></div><?php endforeach; endif; else: echo "" ;endif; ?>
	<div class="clear"></div>
  </div>
</div><?php endif; ?>
<div class="split-block"></div>

<div class="jobsshowcom" onclick="javascript:location.href='<?php echo ($jobs_info["company_url"]); ?>'">
  	<div class="leftpic">
		<div class="imgbox"><img src="<?php echo ($jobs_info["company"]["logo"]); ?>"></div>
	</div>
    <div class="comtxt">
	  	<div class="cname font15 substring"><?php echo ($jobs_info["company"]["companyname"]); ?>
            <?php if($jobs_info['company']['audit'] == 1): ?><img src="../public/images/120.png" title="认证企业"><?php endif; ?>
            <?php if($jobs_info['company']['setmeal_id'] > 1): ?><img src="../public/images/121.png" title="<?php echo ($info["setmeal_name"]); ?>"><?php endif; ?>
            <?php if($jobs_info['company']['famous'] == 1): ?><img src="../public/images/122.png" title="诚聘通企业"><?php endif; ?>
        </div>
        <div class="city font12"><?php echo ($jobs_info["company"]["scale_cn"]); ?>  | <?php echo ($jobs_info["company"]["nature_cn"]); ?></div>
		<div class="trade font12"><?php echo ($jobs_info["company"]["trade_cn"]); ?></div>
    </div>
	<div class="clear"></div>
  
</div>



<div class="jobsshowadder link_gray6">
    <div class="adder">
    <?php if($jobs_info['map_x'] > 0 && $jobs_info['map_y'] > 0): ?><a class="show-map" href="#map">地址：<?php echo ($jobs_info["company"]["address"]); ?><img src="../public/images/123.png"></a>
    <?php else: ?>
        地址：<?php echo ($jobs_info["company"]["address"]); endif; ?>
    </div>
</div>

<div class="split-block"></div>

<div class="jobsshowst">
  <div class="eattitle list_height">
  职位统计
    <div class="ritle font12">企业最近登录: <?php echo ($jobs_info["company"]["last_login_time"]); ?></div>
  </div>

  <div class="stli"><span><?php echo ($jobs_info["company"]["reply_ratio"]); ?>%</span><br>简历处理率</div>
  <div class="stli"><span><?php echo ($jobs_info["company"]["reply_time"]); ?></span><br>简历平均处理时长</div>
  <div class="clear"></div>
</div>

<div class="split-block"></div>

<div class="jobsshowsdes">
  <div class="eattitle list_height">职位描述</div> 
  <div class="txt"><?php echo nl2br($jobs_info['contents']);?></div>
</div>

<div class="split-block"></div>


<div class="jobsshowcon">
  <div class="eattitle list_height">
  联系方式
    <?php if(!C('visitor.utype') && $jobs_info['show_contact_direct'] == 0 && $jobs_info['hide']): ?><div class="ritle font12" onclick="javascript:location.href='<?php echo U('members/login');?>'">请登录后查看联系方式</div><?php endif; ?>
  </div>
  <?php if($jobs_info['contact']['telephone_show'] == 0): ?><div class="mob">企业设置不公开</div>
  <?php else: ?>
  <div class="mob"><?php echo ($jobs_info["contact"]["telephone"]); ?> 
  <?php if($jobs_info['contact']['contact_show'] == 1): ?>(<?php echo ($jobs_info["contact"]["contact"]); ?>)<?php endif; ?>
  </div><?php endif; ?>
  <div class="map link_blue"><?php echo ($jobs_info["contact"]["address"]); ?> <?php if($jobs_info['map_x'] > 0 && $jobs_info['map_y'] > 0): ?><a class="show-map" href="#map">[地图]</a><?php endif; ?></div>
  <?php if($jobs_info['company']['famous'] == 1): ?><div class="tip font12">该企业已加入诚聘通会员，可放心求职</div>
  <?php else: ?>
   <div class="tip font12">面试过程中，遇到用人单位收取费用请提高警惕！</div><?php endif; ?>
</div>

<?php $tag_jobs_list_class = new \Common\qscmstag\jobs_listTag(array('列表名'=>'jobslist','显示数目'=>'6','职位分类'=>$jobs_info['jobcategory'],'去除id'=>$jobs_info['id'],'cache'=>'0','type'=>'run',));$jobslist = $tag_jobs_list_class->run();$frontend = new \Common\Controller\FrontendController;$page_seo = $frontend->_config_seo(array("pname"=>"招聘详细页","title"=>"{jobs_name} - {companyname} - {site_name}","keywords"=>"{companyname},{jobs_name},{nature_cn},{category_cn},{district_cn}","description"=>"{companyname}招聘岗位,{jobs_name}","header_title"=>""),$jobslist);?>
<?php if(!empty($jobslist['list'])): ?><div class="split-block"></div>
<div class="jobsshowrec">
  <div class="eattitle list_height">
  推荐职位
    <div class="ritle font12 link_gray9"><a href="<?php echo U('Jobs/index');?>">查看更多></a></div>
  </div>
 <?php if(is_array($jobslist['list'])): $i = 0; $__LIST__ = $jobslist['list'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$jobs): $mod = ($i % 2 );++$i;?><div class="jobslist">
    <div class="jname font15 link_gray6 substring"><a href="<?php echo ($jobs["jobs_url"]); ?>"><?php echo ($jobs["jobs_name"]); ?></a></div>
	<div class="cname font12 substring"><?php echo ($jobs["companyname"]); ?> | <?php echo ($jobs["district_cn"]); ?></div>
	<div class="wage font13"><?php echo ($jobs["wage_cn"]); ?></div>
	<div class="time font12"><?php echo ($jobs["refreshtime_cn"]); ?></div>
  </div><?php endforeach; endif; else: echo "" ;endif; ?>
</div>
<div class="jobssshowbottomso link_blue">没有找到满意的职位? <a href="<?php echo U('Jobs/index');?>">立即搜索</a></div><?php endif; ?>


<div class="split-block-footnav"></div>
<?php if(($jobs_info['tmp']) != "1"): ?><div class="jobsfootnav">
		<div class="btns link_gray6">
		  <div class="qs-btn qs-btn-medium qs-btn-blue qs-btn-inline apply_jobs">投递简历</div>
      <?php if($jobs_info['contact']['telephone_show'] == 0): ?><a href="javascript:;" class="J_tel tel font9 hide_tel"><img src="../public/images/130.png"><br>
拨打电话</a>
      <?php else: ?>
		  <a href="tel:<?php if($jobs_info["contact"]["telephone_"]): echo ($jobs_info["contact"]["telephone_"]); else: echo ($jobs_info["contact"]["landline_tel"]); endif; ?>" class="J_tel tel font9"><img src="../public/images/130.png"><br>
拨打电话</a><?php endif; ?>
      <div class="fov font9 favor">
      <?php if($jobs_info['favor']): ?><img src="../public/images/175.png"><br>已收藏
      <?php else: ?>
        <img src="../public/images/131.png"><br>收藏职位<?php endif; ?>
      </div>
  </div>
</div><?php endif; ?>
<script id="tpl-map" type="text/html">
    <!--地图-->
    <div class="headernavfixed">
        <div class="headernav font18"><div class="title">企业位置<div class="return js-back"></div></div></div>
    </div>
    <div class="com-map">
        <div class="map" id="container"></div>
    </div>
    <div class="split-block"></div>
    <div class="btn-spacing">
        <div id="mapBtn" class="qs-btn qs-btn-blue font18" title="返回">返回</div>
    </div>
</script>
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
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=<?php echo C('qscms_map_ak');?>"></script>
<script type="text/javascript" charset="utf-8" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript">
      $.getJSON("<?php echo U('AjaxCommon/jobs_click');?>",{id:"<?php echo ($jobs_info["id"]); ?>"});
      $.getJSON("<?php echo U('AjaxCommon/company_statistics_add');?>",{comid:"<?php echo ($jobs_info['company_id']); ?>",jobid:"<?php echo ($jobs_info['id']); ?>"});
      var mapTemp = $('#tpl-map').html();
      $(".show-map").on('click', function() {
          var $this = $(this);
          popWin.init({
              from:"right",
              html:mapTemp,
              handle:function(a){
                var map = new BMap.Map("container");
                var point = new BMap.Point("<?php echo ($jobs_info['map_x']); ?>","<?php echo ($jobs_info['map_y']); ?>");  // 创建点坐标
                map.centerAndZoom(point, "<?php echo ($jobs_info['map_zoom']); ?>");
                var qs_marker = new BMap.Marker(point);        // 创建标注
                map.addOverlay(qs_marker);
                map.setCenter(point);
                map.addControl(new BMap.NavigationControl());//添加鱼骨
                map.enableScrollWheelZoom();//启用滚轮放大缩小，默认禁用。
                $('#mapBtn').on('click',function(){
                    a.close();
                });
              }
          })
      });
  var isVisitor = "<?php echo C('visitor.uid');?>";
  var utype = "<?php echo C('visitor.utype');?>";
  // 收藏职位点击事件绑定
    $(".favor").on('click',function(){
      var obj = $(this);
      var url = "<?php echo U('ajaxPersonal/jobs_favorites');?>";
      var jid = "<?php echo ($jobs_info['id']); ?>";
      if ((isVisitor > 0)) {
        if(utype != 2){
          qsToast({type:2,context: '请登录个人会员'});
          return false;
        }
        $.getJSON(url,{jid:jid},function(result){
          if(result.status==1){
            qsToast({type:1,context: result.msg});
            if(result.data=='cancel'){
              obj.html('<img src="../public/images/131.png"><br>收藏职位');
            }else{
              obj.html('<img src="../public/images/175.png"><br>已收藏');
            }
          } else {
            qsToast({type:2,context: result.msg});
            return false;
          }
        });
      } else {
        window.location.href="<?php echo U('members/login');?>";
        return false;
      }
    });
    // 申请职位点击事件绑定
    $(".apply_jobs").on('click',function(){
      var url = "<?php echo U('ajaxPersonal/resume_apply');?>";
      var jid = "<?php echo ($jobs_info['id']); ?>";
      if ((isVisitor > 0)) {
        if(utype != 2){
          qsToast({type:2,context: '请登录个人会员'});
          return false;
        }
        $.getJSON(url,{jid:jid},function(result){
          if(result.status==1){
            qsToast({type:1,context: result.msg});
          } else {
            qsToast({type:2,context: result.msg});
            return false;
          }
        });
      } else {
          if (eval(qscms.smsTatus)) {
              window.location.href=qscms.root+'?m=Mobile&c=AjaxPersonal&a=resume_add_dig&jid='+jid;
          } else {
              window.location.href="<?php echo url_rewrite('QS_login');?>";
          }
      }
    });
    $('.J_tel').on('click',function(){
      if (isVisitor > 0) {
          if(utype != 2){
            qsToast({type:2,context: '请登录个人会员'});
            return false;
          }
          if($(this.hasClass('hide_tel'))){
              qsToast({type:2,context: '该企业设置联系方式不公开！'});
              return false;
          }
      }else{
          window.location.href="<?php echo U('members/login');?>";
          return false;
      }
    });
    wx.config({
    // debug: true,
    appId: '<?php echo ($signPackage["appId"]); ?>',
    timestamp: '<?php echo ($signPackage["timestamp"]); ?>',
    nonceStr: '<?php echo ($signPackage["nonceStr"]); ?>',
    signature: '<?php echo ($signPackage["signature"]); ?>',
    jsApiList: [
      // 所有要调用的 API 都要加到这个列表中
      "onMenuShareTimeline",
      "onMenuShareAppMessage",
      "onMenuShareQQ",
      "onMenuShareWeibo"
    ]
  });
  wx.ready(function () 
  {
      var linkUrl = "<?php echo build_mobile_url(array('c'=>'Jobs','a'=>'show','params'=>'id='.$jobs_info['id']));?>";//放链接
      var title = "<?php echo ($jobs_info['company']['companyname']); ?>高薪诚聘<?php echo ($jobs_info['jobs_name']); ?>,小伙伴们快来看看吧。";
      var desc = "<?php echo ($jobs_info['company']['companyname']); ?>正在招聘人才，待遇福利优厚，欢迎各路人才，快来看看吧。"; 
      var imgUrl="<?php echo C('qscms_site_domain'); echo C('qscms_site_dir'); echo ($jobs_info['company']['logo']); ?>";//图片链接
      
      wx.onMenuShareTimeline({
          title: title, // 分享标题
          desc: desc, // 分享描述
          link: linkUrl, // 分享链接
          imgUrl: imgUrl, // 分享图标
          success: function () { 
          // 用户确认分享后执行的回调函数
          },
          cancel: function () { 
              // 用户取消分享后执行的回调函数
          }
      });
      wx.onMenuShareAppMessage({
          title: title, // 分享标题
          desc: desc, // 分享描述
          link: linkUrl, // 分享链接
          imgUrl: imgUrl, // 分享图标
          type: '', // 分享类型,music、video或link，不填默认为link
          dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
                    success: function () { 
          // 用户确认分享后执行的回调函数
          },
          cancel: function () { 
              // 用户取消分享后执行的回调函数
          }
      });
      wx.onMenuShareQQ({
          title: title, // 分享标题
          desc: desc, // 分享描述
          link: linkUrl, // 分享链接
          imgUrl: imgUrl, // 分享图标
                    success: function () { 
          // 用户确认分享后执行的回调函数
          },
          cancel: function () { 
              // 用户取消分享后执行的回调函数
          }
      });
      wx.onMenuShareWeibo({
          title: title, // 分享标题
          desc: desc, // 分享描述
          link: linkUrl, // 分享链接
          imgUrl: imgUrl, // 分享图标
                    success: function () { 
          // 用户确认分享后执行的回调函数
          },
          cancel: function () { 
              // 用户取消分享后执行的回调函数
          }
      });
  });
</script>
</body>
</html>