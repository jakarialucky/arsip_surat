<?php defined('BASEPATH') or exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : mpampamdev  */
/*| version : V.0.0.2 */
/*| facebook : https://web.facebook.com/mpampam */
/*| fanspage : https://web.facebook.com/programmerjalanan */
/*| instagram : https://www.instagram.com/programmer_jalanan */
/*| youtube : https://www.youtube.com/channel/UC1TlTaxRNdwrCqjBJ5zh6TA */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 04/05/2023 13:35*/
/*| Please DO NOT modify this information*/


class C_surat_masuk extends Backend
{

  private $title = "Surat Masuk";


  public function __construct()
  {
    $config = array(
      'title' => $this->title,
    );
    parent::__construct($config);
    $this->load->model("C_surat_masuk_model", "model");
  }

  function index()
  {
    $this->is_allowed('c_surat_masuk_list');
    $this->template->set_title($this->title);
    $this->template->view("index");
  }

  function json()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('c_surat_masuk_list')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $list = $this->model->get_datatables();
      $data = array();
      foreach ($list as $row) {
        $rows = array();
        $rows[] = $row->no_surat;
        $rows[] = date("d-m-Y",  strtotime($row->tgl_surat));
        $rows[] = $row->perihal;
        $rows[] = $row->jenis_surat;
        $rows[] = $row->pengirim;
        $rows[] = $row->ditujukan;
        $rows[] = $row->deskripsi;
        $rows[] = $row->name;
        $rows[] = $row->sifat_surat;
        if ($row->status_disposisi == 'Belum Disposisi') {
          $disposisi = '<a type="button" class="btn btn-warning btn-icon btn-sm" data-toggle="modal" data-id="' . $row->id_surat_masuk . '" title="Disposisikan" id="disposisi"><i class="fa fa-comment"></i></a> &nbsp; Belum Disposisi';
        } else {
          $disposisi = '<a type="button" class="btn btn-default btn-icon btn-sm" href="javascript:;" title="Disposisi done"><i class="fa fa-comment"></i></a>Sudah Disposisi';
        }
        $rows[] =  $disposisi;
        $rows[] = is_image($row->berkas_surat_masuk);

        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="' . url("c_surat_masuk/detail/" . enc_url($row->id_surat_masuk)) . '" id="detail" class="btn btn-primary" title="' . cclang("detail") . '">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="' . url("c_surat_masuk/update/" . enc_url($row->id_surat_masuk)) . '" id="update" class="btn btn-warning" title="' . cclang("update") . '">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="' . url("c_surat_masuk/delete/" . enc_url($row->id_surat_masuk)) . '" id="delete" class="btn btn-danger" title="' . cclang("delete") . '">
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
    if (!is_allowed('c_surat_masuk_filter')) {
      echo "access not permission";
    } else {
      $this->template->view("filter", [], false);
    }
  }

  function detail($id)
  {
    $this->is_allowed('c_surat_masuk_detail');
    if ($row = $this->model->get_detail(dec_url($id))) {
      $this->template->set_title("Detail " . $this->title);
      $data = array(
        "no_surat" => $row->no_surat,
        "tgl_surat" => $row->tgl_surat,
        "perihal" => $row->perihal,
        "id_jenis_surat" => $row->jenis_surat,
        "pengirim" => $row->pengirim,
        "ditujukan" => $row->ditujukan,
        "deskripsi" => $row->deskripsi,
        "sifat_surat" => $row->sifat_surat,
        "berkas_surat_masuk" => $row->berkas_surat_masuk,
      );
      $this->template->view("view", $data);
    } else {
      $this->error404();
    }
  }
  function add_disposisi()
  {
    if ($this->input->is_ajax_request()) {


      $json = array('success' => false);


      // if ($this->form_validation->run()) {
      $save_data['id_surat'] = $this->input->post('id_surat_dispos', true);
      $save_data['tanggal_disposisi'] = date("Y-m-d");
      $save_data['id_petugas'] =  $this->session->userdata('id_user');
      $save_data['tujuan_disposisi'] = $this->input->post('kepada', true);
      $save_data['isi_disposisi'] = $this->input->post('isi', true);
      $this->db->insert('tb_disposisi', $save_data);
      $update_data['status_disposisi'] = 'Sudah Disposisi';
      $update = $this->model->change($save_data['id_surat'], $update_data);
      // $this->model->insert($save_data);

      set_message("success", cclang("notif_save"));
      $json['redirect'] = url("c_surat_masuk");
      $json['success'] = true;
      // } else {
      //   foreach ($_POST as $key => $value) {
      //     $json['alert'][$key] = form_error($key);
      //   }
      // }

      $this->response($json);
    }
  }
  function add()
  {
    $this->is_allowed('c_surat_masuk_add');
    $this->template->set_title(cclang("add") . " " . $this->title);
    $data = array(
      'action' => url("c_surat_masuk/add_action"),
      'no_surat' => set_value("no_surat"),
      'tgl_surat' => set_value("tgl_surat"),
      'perihal' => set_value("perihal"),
      'id_jenis_surat' => set_value("id_jenis_surat"),
      'pengirim' => set_value("pengirim"),
      'ditujukan' => set_value("ditujukan"),
      'deskripsi' => set_value("deskripsi"),
      'sifat_surat' => set_value("sifat_surat"),
      'berkas_surat_masuk' => set_value("berkas_surat_masuk"),
    );
    $this->template->view("add", $data);
  }

  function add_action()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('c_surat_masuk_add')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("no_surat", "* No surat", "trim|xss_clean|required");
      $this->form_validation->set_rules("tgl_surat", "* Tanggal Surat", "trim|xss_clean");
      $this->form_validation->set_rules("perihal", "* Perihal", "trim|xss_clean");
      $this->form_validation->set_rules("id_jenis_surat", "* Jenis Surat", "trim|xss_clean|required");
      $this->form_validation->set_rules("pengirim", "* Pengirim", "trim|xss_clean|required");
      $this->form_validation->set_rules("ditujukan", "* Ditujukan", "trim|xss_clean|required");
      $this->form_validation->set_rules("deskripsi", "* Deskripsi", "trim|xss_clean");
      $this->form_validation->set_rules("sifat_surat", "* Sifat surat", "trim|xss_clean");
      $this->form_validation->set_rules("berkas_surat_masuk", "* Berkas surat masuk", "trim|xss_clean");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['no_surat'] = $this->input->post('no_surat', true);
        $save_data['tgl_surat'] = date("Y-m-d",  strtotime($this->input->post('tgl_surat', true)));
        $save_data['perihal'] = $this->input->post('perihal', true);
        $save_data['id_jenis_surat'] = $this->input->post('id_jenis_surat', true);
        $save_data['pengirim'] = $this->input->post('pengirim', true);
        $save_data['ditujukan'] = $this->input->post('ditujukan', true);
        $save_data['deskripsi'] = $this->input->post('deskripsi', true);
        $save_data['id_petugas'] = $this->session->userdata('id_user');
        $save_data['sifat_surat'] = $this->input->post('sifat_surat', true);
        $save_data['status_disposisi'] = 'Belum Disposisi';
        $save_data['berkas_surat_masuk'] = $this->imageCopy($this->input->post('berkas_surat_masuk', true), $_POST['file-dir-berkas_surat_masuk']);

        $this->model->insert($save_data);

        set_message("success", cclang("notif_save"));
        $json['redirect'] = url("c_surat_masuk");
        $json['success'] = true;
      } else {
        foreach ($_POST as $key => $value) {
          $json['alert'][$key] = form_error($key);
        }
      }

      $this->response($json);
    }
  }

  function update($id)
  {
    $this->is_allowed('c_surat_masuk_update');
    if ($row = $this->model->find(dec_url($id))) {
      $this->template->set_title(cclang("update") . " " . $this->title);
      $data = array(
        'action' => url("c_surat_masuk/update_action/$id"),
        'no_surat' => set_value("no_surat", $row->no_surat),
        'tgl_surat' => $row->tgl_surat == "" ? "" : date("Y-m-d",  strtotime($row->tgl_surat)),
        'perihal' => set_value("perihal", $row->perihal),
        'id_jenis_surat' => set_value("id_jenis_surat", $row->id_jenis_surat),
        'pengirim' => set_value("pengirim", $row->pengirim),
        'ditujukan' => set_value("ditujukan", $row->ditujukan),
        'deskripsi' => set_value("deskripsi", $row->deskripsi),
        'sifat_surat' => set_value("sifat_surat", $row->sifat_surat),
        'berkas_surat_masuk' => set_value("berkas_surat_masuk", $row->berkas_surat_masuk),
      );
      $this->template->view("update", $data);
    } else {
      $this->error404();
    }
  }

  function update_action($id)
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('c_surat_masuk_update')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("no_surat", "* No surat", "trim|xss_clean|required");
      $this->form_validation->set_rules("tgl_surat", "* Tanggal Surat", "trim|xss_clean");
      $this->form_validation->set_rules("perihal", "* Perihal", "trim|xss_clean");
      $this->form_validation->set_rules("id_jenis_surat", "* Jenis Surat", "trim|xss_clean|required");
      $this->form_validation->set_rules("pengirim", "* Pengirim", "trim|xss_clean|required");
      $this->form_validation->set_rules("ditujukan", "* Ditujukan", "trim|xss_clean|required");
      $this->form_validation->set_rules("deskripsi", "* Deskripsi", "trim|xss_clean");
      $this->form_validation->set_rules("sifat_surat", "* Sifat surat", "trim|xss_clean");
      $this->form_validation->set_rules("berkas_surat_masuk", "* Berkas surat masuk", "trim|xss_clean");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['no_surat'] = $this->input->post('no_surat', true);
        $save_data['tgl_surat'] = date("Y-m-d",  strtotime($this->input->post('tgl_surat', true)));
        $save_data['perihal'] = $this->input->post('perihal', true);
        $save_data['id_jenis_surat'] = $this->input->post('id_jenis_surat', true);
        $save_data['pengirim'] = $this->input->post('pengirim', true);
        $save_data['ditujukan'] = $this->input->post('ditujukan', true);
        $save_data['deskripsi'] = $this->input->post('deskripsi', true);
        $save_data['id_petugas'] = $this->session->userdata('id_user');
        $save_data['sifat_surat'] = $this->input->post('sifat_surat', true);
        $save_data['berkas_surat_masuk'] = $this->imageCopy($this->input->post('berkas_surat_masuk', true), $_POST['file-dir-berkas_surat_masuk']);

        $save = $this->model->change(dec_url($id), $save_data);

        set_message("success", cclang("notif_update"));

        $json['redirect'] = url("c_surat_masuk");
        $json['success'] = true;
      } else {
        foreach ($_POST as $key => $value) {
          $json['alert'][$key] = form_error($key);
        }
      }

      $this->response($json);
    }
  }

  function delete($id)
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('c_surat_masuk_delete')) {
        return $this->response([
          'type_msg' => "error",
          'msg' => "do not have permission to access"
        ]);
      }

      $this->model->remove(dec_url($id));
      $json['type_msg'] = "success";
      $json['msg'] = cclang("notif_delete");


      return $this->response($json);
    }
  }
}

/* End of file C_surat_masuk.php */
/* Location: ./application/modules/c_surat_masuk/controllers/backend/C_surat_masuk.php */
