<?php if (!defined('THINK_PATH')) exit(); if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><div class="expmod <?php if($count == $i): ?>last<?php endif; ?>" type="education" pid="<?php echo ($pid); ?>" sid="<?php echo ($list['id']); ?>">
		<div class="expedit" <?php if(!IS_AJAX): ?>onClick="javascript:location.href='<?php echo U('personal/resume_edit_edu',array('pid'=>$pid,'id'=>$list['id']));?>'"<?php endif; ?>></div>
        <?php if(IS_AJAX): ?><input type="hidden" class="expSchool" value="<?php echo ($list["school"]); ?>">
            <input type="hidden" class="expSpeciality" value="<?php echo ($list["speciality"]); ?>">
            <input type="hidden" class="expEducation" value="<?php echo ($list["education"]); ?>">
            <input type="hidden" class="expEducationCn" value="<?php echo ($list["education_cn"]); ?>">
            <input type="hidden" class="expEduStartyear" value="<?php echo ($list['startyear']); ?>">
            <input type="hidden" class="expEduStartmonth" value="<?php echo ($list['startmonth']); ?>">
            <input type="hidden" class="expEduEndyear" value="<?php echo ($list['endyear']); ?>">
            <input type="hidden" class="expEduEndmonth" value="<?php echo ($list['endmonth']); ?>"><?php endif; ?>
		<div class="J_delete expdel"></div>
		<div class="exptr1 substring"><?php echo ($list["school"]); ?><span class="font13"><?php echo ($list["education_cn"]); ?></span></div>
		<div class="exptr2 substring font13"><?php echo ($list["startyear"]); ?>-<?php echo ($list["startmonth"]); ?> 至<?php if($list['todate'] == 1): ?>今<?php else: ?> <?php echo ($list["endyear"]); ?>-<?php echo ($list["endmonth"]); endif; ?>&nbsp;|&nbsp;<?php echo ($list["speciality"]); ?></div>
	</div><?php endforeach; endif; else: echo "" ;endif; ?>