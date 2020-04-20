<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sholat_model extends CI_Model {

	public function get_list_sholat($user)
	{
		$this->db->select([
			'tbl_sholat.name as sholat',
			'tbl_sholat.type as tipe',
			'tbl_activity_sholat.id as id_activity',
			'tbl_activity_sholat.user as user',
			'tbl_activity_sholat.status as status',
			'tbl_activity_sholat.haid as haid',
			'tbl_activity_sholat.waktu as waktu',
			'tbl_activity_sholat.jam as jam',
		])
		->from('tbl_sholat')
		->join('tbl_activity_sholat', 'tbl_sholat.id = tbl_activity_sholat.kegiatan', 'left')
		->where('tbl_activity_sholat.user', $user)
		->where('tbl_activity_sholat.waktu = CURDATE()')
		;
		
		$q = $this->db->get();

		return $q->result_array();
	}
	function update_activity(){
        
        $status=$this->input->post('status');
        $nama_sholat=$this->input->post('sholat');
		$sts=$this->input->post('status');
		if($sts=0){
			$sts_kirim = 1;
		}if($sts=1){
			$sts_kirim = 0;
		}
        $this->db->set('status', $status);
        $this->db->where('id', $id);
        $result=$this->db->update('tbl_activity_sholat');
        return $result;
    }
}
