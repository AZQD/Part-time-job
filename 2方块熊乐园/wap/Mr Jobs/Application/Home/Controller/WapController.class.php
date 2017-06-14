<?php
namespace Home\Controller;
use Common\Controller\FrontendController;
class WapController extends FrontendController{
	public function _initialize() {
        parent::_initialize();
    }
    public function index(){
		$this->display();
	}
	
	/**工作列表**/
	public function lists(){
		$this->display();
	}


}
?>