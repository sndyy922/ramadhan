<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Siswa extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('sholat_model');
	}

	public function detail($id)
	{
		if(!empty($id)){
			$d['detail_siswa'] = $this->sholat_model->get_detail_siswa($id);
			$d['list_activity_per_date'] = $this->sholat_model->get_list_activity_per_date($id);
			$d['list_activity'] = $this->sholat_model->get_list_activity();
			$d['list_tadarus'] = $this->sholat_model->get_list_tadarus($id);
			$d['list_ceramah'] = $this->sholat_model->get_list_ceramah($id);
			$d['list_galeri'] = $this->sholat_model->get_list_galeri($id);
			$this->load->view('siswa_main/header');
			$this->load->view('detail_siswa',$d);
		}else{
			echo '404 not found';
		}
	}

}