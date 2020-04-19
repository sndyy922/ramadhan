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
		])
		->from('tbl_sholat')
		->join('tbl_activity_sholat', 'tbl_sholat.id = tbl_activity_sholat.kegiatan', 'left')
		->where('tbl_activity_sholat.user', $user)
		->where('tbl_activity_sholat.waktu',CURDATE())
		;
		
		$q = $this->db->get();

		return $q->result_array();
	}
}
//select tbl_sholat.name as sholat, tbl_sholat.type as tipe, tbl_activity_sholat.id as id_activity, tbl_activity_sholat.user as user, tbl_activity_sholat.status as status, tbl_activity_sholat.haid as haid, tbl_activity_sholat.waktu as waktu from tbl_activity_sholat LEFT JOIN tbl_sholat on tbl_activity_sholat.kegiatan = tbl_sholat.id where tbl_activity_sholat.user=1 and tbl_activity_sholat.waktu >= CURDATE()