<?php if (!defined('THINK_PATH')) exit(); if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><div class="expmod <?php if($count == $i): ?>last<?php endif; ?>" type="credent" pid="<?php echo ($pid); ?>" sid="<?php echo ($list['id']); ?>">
		<div class="expedit" onClick="javascript:location.href='<?php echo U('personal/resume_edit_certificate',array('pid'=>$pid,'id'=>$list['id']));?>'"></div>
		<div class="J_delete expdel"></div>
		<div class="exptr1"><?php echo ($list["name"]); ?><span>(<?php echo ($list["year"]); ?>.<?php echo ($list["month"]); ?>)</span></div>
	</div><?php endforeach; endif; else: echo "" ;endif; ?>