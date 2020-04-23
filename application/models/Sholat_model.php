<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sholat_model extends CI_Model {

	public function get_list_sholat($user)
	{
		$this->db->order_by('waktu', 'DESC');
		$this->db->order_by('kegiatan', 'ASC');
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
		// ->where('tbl_activity_sholat.waktu = CURDATE()')
		;
		
		$q = $this->db->get();

		return $q->result_array();
	}
	public function get_db_sholat()
	{
		$this->db->select([
			'tbl_sholat.name as sholat',
			'tbl_sholat.type as tipe',
		])
		->from('tbl_sholat')
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

    function get_list_activity(){
    	return $this->db->get('tbl_sholat')->result_array();
    }

    function get_list_activity_per_date($user)
    {

		$list_activity = $this->get_list_activity();
		$select = [];

		foreach ($list_activity as $key => $value) {
			$select[] = 'MAX(CASE WHEN kegiatan = '.$value['id'].' THEN IF(haid = 1, 2, status) END) as '.$value['name'];	
		}

		$this->db->select([
			'waktu',
		])
		->select($select)
		->from('tbl_activity_sholat')
		->where('user', $user)
		->group_by('waktu')
    	->order_by('waktu');
		;

		$q = $this->db->get()->result_array();
		return $q;
    }

    public function get_list_tadarus($user)
    {
    	$this->db->select('
    		tbl_tadarus.id,
    		tbl_tadarus.tgl,
    		CONCAT(tbl_surat.Nama_surat, " (", tbl_surat.Arti_nama, ")") as name,
    		tbl_tadarus.dari,
    		tbl_tadarus.sampai,
    	')
    	->from('tbl_tadarus')
    	->join('tbl_surat','tbl_tadarus.nama_surat = tbl_surat.id', 'left')
    	->where('tbl_tadarus.user', $user)
    	->order_by('tbl_tadarus.tgl');
    	;

    	$q = $this->db->get()->result_array();
		return $q;
    }

	public function get_list_galeri($user)
	{
		return $this->db->order_by('waktu', 'DESC')->get_where('tbl_foto',['user'=>$user])->result_array();
	}

	public function get_list_ceramah($user)
	{
		return $this->db->order_by('tgl', 'ASC')->get_where('tbl_ceramah',['id_user'=>$user])->result_array();
	}

    function get_detail_siswa($id){
    	return $this->db->get_where('tbl_siswa', ['id'=>$id])->row_array();
    }
}
