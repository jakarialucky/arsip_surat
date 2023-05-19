<?php defined('BASEPATH') or exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : mpampamdev  */
/*| version : V.0.0.2 */
/*| facebook : https://web.facebook.com/mpampam */
/*| fanspage : https://web.facebook.com/programmerjalanan */
/*| instagram : https://www.instagram.com/programmer_jalanan */
/*| youtube : https://www.youtube.com/channel/UC1TlTaxRNdwrCqjBJ5zh6TA */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 04/05/2023 13:40*/
/*| Please DO NOT modify this information*/


class C_laporan extends Backend
{

  private $title = "Laporan Surat";


  public function __construct()
  {
    $config = array(
      'title' => $this->title,
    );
    parent::__construct($config);
    $this->load->model("C_laporan_model", "model");
  }

  function index()
  {
    $this->template->set_title($this->title);
    // $this->is_allowed('c_rba_list');
    $this->template->set_title($this->title);
    $this->template->view("index");
  }
  public function pilih_laporan()
  {
    $this->template->set_title(cclang("cetak") . " " . $this->title);
    $tanggal_awal = $this->input->post('tgl_awal', true);
    $tanggal_akhir = $this->input->post('tgl_akhir', true);
    $jenis_laporan = $this->input->post('jenis_laporan', true);
    if ($jenis_laporan == 'laporan_surat_masuk') {
      $this->laporan_surat_masuk($tanggal_awal, $tanggal_akhir);
    } elseif ($jenis_laporan == 'laporan_surat_keluar') {
      $this->laporan_surat_keluar($tanggal_awal, $tanggal_akhir);
    } elseif ($jenis_laporan == 'laporan_rba') {
      $this->laporan_rba($tanggal_awal, $tanggal_akhir);
    } elseif ($jenis_laporan == 'laporan_spj') {
      $this->laporan_spj($tanggal_awal, $tanggal_akhir);
    }
  }
  function laporan_surat_masuk($tanggal_awal, $tanggal_akhir)
  {
    $this->template->set_title(cclang("cetak") . " Laporan Surat Masuk");
    $data['surat_masuk'] = $this->model->get_all_surat_masuk($tanggal_awal, $tanggal_akhir);
    $this->template->view("surat_masuk", $data);
    // $this->load->view('surat_masuk', $data);
  }
  function laporan_surat_keluar($tanggal_awal, $tanggal_akhir)
  {
    $this->template->set_title(cclang("cetak") . " Laporan Surat Keluar");
    $data['surat_keluar'] = $this->model->get_all_surat_keluar($tanggal_awal, $tanggal_akhir);
    $this->template->view("surat_keluar", $data);
    // $this->load->view('surat_masuk', $data);
  }
  function laporan_rba($tanggal_awal, $tanggal_akhir)
  {
    $this->template->set_title(cclang("cetak") . " Laporan RBA");
    $data['rba'] = $this->model->get_all_rba($tanggal_awal, $tanggal_akhir);
    $this->template->view("rba", $data);
    // $this->load->view('surat_masuk', $data);
  }
  function laporan_spj($tanggal_awal, $tanggal_akhir)
  {
    $this->template->set_title(cclang("cetak") . " Laporan SPJ");
    $data['spj'] = $this->model->get_all_spj($tanggal_awal, $tanggal_akhir);
    $this->template->view("spj", $data);
    // $this->load->view('surat_masuk', $data);
  }


  function json()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('c_rba_list')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $list = $this->model->get_datatables();
      $data = array();
      foreach ($list as $row) {
        $rows = array();
        $rows[] = $row->nomor_rba;
        $rows[] = date("d-m-Y",  strtotime($row->tanggal_rba));
        $rows[] = $row->nama_rba;
        $rows[] = $row->no_rekening_kegiatan_rba;
        $rows[] = is_image($row->berkas_rba);

        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="' . url("c_rba/detail/" . enc_url($row->id_rba)) . '" id="detail" class="btn btn-primary" title="' . cclang("detail") . '">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="' . url("c_rba/update/" . enc_url($row->id_rba)) . '" id="update" class="btn btn-warning" title="' . cclang("update") . '">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="' . url("c_rba/delete/" . enc_url($row->id_rba)) . '" id="delete" class="btn btn-danger" title="' . cclang("delete") . '">
                        <i class="ti-trash"></i>
                      </a>
                    </div>
                 ';

        $data[] = $rows;
      }

      $output = array(
        "draw" => $_POST['draw'],
        "recordsTotal" => $this->model->count_all(),
        "recordsFiltered" => $this->model->count_filtered(),
        "data" => $data,
      );
      //output to json format
      return $this->response($output);
    }
  }

  function filter()
  {
    if (!is_allowed('c_rba_filter')) {
      echo "access not permission";
    } else {
      $this->template->view("filter", [], false);
    }
  }
}

/* End of file C_rba.php */
/* Location: ./application/modules/c_rba/controllers/backend/C_rba.php */
