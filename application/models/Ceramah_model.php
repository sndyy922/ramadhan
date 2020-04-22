<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ceramah_model extends CI_Model {

	public function get_list_tadarus($user)
	{
		////INSERT INTO `tbl_ceramah`(`id`, `id_user`, `tgl`, `chanel`, `nama_penceramah`, `topik`, `jam`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7])
		$this->db->order_by('tgl', 'DESC');
		$this->db->order_by('jam', 'DESC');
		$this->db->select([
			'tbl_ceramah.id as id',
			'tbl_ceramah.id_user as id_user',
			'tbl_ceramah.tgl as tgl',
			'tbl_ceramah.chanel as chanel',
			'tbl_ceramah.nama_penceramah as nama_penceramah',
			'tbl_ceramah.topik as topik',
			'tbl_ceramah.jam as jam',
		])
		->from('tbl_ceramah')
		//->join('tbl_surat', 'tbl_tadarus.nama_surat = tbl_surat.id', 'inner')
		->where('tbl_ceramah.id_user', $user)
		//->where('tbl_activity_sholat.waktu',CURDATE())
		;
		//	select tbl_tadarus.id, tbl_tadarus.user,tbl_tadarus.nama_surat,tbl_tadarus.surat_ke,tbl_tadarus.dari,tbl_tadarus.sampai,tbl_tadarus.tgl,tbl_tadarus.jam,tbl_surat.nama_surat from tbl_tadarus inner join tbl_surat on tbl_tadarus.nama_surat = tbl_surat.id where tbl_tadarus.user = 1

		//select tbl_tadarus.id, tbl_tadarus.user,tbl_tadarus.nama_surat,tbl_tadarus.surat_ke,tbl_tadarus.dari,tbl_tadarus.sampai,tbl_tadarus.tgl,tbl_tadarus.jam,tbl_surat.nama_surat from tbl_tadarus left join tbl_surat where  tbl_tadarus.user = 1
		/*$this->db->query("select tbl_sholat.name as sholat, tbl_sholat.type as tipe, tbl_activity_sholat.id as id_activity, tbl_activity_sholat.user as user, tbl_activity_sholat.status as status, tbl_activity_sholat.haid as haid, tbl_activity_sholat.waktu as waktu from tbl_activity_sholat LEFT JOIN tbl_sholat on tbl_activity_sholat.kegiatan = tbl_sholat.id where tbl_activity_sholat.user=1 and tbl_activity_sholat.waktu == CURDATE()");*/
		
		$q = $this->db->get();

		return $q->result_array();
	}
	public function get_ayat($kode_surat)
	{
		$this->db->select([
			'tbl_tadarus.id as id_tadarus',
			'tbl_tadarus.user as id_user',
			'tbl_tadarus.nama_surat as nama_surat',
			'tbl_tadarus.surat_ke as suratke',
			'tbl_tadarus.dari as dari',
			'tbl_tadarus.sampai as sampai',
			'tbl_tadarus.tgl as tgl',
			'tbl_tadarus.jam as jam',
		])
		->from('tbl_tadarus')
		->where('tbl_tadarus.id', $kode_surat)
		//->where('tbl_activity_sholat.waktu',CURDATE())
		;
		/*$this->db->query("select tbl_sholat.name as sholat, tbl_sholat.type as tipe, tbl_activity_sholat.id as id_activity, tbl_activity_sholat.user as user, tbl_activity_sholat.status as status, tbl_activity_sholat.haid as haid, tbl_activity_sholat.waktu as waktu from tbl_activity_sholat LEFT JOIN tbl_sholat on tbl_activity_sholat.kegiatan = tbl_sholat.id where tbl_activity_sholat.user=1 and tbl_activity_sholat.waktu == CURDATE()");*/
		
		$q = $this->db->get();
		return $q->result_array();
	}
	public function get_list_sholat()
	{
		$this->db->select([
			'tbl_surat.id as id',
			'tbl_surat.Nama_surat as nama_surat',
			'tbl_surat.Arti_nama as arti_nama',
			'tbl_surat.jml_ayat as jml_ayat',
		])
		->from('tbl_surat')
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
