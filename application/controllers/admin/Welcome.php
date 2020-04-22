<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('admin_model');
	}

	public function index()
	{
			$data['sholat'] = $this->admin_model->get_list_kegiatan_sholat();
			$this->load->view('admin_main/header',$data);
			$this->load->view('admin',$data);
		
	}
	function update_sholat(){
       $id_act=$this->input->post('id_act');
	   $status=$this->input->post('status');
	   $sholat=$this->input->post('sholat');
	   $query_update =  $this->db->query("UPDATE tbl_activity_sholat SET tbl_activity_sholat.status = 0 WHERE tbl_activity_sholat.id = $id_act;");
	   
    }
	function update_sholat_haid(){
       $id_act=$this->input->post('id_act');
	   $status=$this->input->post('status');
	   $sholat=$this->input->post('sholat');
	   $query_update =  $this->db->query("UPDATE tbl_activity_sholat SET tbl_activity_sholat.haid = 0 WHERE tbl_activity_sholat.id = $id_act;");
	   
	   
    }
	function update_sholat_tidak_haid(){
	   $id_act=$this->input->post('id_act');
	   $status=$this->input->post('status');
	   $sholat=$this->input->post('sholat');
	   $query_update =  $this->db->query("UPDATE tbl_activity_sholat SET tbl_activity_sholat.haid = 1 WHERE tbl_activity_sholat.id = $id_act;");
	   $query_update2 =  $this->db->query("UPDATE tbl_activity_sholat SET tbl_activity_sholat.status = 0 WHERE tbl_activity_sholat.id = $id_act;");
	   
    }
	function update_belum_sholat(){
	   $id_act=$this->input->post('id_act');
	   $status=$this->input->post('status');
	   $sholat=$this->input->post('sholat');
	   $query_update =  $this->db->query("UPDATE tbl_activity_sholat SET tbl_activity_sholat.status = 1 WHERE tbl_activity_sholat.id = $id_act;");
	   
    }
	function update_tanggal_sholat(){
	   $id_act=$this->input->post('id_act');
	   $tanggal=$this->input->post('tanggal');
	   $query_update =  $this->db->query("UPDATE tbl_activity_sholat SET tbl_activity_sholat.waktu = '$tanggal' WHERE tbl_activity_sholat.id = $id_act;");
	   
    }
	function update_jam_sholat(){
	   $id_act=$this->input->post('id_act');
	   $jam=$this->input->post('jam');
	   $query_update =  $this->db->query("UPDATE tbl_activity_sholat SET tbl_activity_sholat.jam = '$jam' WHERE tbl_activity_sholat.id = $id_act;");
	   
    }
}
