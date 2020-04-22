<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_model extends CI_Model {

	public function get_list_foto($user)
	{
		return $this->db->get_where('tbl_foto',['user'=>$user])->result_array();
	}

	/*public function get_list_kegiatan_sholat()
	{
		//SELECT tbl_siswa.id as id_siswa, tbl_siswa.name as nama, tbl_siswa.nis as nis_siswa, tbl_siswa.kelas as kelas, tbl_siswa.kelamin as kelamin, count(tbl_activity_sholat.kegiatan) as jml_sholat, tbl_activity_sholat.haid FROM tbl_siswa left  join tbl_activity_sholat on tbl_siswa.id = tbl_activity_sholat.user where tbl_activity_sholat.kegiatan != '0' GROUP by tbl_siswa.id
       $this->db->order_by('tbl_siswa.kelas', 'DESC');
		//$this->db->order_by('tbl_siswa.name', 'ASC');
		$this->db->group_by('tbl_siswa.id');
		$this->db->select([
			'tbl_siswa.id as id_siswa',
			'tbl_siswa.name as nama',
			'tbl_siswa.nis as nis_siswa',
			'tbl_siswa.kelas as kelas',
			'tbl_siswa.kelamin as kelamin',
			'count(tbl_activity_sholat.kegiatan) as jml_sholat_wajib',
		])
		->from('tbl_siswa')
		->join('tbl_activity_sholat', 'tbl_siswa.id = tbl_activity_sholat.id', 'user')
		;
		
		$q = $this->db->get();

		return $q->result_array();
	}*/
	
	public function get_list_kegiatan_sholat()
	{
		$this->db->select([
			'tbl_siswa.id as id_siswa',
			'tbl_siswa.name as nama',
			'tbl_siswa.nis as nis_siswa',
			'tbl_siswa.kelas as kelas',
		])
		->from('tbl_siswa')
		//->where('tbl_tadarus.id', $kode_surat)
		//->where('tbl_activity_sholat.waktu',CURDATE())
		;
		/*$this->db->query("select tbl_sholat.name as sholat, tbl_sholat.type as tipe, tbl_activity_sholat.id as id_activity, tbl_activity_sholat.user as user, tbl_activity_sholat.status as status, tbl_activity_sholat.haid as haid, tbl_activity_sholat.waktu as waktu from tbl_activity_sholat LEFT JOIN tbl_sholat on tbl_activity_sholat.kegiatan = tbl_sholat.id where tbl_activity_sholat.user=1 and tbl_activity_sholat.waktu == CURDATE()");*/
		
		$q = $this->db->get();
		return $q->result_array();
	}
	public function get_detail_foto($id)
	{
		return $this->db->get_where('tbl_foto',['id'=>$id])->row_array();
	}

	public function insert_foto($data)
	{
		$this->db->insert('tbl_foto', $data);
		
		return ($this->db->affected_rows() > 0)? TRUE : FALSE;
	}

	public function update_foto($data)
	{
		$this->db->trans_start();
		$this->db->where('id', $data['id']);
		unset($data['id']);
		$this->db->update('tbl_foto', $data);
		$this->db->trans_complete();
	}

	public function delete_foto($id)
	{
		$this->db
		->where('id', $id)
		->delete('tbl_foto');

		return ($this->db->affected_rows() > 0)? TRUE : FALSE;
	}
}
