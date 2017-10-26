<?php if (!defined('THINK_PATH')) exit(); if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><div class="langmod <?php if($count == $i): ?>last<?php endif; ?>" type="language" pid="<?php echo ($pid); ?>" sid="<?php echo ($list['id']); ?>">
		<div class="expedit" onClick="javascript:location.href='<?php echo U('personal/resume_edit_lang',array('pid'=>$pid,'id'=>$list['id']));?>'"></div>
		<div class="J_delete expdel"></div>
		<div class="tagli"><?php echo ($list["language_cn"]); ?><span><?php echo ($list["level_cn"]); ?></span></div>
	</div><?php endforeach; endif; else: echo "" ;endif; ?>