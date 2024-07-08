<?php 

class HomeController extends Controller{


    private $data = array();

	public function __construct(){
		$user = new Users();
		if (!$user->isLogged()) {
			header('Location: '.BASE_URL.'Login');
			exit;
		}else{
			$user->setLoggedUser();
			$this->data["name"] = $user->getName();
		}
	}


    public function index(){
		$this->data['nivel-1'] = 'Dashboard';

        $this->loadTemplateAdmin('Admin/blank', $this->data);
    }
}