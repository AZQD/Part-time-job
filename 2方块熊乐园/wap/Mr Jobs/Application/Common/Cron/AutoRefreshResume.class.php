<?php
/*
* Mr jobs 计划任务 自动刷新简历
* ============================================================================
* 版权所有: Mr jobs网络，并保留所有权利。
* 网站地址: http://www.jobs.kalichimall.com；
* ----------------------------------------------------------------------------
* 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
* 使用；不允许对程序代码以任何形式任何目的的再发布。
* ============================================================================
*/
defined('THINK_PATH') or exit();
ignore_user_abort(true);
class AutoRefreshResume{
	public function run(){
		$map['refreshtime'] = array('elt',time());
		$map['type'] = 2;
		$list = M('QueueAutoRefresh')->where($map)->select();
		$pid_arr = array();
		foreach ($list as $key => $value) {
			$pid_arr[] = $value['pid'];
		}
		if(!empty($pid_arr)){
			$r = D('Resume')->admin_refresh_resume($pid_arr);
			if($r){
				M('QueueAutoRefresh')->where($map)->delete();
			}
		}
	}
}
?>