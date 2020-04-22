<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tadarus extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct(){
		parent::__construct();
		$this->load->model('tadarus_model');
	}
	public function index()
	{
		$user = 1;
		$data['tadarus'] = $this->tadarus_model->get_list_tadarus($user);
		$this->load->view('siswa_main/header',$data);
		$this->load->view('siswa_tadarus',$data);
	}
	function tambah(){
		$id=1;
       $nama_surat=$this->input->post('nama_surat');
	   $tanggal=$this->input->post('tanggal');
	   $suratke=$this->input->post('suratke');
	   $dariayat=$this->input->post('dariayat');
	   $sampaiayat=$this->input->post('sampaiayat');
	   $this->db->query("INSERT INTO tbl_tadarus VALUES ('', '$id', '$nama_surat', '$surat_ke', '$dariayat', '$sampaiayat', '$tanggal', '$sampaiayat');");
	   
    }
}
