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
	

	public function listLatest(){
		return $this->lists();
	}
	public function listPartTime(){
		return $this->lists();
	}
	public function listFinance(){
		return $this->lists();
	}
	public function listDriver(){
		return $this->lists();
	}
	public function listOthers(){
		return $this->lists();
	}

	public function show(){
		$this->display();
	}
	/**工作列表**/
	public function lists(){
		$this->display("Wap/lists");
	}


}
?>