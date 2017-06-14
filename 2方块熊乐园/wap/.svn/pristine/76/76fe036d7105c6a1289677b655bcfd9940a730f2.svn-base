<?php if (!defined('THINK_PATH')) exit(); if(empty($visitor['uid'])): ?><span class="link_yellow">Welcome to <?php echo C('qscms_site_name');?>! <a href="<?php echo U('members/login');?>">Login</a> or <a href="<?php echo U('members/register');?>">Register</a></span>
<?php else: ?>
	<div class="n welcome link_yellow">Hi, &nbsp;<a href="<?php echo U('members/index');?>"><?php echo cut_str($visitor['username'],5,0,'…');?></a>&nbsp;Login<div class="vertical_line"></div></div>
	<?php if($visitor['utype'] == 2): if(empty($resume)): ?><div class="n refresh"><a href="<?php echo U('personal/resume_add');?>">New Resume</a><div class="vertical_line"></div></div>
		<?php else: ?>
			<div class="n refresh">
				<?php if(!$refresh): ?><div class="dot"></div><?php endif; ?>
				<a href="javascript:;" id="refresh_resume_top" pid="<?php echo ($resume); ?>">Update Resume</a>
				<div class="vertical_line"></div>
			</div>
			<div class="name per_name">
				<a class="aname" href="<?php echo U('personal/index');?>"><?php echo ($realname); ?></a><div class="vertical_line"></div><div class="arrow_icon"></div><div class="arrow_icon_hover"></div>
				<div class="name_list">
					<li><a href="<?php echo url_rewrite('QS_resumeshow',array('id'=>$resume,'preview'=>1));?>">Preview</a></li>
					<li><a href="<?php echo U('personal/resume_list');?>">Resumes</a></li>
					<li><a href="<?php echo U('personal/jobs_apply');?>">Jobs Applied</a></li>
					<li><a href="<?php echo U('personal/jobs_interview');?>">Interviews</a></li>
					<li><a href="<?php echo U('personal/user_info');?>">Account</a></li>
				</div>
			</div>
			<div class="n top_min_pms"><?php if($msgtip['unread']): ?><div class="dot"></div><?php endif; ?><a href="<?php echo U('personal/msg_pms');?>">Messages</a><div class="vertical_line"></div></div>
			<script type="text/javascript">
				var anameTexts = $('.aname').text();
				if (anameTexts.length > 3) {
					$('.arrow_icon').css('right', '7px');
					$('.arrow_icon_hover').css('right', '7px');
				}
			</script><?php endif; ?>
	<?php else: ?>
		<div class="n refresh">
			<?php if(empty($jobs)): ?><div>
					<?php if($upper_limit != 1): ?><a href="<?php echo U('company/jobs_add');?>">New Job</a>
					<?php else: ?>
						<a href="javascript:;" class="J_addJobsDig">New Job</a><?php endif; ?>
					<div class="vertical_line"></div>
				</div>
			<?php else: ?>
				<div><a href="javascript:;" id="refresh_jobs_all_top">Update Job</a><div class="vertical_line"></div></div><?php endif; ?>
		</div>
		<div class="name com_name">
			<a class="aname" href="<?php echo U('company/index');?>"><?php echo ($company["companyname"]); ?></a><div class="vertical_line"></div><div class="arrow_icon"></div><div class="arrow_icon_hover"></div>
			<div class="name_list">
			<?php if($company['contents']): ?><li><a target="_blank" href="<?php echo url_rewrite('QS_companyshow',array('id'=>$company['id']));?>">Home</a></li><?php endif; ?>
				<li>
					<?php if($upper_limit != 1): ?><a href="<?php echo U('company/jobs_add');?>">New Job</a>
					<?php else: ?>
						<a href="javascript:;" class="J_addJobsDig">New Job</a><?php endif; ?>
				</li>
				<li><a href="<?php echo U('company/jobs_list');?>">Jobs</a></li>
				<li><a href="<?php echo U('company/jobs_apply');?>">Resumes</a></li>
				<li><a href="<?php echo U('company/com_info');?>">Account</a></li>
			</div>
		</div>
		<div class="n top_min_pms"><?php if($msgtip['unread']): ?><div class="dot"></div><?php endif; ?><a href="<?php echo U('company/pms_sys');?>">Messages</a><div class="vertical_line"></div></div><?php endif; ?>
	<div class="n quit link_gray6"><a href="<?php echo U('members/logout');?>">Logout</a></div>
	<div class="clear"></div><?php endif; ?>
<link href="../public/css/company/company_ajax_dialog.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	$('#J_header .name').hover(function() {
		$(this).addClass('hover');
	}, function() {
		$(this).removeClass('hover');
	});
	$("#refresh_jobs_all_top").click(function(){
    	$.getJSON("<?php echo U('CompanyService/jobs_refresh_all');?>",function(result){
    		if(result.status==1){
    			disapperTooltip('success',result.msg);
    		}
    		else if(result.status==2)
    		{
    			var qsDialog = $(this).dialog({
	                title: 'Batch Update Jobs',
	                loading: true,
	                border: false,
	                yes: function () {
	                	window.location.href=result.data;
	                }
	            });
	            qsDialog.setBtns(['Update a Job', 'Cancel']);
	            qsDialog.setContent('<div class="refresh_jobs_all_confirm">' + result.msg + '</div>');
    		}
    		else
    		{
			disapperTooltip('remind',result.msg);
    		}
    	});
    });
    $('.J_addJobsDig').click(function(){
    	var qsDialog = $(this).dialog({
            title: 'New Job',
            loading: true,
            border: false,
            yes: function () {
            	window.location.href=result.data;
            }
        });
    	var href = $(this).attr('href');
    	if(href == 'javascript:;'){
    		$.getJSON("<?php echo U('ajaxCompany/jobs_add_guide_dig');?>",function(result){
    			if(result.status == 1){
    				qsDialog.hide();
    				var son_qsDialog = $(this).dialog({
			            title: 'New Job',
			            content:result.data.html,
			            border: false,
			            yes: function () {
			            	if(result.data.hidden_val==1){
			            		window.location.href="<?php echo U('CompanyService/index');?>";
			            	}
			            }
			        });
			        if(result.data.hidden_val==1){
			        	son_qsDialog.setBtns(['UPGRADE', 'Cancel']);
			        }
    			}else{
    				disapperTooltip('remind',result.msg);
    			}
    		})
    	}
    });
    // 顶部刷新简历
    $('#refresh_resume_top').click(function() {
    	var pid = $(this).attr('pid');
    	$.post("<?php echo U('personal/refresh_resume');?>",{pid:pid},function(result){
			if(result.status == 1){
				if(result.data){
					disapperTooltip("goldremind", 'Update resume ['+result.data+'<?php echo C('qscms_points_byname');?><span class="point">+'+result.data+'</span>]');
				}else{
					disapperTooltip('success',result.msg);
				}
				$.getJSON("<?php echo U('AjaxCommon/get_header_min');?>",function(result){
					if(result.status == 1){
						$('#J_header').html(result.data.html);
					}
				});
			}else{
				disapperTooltip('remind',result.msg);
			}
		},'json');
    });
</script>