<?php defined('SYSPATH') or die('No direct script access.');
class Controller_Login extends Controller {
	
	// login
	public function action_index()
	{
		if($this->request->method()=='POST'){
			
			// get value from form
			$postEmail=$_POST['email'];
			$postPassword=$_POST['password'];
			
			// validation
			$post = Validation::factory($_POST)
					->rule('email','not_empty')
					->rule('password','not_empty');
			
			// if validation success
			if($post->check()){
				$username='';
				$data = ORM::factory('users')->where('email','=',$postEmail)->where('password','=',$postPassword)->find_all();
				foreach($data as $info){
					$username=$info->username;
				}
				if($username){
					$session = Session::instance();
					$session->set('username', $username);
					$username = $session->get('username');
					//$session->destroy();
					//exit;
					//$this->request->redirect('controller/action');
					HTTP::redirect('login/success/'.$username, 302);
				}else{
					HTTP::redirect('login', 302);
				}
				
			}else{
				$error = $post->errors('form/login');
			}
			
		}
		
		// define page title
		echo $this->response->title = 'Login Form';
		// define maincontent
		echo $this->response->body = view::factory('form/login')
										//->bind('username',$username)
										//->bind('password',password)
										->bind('error',$error);
	}
	
	// registration
	public function action_registration()
	{
		if($this->request->method()=='POST'){
			//echo 'ok';
			
			// validation
			$post = Validation::factory($_POST)
					->rule('username','not_empty')
					->rule('email','not_empty')
					->rule('password','not_empty')
					->rule('cpassword','not_empty');
			
			// if validation success
			if($post->check()){
				$users = ORM::factory('users');
				$users->username=$_POST['username'];
				$users->email=$_POST['email'];
				$users->password=$_POST['password'];
				$users->save();
				$error['successful'] = 'Successfully Registered.';
				HTTP::redirect('login/index', 302);
			}else{
				$error = $post->errors('form/registration');
			}
			
			// re-pass value into form
			$username=$_POST['username'];
			$email=$_POST['email'];
			$password=$_POST['password'];
		}
		// define page title
		echo $this->response->title = 'Registration Form';
		
		// define maincontent
		echo $this->response->body = view::factory('form/registration')
										->bind('username',$username)
										->bind('email',$email)
										->bind('password',$password)
										->bind('error',$error);
	}
	
	// welcome
	public function action_success()
	{
		// define page title
		//$this->template->Page_Title = 'Welcome to our family.';
		$username = $this->request->param('id');
		// define maincontent
		echo $this->response->body = view::factory('form/success')
										->bind('username',$username);
	}
	
	public function action_logout()
	{
		
		//echo 'ok';
		$session = Session::instance();
		$session->destroy();
		HTTP::redirect('login/index', 302);
	}
}