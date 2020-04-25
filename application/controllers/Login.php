<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('login_model');
		if($this->session->userdata('user') != NULL){
			redirect(base_url());
		}
	}

	public function index()
	{
			
		$data="";
		$this->load->view('login.php',$data);
	}
	function logout(){
		$this->session->sess_destroy();
		redirect(base_url());
	}
	function aksi_login(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		//echo $username.$password;
		$where = array(
			'nis' => $username,
			//'password' => md5($password)
			'user' => $password
			);
		//user=password
		$cek = $this->login_model->cek_login("tbl_siswa",$where)->num_rows();
		$query =  $this->db->query("Select * from tbl_siswa where nis='$username' and user='$password'");
		$value_session = $query->row();
		if($cek > 0){
			//$cek_data =  $this->db->query("Select * from tbl_siswa where user='$username' and nis='$password'");
				$session_data = array(
				'id'   => $value_session->id,
				'user' => $value_session->user,
				'nama' => $value_session->name,
				'nis' => $value_session->nis,
				'kelas' => $value_session->kelas,
				'kelamin' => $value_session->kelamin
			  );
			  // Buat Session
			  $this->session->set_userdata($session_data);
			redirect(base_url());
		}else{
			echo "<script>alert('Username atau Password Salah'); setTimeout(function(){history.back();}, 000);</script>";
		}
	}
	
	
}
