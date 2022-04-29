<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Registro extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->model('asociado_model');
  }
  public function index()
  {
    $data['lista'] = $this->asociado_model->get_todos();
    $data['contenido'] = 'registro/formulario';
    $datosCapsula['data'] = $data;
    print_r($data);
    $this->load->view('template/template', $datosCapsula);
  }
}
