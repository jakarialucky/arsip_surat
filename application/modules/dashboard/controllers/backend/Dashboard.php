<?php
defined('BASEPATH') or exit('No direct script access allowed');

/* dev : mpampam*/
/* fb : https://facebook.com/mpampam*/
/* fanspage : https://web.facebook.com/programmerjalanan*/
/* web : www.mpampam.com*/
/* Generate By M-CRUD Generator 10/11/2020 14:51*/
/* Please DO NOT modify this information */


class Dashboard extends Backend
{

  private $title = "Dashboard";

  public function __construct()
  {
    parent::__construct();
    $this->load->model("Core_model", "model");
  }

  function index()
  {
    $this->template->set_title("Dashboard");
    // $data['jumlah_ruangan'] = $this->model->get_data('tbl_ruangan', '')->num_rows();
    // $data['jumlah_barang'] = $this->db->query("SELECT SUM(jml_barang) as jml FROM tbl_transaksi_barang")->row('jml');
    // $data['jumlah_bahan'] = $this->db->query("SELECT SUM(jml_bahan) as jml FROM  tbl_transaksi_bahan")->row('jml');

    // $data['jumlah_jenis_barang'] = $this->model->get_data('tbl_barang', '')->num_rows();
    // // var_dump($data['jumlah_barang']);
    // // die();
    // $data['jumlah_jenis_bahan'] = $this->model->get_data('tbl_bahan', '')->num_rows();
    $this->template->view("index");
  }

  function test()
  {
    $get_controller = $this->userize->combo_controllerlist();
    echo json_encode($get_controller);
  }

  function folderSize($dir = null)
  {
    $dir = "./_temp/uploads/img/";
    $size = 0;

    foreach (glob(rtrim($dir, '/') . '/*', GLOB_NOSORT) as $each) {
      $size += is_file($each) ? filesize($each) : folderSize($each);
    }

    echo $size . "Kb";
  }
}
