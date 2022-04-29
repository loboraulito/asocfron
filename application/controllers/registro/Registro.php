<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Registro extends CI_Controller
{
  public function __construct()
  {
    $this->load->model('Modelo_datos_estrategia1');
    parent::__construct();
  }
  public function index()
  {
    $data['contenido'] = 'registro/formulario';
    $datosCapsula['data'] = $data;
    $this->load->view('template/template', $datosCapsula);
  }
}
