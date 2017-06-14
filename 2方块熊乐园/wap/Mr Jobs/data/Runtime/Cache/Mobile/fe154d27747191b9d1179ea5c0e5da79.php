<?php if (!defined('THINK_PATH')) exit(); if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><div class="expmod <?php if($count == $i): ?>last<?php endif; ?>" type="work" pid="<?php echo ($pid); ?>" sid="<?php echo ($list['id']); ?>">
		<div class="expedit" <?php if(!IS_AJAX): ?>onClick="javascript:location.href='<?php echo U('personal/resume_edit_work',array('pid'=>$pid,'id'=>$list['id']));?>'"<?php endif; ?>></div>
		<?php if(IS_AJAX): ?><input type="hidden" class="expComName" value="<?php echo ($list["companyname"]); ?>">
			<input type="hidden" class="expJobName" value="<?php echo ($list["jobs"]); ?>">
			<input type="hidden" class="expAchievements" value="<?php echo ($list["achievements"]); ?>">
			<input type="hidden" class="expWorkStartyear" value="<?php echo ($list['startyear']); ?>">
			<input type="hidden" class="expWorkStartmonth" value="<?php echo ($list['startmonth']); ?>">
			<input type="hidden" class="expWorkEndyear" value="<?php echo ($list['endyear']); ?>">
			<input type="hidden" class="expWorkEndmonth" value="<?php echo ($list['endmonth']); ?>"><?php endif; ?>
		<div class="J_delete expdel"></div>
		<div class="exptr1 substring"><?php echo ($list["companyname"]); ?><span class="font13">(<?php if($list['todate'] == 1): echo ddate($list['startyear'].'-'.$list['startmonth'],date('Y-m',time())); else: echo ddate($list['startyear'].'-'.$list['startmonth'],$list['endyear'].'-'.$list['endmonth']); endif; ?>)</span></div>
		<div class="exptr2 substring font13	"><?php echo ($list["jobs"]); ?>&nbsp;|&nbsp;<?php echo ($list["startyear"]); ?>-<?php echo ($list["startmonth"]); ?> 至<?php if($list['todate'] == 1): ?>今<?php else: ?> <?php echo ($list["endyear"]); ?>-<?php echo ($list["endmonth"]); endif; ?></div>
		<div class="exptr3 font12"><?php echo ($list["achievements"]); ?></div>
	</div><?php endforeach; endif; else: echo "" ;endif; ?>