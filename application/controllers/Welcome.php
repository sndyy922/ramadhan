<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('sholat_model');
	}

	public function index()
	{
<<<<<<< HEAD
                $this->template->load('siswa_kegiatanutama','welcome_message');
=======
        $this->template->load('template','welcome_message');
>>>>>>> 2573855998b0bd31da68477409d8ad9f2df6c2d1
	}
}
