<?php if (!defined('THINK_PATH')) exit(); if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><div class="expmod <?php if($count == $i): ?>last<?php endif; ?>" type="training" pid="<?php echo ($pid); ?>" sid="<?php echo ($list['id']); ?>">
		<div class="expedit" onClick="javascript:location.href='<?php echo U('personal/resume_edit_train',array('pid'=>$pid,'id'=>$list['id']));?>'"></div>
		<div class="J_delete expdel"></div>
		<div class="exptr1 substring"><?php echo ($list["agency"]); ?></div>
		<div class="exptr2 substring font13"><?php echo ($list["course"]); ?>&nbsp;|&nbsp;<?php echo ($list["startyear"]); ?>-<?php echo ($list["startmonth"]); ?> 至<?php if($list['todate'] == 1): ?>今<?php else: ?> <?php echo ($list["endyear"]); ?>-<?php echo ($list["endmonth"]); endif; ?></div>
		<div class="exptr3 font12"><?php echo ($list["description"]); ?></div>
	</div><?php endforeach; endif; else: echo "" ;endif; ?>