<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Galeri extends CI_Controller {

	public function __construct(){
		parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
		$this->load->model('galeri_model');
	}

	public function index()
	{
		
		$d['data'] = $this->galeri_model->get_list_foto(1);
		$this->load->view('siswa_main/header',$d);
        $this->load->view('galeri_kegiatan/index',$d);
        $this->load->view('siswa_main/header',$d);
        $this->load->view('galeri_kegiatan/index');
	}

	public function form()
	{
		$d['data'] = $this->galeri_model->get_list_foto(1);
		$this->load->view('siswa_main/header',$d);
        $d['now'] = date('Y-m-d H:i:s');
        $this->load->view('siswa_main/header', $d);
        $this->load->view('galeri_kegiatan/form');
	}

	public function upload_foto()
	{
		// $files = $_FILES['webcam'];
        $files = !empty($_FILES['webcam']) ? $_FILES['webcam']: NULL;   

        if($_FILES['webcam']['error'] == UPLOAD_ERR_OK){

            // Update array file
            $_FILES['file']['name'] = $files;
            $_FILES['file']['type'] = $_FILES['webcam']['type'];
            $_FILES['file']['tmp_name'] = $_FILES['webcam']['tmp_name'];
            $_FILES['file']['error'] = $_FILES['webcam']['error'];
            $_FILES['file']['size'] = $_FILES['webcam']['size'];

            $config['file_name'] = "activity_".date("YmdHIs");

            // Create folder
            if(!is_dir('assets/upload')){
                mkdir('assets/upload', 0777, true);
            }

            // Config file
            $config['upload_path'] = "./assets/upload/";
            $config['allowed_types'] = "jpg|jpeg|png";
            $config['overwrite'] = true;
            $config['max_size'] = '10240';
            $config['remove_spaces'] = true;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);

            if($this->upload->do_upload('webcam')){
                $upload_data = $this->upload->data();
                $file['foto'] = $upload_data['file_name'];
                $res = 1;
            }else{
            	$file['foto'];
                $res = 0;
            }


            if($res == 1){
	            $file['user'] = $this->input->get('user');
	            $file['waktu'] = $this->input->get('waktu');
	            $file['keterangan'] = $this->input->get('keterangan');

	            if($this->galeri_model->insert_foto($file)){
	            	$data = [
	            		'success' => 1,
	            		'message' => "Data berhasil disimpan",
	            		'error' => "",
	            	];
	            }else{
	            	$data = [
	            		'success' => 0,
	            		'message' => "",
	            		'error' => "Data gagal disimpan",
	            	];
	            }
            }else{
            	$data = [
            		'success' => 0,
            		'message' => "",
            		'error' => "Upload gagal",
            	];
            }

        }

        echo json_encode($data);
	}

    public function delete_foto($id)
    {   
        $detail = $this->galeri_model->get_detail_foto($id);
        if($detail){
            if($this->galeri_model->delete_foto($detail['id'])){
                $data = [
                    'success' => 1,
                    'message' => 'Data berhasil dihapus',
                    'error' => '',
                ];    
            }else{
                $data = [
                    'success' => 0,
                    'message' => '',
                    'error' => 'Data gagal dihapus',
                ];
            }
        }else{
            $data = [
                'success' => 0,
                'message' => '',
                'error' => 'Invalid Id',
            ];
        }

        echo json_encode($data);
    }

    public function detail_foto($id)
    {
        $detail = $this->galeri_model->get_detail_foto($id);
        echo json_encode($detail);
    }
}
