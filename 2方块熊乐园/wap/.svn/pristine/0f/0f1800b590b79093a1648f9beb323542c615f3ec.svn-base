/* ============================================================
 * jquery.resumelist.js   Resume Search List page js set 
 * ============================================================
 * Copyright Mr jobs.
 * ============================================================ */
!function($) {

	//  Search type switch 
	$('.J_sli').click(function() {
		$(this).addClass('select').siblings().removeClass('select');
		var indexValue = $('.J_sli').index(this);
		var typeValue = $.trim($(this).data('type'));
		$('input[name="search_type"]').val(typeValue);
	});

	//  Put away 、 Expand the filter criteria 
	foldAction('.J_showbtn', '.J_so_condition');
	function foldAction(trigger, performer) {
		$(trigger).click(function() {
			$(this).addClass('none').siblings().removeClass('none');
			var indexValue = $(trigger).index(this);
			if (indexValue) {
				$(performer).slideUp();
			} else {
				$(performer).slideDown();
			}
		})
	}
	$('.J_showJobConditions').die().live('click', function(event) {
		$(this).addClass('none').siblings().removeClass('none');
		var indexValue = $('.J_showJobConditions').index(this);
		if (indexValue) {
			$('.for_up').slideDown();
		} else {
			$('.for_up').slideUp();
		}
	});

	//  List detailed and easy to switch 
	$('.J_detailList').click(function() {
		$(this).addClass('select').siblings('.J_detailList').removeClass('select');
		var indexValue = $('.J_detailList').index(this),
			type = $(this).attr('show_type');
		if (indexValue) {
			$('.J_allListBox').find('.detail').hide();
			$('.J_allListBox').find('.J_resumeStatus').addClass('show');
		} else {
			$('.J_allListBox').find('.detail').show();
			$('.J_allListBox').find('.J_resumeStatus').removeClass('show');
		}
		$.getJSON(qscms.root + '?m=Home&c=AjaxCommon&a=list_show_type',{action:'resume',type:type});
	});

	//  Surrounding talent and popular talent switch 
	$('.J_resume_hotnear').click(function() {
		$(this).addClass('select').siblings('.J_resume_hotnear').removeClass('select');
		var indexValue = $('.J_resume_hotnear').index(this);
		$('.J_resume_hotnear_show').removeClass('show');
		$('.J_resume_hotnear_show').eq(indexValue).addClass('show');
	});

	// 列表详细展开 Put away 
	$('.J_resumeStatus').click(function(){
		if($(this).hasClass('show')){
			$(this).removeClass('show');
			$(this).closest('.J_resumeList').find('.detail').show();
		}else{
			$(this).addClass('show');
			$(this).closest('.J_resumeList').find('.detail').hide();
		}
	});

	//  select all 、 Anti-election 
	$('.J_allSelected').click(function() {
		var isChecked = $(this).hasClass('select');
		var listArray = $('.J_allListBox .J_allList');
		if (isChecked) {
			$(this).removeClass('select');
			$.each(listArray, function(index, val) {
				$(this).removeClass('select');
			});
			$('.J_resumeList').removeClass('select');
		} else {
			$(this).addClass('select');
			$.each(listArray, function(index, val) {
				$(this).addClass('select');
			});
			$('.J_resumeList').addClass('select');
		}
		
	});
	$('.J_allList').click(function(){
		var isChecked = $(this).hasClass('select');
		if (isChecked) {
			$(this).removeClass('select');
			$(this).closest('.J_resumeList').removeClass('select');
			$('.J_allSelected').removeClass('select');
		} else {
			$(this).addClass('select');
			$(this).closest('.J_resumeList').addClass('select');
			var listArray = $('.J_allListBox .J_allList');
			var listCheckedArray = $('.J_allListBox .J_allList.select');
			if (listArray.length == listCheckedArray.length) {
				$('.J_allSelected').addClass('select');
			}
		}
	});

	//  download 、 Collection resume 
	resumeSomething('.J_downResume', ' download 成功！', true);
	resumeSomething('.J_collectForResume', ' Collection success ！', false);

	function resumeSomething (trigger, successMsg, isdown) {
		$(trigger).click(function() {
			var batch = eval($(this).data('batch'));
			var url = $(this).data('url');
			var ridValue = '';
			var isType = '';
			if (batch) {
				if (listCheckEmpty()) {
					disapperTooltip('remind',' You have not selected your resume yet ！');
					return false;
				} else {
					var listCheckedObjs = $('.J_allListBox .J_allList.select');
					var ridArray = new Array();
					$.each(listCheckedObjs, function(index, val) {
						ridArray[index] = $(this).closest('.J_resumeList').data('rid');
					});
					ridValue = ridArray.join(',');
				}
			} else {
				ridValue = $(this).closest('.J_resumeList').data('rid');
			}
			isdown ? isType = 'GET' : isType = 'POST';
			$.ajax({
				url: url,
				type: isType,
				dataType: 'json',
				data: {rid: ridValue}
			})
			.done(function(data) {
				if (parseInt(data.status)) {
					if (isdown) {
						$(this).dialog({
							title: ' download 简历',
							border: false,
							footer: false,
							content:data.msg
						});
					} else {
						disapperTooltip('success', successMsg);
					}
				} else {
					if (eval(data.dialog)) {
						var qsDialog = $(this).dialog({
			        		loading: true,
							footer: false,
							header: false,
							border: false,
							backdrop: false
						});
						var loginUrl = qscms.root + '?m=Home&c=AjaxCommon&a=get_login_dig';
						$.getJSON(loginUrl, function(result){
				            if(result.status==1){
								qsDialog.hide();
								var qsDialogSon = $(this).dialog({
									title: ' Member Login ',
									content: result.data.html,
									footer: false,
									border: false
								});
				    			qsDialogSon.setInnerPadding(false);
				            } else {
				            	qsDialog.hide();
				                disapperTooltip("remind", result.msg);
				            }
				        });
					} else {
						disapperTooltip("remind", data.msg);
					}
				}
			})
		});
	}

	//  Determines whether there are selected items in the list 
	function listCheckEmpty() {
		var listCheckedArray = $('.J_allListBox .J_allList.select');
		if (listCheckedArray.length) {
			return false;
		} else {
			return true;
		}
	}

	//  Professional category related js
	var majorValue = $('input[name="major"]').val();
	if (majorValue) {
		if(!majorValue.length) {
			$('.tab_list').eq(0).addClass('select');
			$('.tab_content').eq(0).addClass('select');
		} else {
			var recoverIndex = $('.tab_list').index($('.tab_list.select'));
			$('.tab_content').eq(recoverIndex).addClass('select');
		}
	} else {
		$('.tab_list').eq(0).addClass('select');
		$('.tab_content').eq(0).addClass('select');
	}
	$('.tab_list').click(function () {
		$(this).addClass('select').siblings().removeClass('select');
		var thisIndex = $('.tab_list').index(this);
		$('.tab_content').eq(thisIndex).addClass('select').siblings('.tab_content').removeClass('select');
	});

	//  Keyword changes ， Search condition is empty 
	$('#ajax_search_location').submit(function(){
		var nowKeyValue = $.trim($('input[name="key"]').val());
		var orgKeyValue = $.trim($('input[name="key"]').data('original'));
		if(nowKeyValue.length && nowKeyValue.length<2){
			disapperTooltip("remind",' The length of the word should be greater than 2 The word ！');
			return !1;
		}
		if (!(nowKeyValue == orgKeyValue)) {
			$('.J_forclear').val('');
		}
		var post_data = $('#ajax_search_location').serialize();
		if(qscms.keyUrlencode==1){
			post_data = encodeURI(post_data);
		}
		$.post($('#ajax_search_location').attr('action'),post_data,function(result){
			window.location=result.data;
		},'json');
		return false;
	});
}(window.jQuery);