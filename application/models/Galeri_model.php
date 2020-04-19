<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Galeri_model extends CI_Model {

	public function get_list_foto($user)
	{
		return $this->db->get_where('tbl_foto',['user'=>$user]);
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

	public function delete_foto($data)
	{
		$this->db
		->where('id', $data['id'])
		->delete('tbl_foto');

		return ($this->db->affected_rows() > 0)? TRUE : FALSE;
	}
}
