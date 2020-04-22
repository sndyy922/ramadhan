<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ceramah extends CI_Controller {

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
		$this->load->model('ceramah_model');
	}
	public function index()
	{
		$user = 1;
		$data['ceramah'] = $this->ceramah_model->get_list_tadarus($user);
		$this->load->view('siswa_main/header',$data);
		$this->load->view('siswa_ceramah',$data);
		
	}
	function tambah(){
		//jam,chanel,penceramah,topik
	   $today = date("Y-m-d");
	   $id=1;
       $jam=$this->input->post('jam');
	   $chanel=$this->input->post('chanel');
	   $penceramah=$this->input->post('penceramah');
	   $topik=$this->input->post('topik');
	   $this->db->query("INSERT INTO tbl_ceramah VALUES ('', '$id', '$today', '$chanel', '$penceramah', '$topik', '$jam');");
    }
	function hapus(){
       $id_hapus=$this->input->post('id_hapus');
	   $this->db->query("DELETE FROM tbl_ceramah WHERE tbl_ceramah.id='$id_hapus';");
	   
    }
}
