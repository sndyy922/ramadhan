<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('sholat_model');
	}

	public function index()
	{
		$user = 1;
		$today = date("Y-m-d");
		$cek_data = $this->db->query("select * from tbl_activity_sholat where tbl_activity_sholat.user='$user' and tbl_activity_sholat.waktu = '$today'");
		$cek_hasil = $cek_data->num_rows();
		
		if($cek_hasil>0){
			$data['sholat'] = $this->sholat_model->get_list_sholat($user);
			$this->load->view('admin_main/header',$data);
			$this->load->view('admin',$data);
		}else{
			$today = date("Y-m-d")." 00:00:00";
			$query_tambah1 =  $this->db->query("Insert INTO tbl_activity_sholat VALUES ('', '$user', '$today', '',  '1', '0','0')");
			$query_tambah2 =  $this->db->query("Insert INTO tbl_activity_sholat VALUES ('', '$user', '$today', '','2', '0','0')");
			$query_tambah3 =  $this->db->query("Insert INTO tbl_activity_sholat VALUES ('', '$user', '$today',  '','3', '0','0')");
			$query_tambah4 =  $this->db->query("Insert INTO tbl_activity_sholat VALUES ('', '$user', '$today', '','4', '0','0')");
			$query_tambah5 =  $this->db->query("Insert INTO tbl_activity_sholat VALUES ('', '$user', '$today', '','5', '0','0')");
			$query_tambah6 =  $this->db->query("Insert INTO tbl_activity_sholat VALUES ('', '$user', '$today', '','6', '0','0')");
			$query_tambah7 =  $this->db->query("Insert INTO tbl_activity_sholat VALUES ('', '$user', '$today', '','7', '0','0')");
			$query_tambah8 =  $this->db->query("Insert INTO tbl_activity_sholat VALUES ('', '$user', '$today', '','8', '0','0')");
			$query_tambah9 =  $this->db->query("Insert INTO tbl_activity_sholat VALUES ('', '$user', '$today', '','9', '0','0')");
			$query_tambah10 =  $this->db->query("Insert INTO tbl_activity_sholat VALUES ('', '$user', '$today', '','10', '0','0')");
			
			$data['sholat'] = $this->sholat_model->get_list_sholat($user);
			$this->load->view('admin_main/header',$data);
			$this->load->view('admin',$data);
		}
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
