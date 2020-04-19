<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Galeri extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('galeri_model');
	}

	public function index()
	{
        $this->load->view('galeri_kegiatan/index');
	}

	public function form()
	{
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
                $file['file'] = $upload_data['file_name'];
                $res = "Success";
            }else{
                $res = "Upload file failed";
            }

        }

        echo json_encode($res);
	}
}
