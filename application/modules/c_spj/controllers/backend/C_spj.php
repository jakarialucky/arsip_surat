<?php defined('BASEPATH') or exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : mpampamdev  */
/*| version : V.0.0.2 */
/*| facebook : https://web.facebook.com/mpampam */
/*| fanspage : https://web.facebook.com/programmerjalanan */
/*| instagram : https://www.instagram.com/programmer_jalanan */
/*| youtube : https://www.youtube.com/channel/UC1TlTaxRNdwrCqjBJ5zh6TA */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 04/05/2023 13:41*/
/*| Please DO NOT modify this information*/


class C_spj extends Backend
{

  private $title = "Surat Spj";


  public function __construct()
  {
    $config = array(
      'title' => $this->title,
    );
    parent::__construct($config);
    $this->load->model("C_spj_model", "model");
  }

  function index()
  {
    $this->is_allowed('c_spj_list');
    $this->template->set_title($this->title);
    $this->template->view("index");
  }

  function json()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('c_spj_list')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $list = $this->model->get_datatables();
      $data = array();
      foreach ($list as $row) {
        $rows = array();
        $rows[] = $row->nomor_spj;
        $rows[] = date("d-m-Y",  strtotime($row->tanggal_surat_spj));
        $rows[] = $row->no_invoice;
        $rows[] = $row->nama_pembayar;
        $rows[] = "Rp. " . number_format($row->jumlah_uang, 0, ',', '.');
        $rows[] = is_image($row->file);

        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="' . url("c_spj/detail/" . enc_url($row->id_spj)) . '" id="detail" class="btn btn-primary" title="' . cclang("detail") . '">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="' . url("c_spj/update/" . enc_url($row->id_spj)) . '" id="update" class="btn btn-warning" title="' . cclang("update") . '">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="' . url("c_spj/delete/" . enc_url($row->id_spj)) . '" id="delete" class="btn btn-danger" title="' . cclang("delete") . '">
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
    if (!is_allowed('c_spj_filter')) {
      echo "access not permission";
    } else {
      $this->template->view("filter", [], false);
    }
  }

  function detail($id)
  {
    $this->is_allowed('c_spj_detail');
    if ($row = $this->model->find(dec_url($id))) {
      $this->template->set_title("Detail " . $this->title);
      $data = array(
        "nomor_spj" => $row->nomor_spj,
        "tanggal_surat_spj" => $row->tanggal_surat_spj,
        "no_invoice" => $row->no_invoice,
        "nama_pembayar" => $row->nama_pembayar,
        "jumlah_uang" => $row->jumlah_uang,
        "file" => $row->file,
      );
      $this->template->view("view", $data);
    } else {
      $this->error404();
    }
  }

  function add()
  {
    $this->is_allowed('c_spj_add');
    $this->template->set_title(cclang("add") . " " . $this->title);
    $data = array(
      'action' => url("c_spj/add_action"),
      'nomor_spj' => set_value("nomor_spj"),
      'tanggal_surat_spj' => set_value("tanggal_surat_spj"),
      'no_invoice' => set_value("no_invoice"),
      'nama_pembayar' => set_value("nama_pembayar"),
      'jumlah_uang' => set_value("jumlah_uang"),
      'file' => set_value("file"),
    );
    $this->template->view("add", $data);
  }

  function add_action()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('c_spj_add')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("nomor_spj", "* Nomor spj", "trim|xss_clean|required");
      $this->form_validation->set_rules("tanggal_surat_spj", "* Tanggal surat spj", "trim|xss_clean");
      $this->form_validation->set_rules("no_invoice", "* No invoice", "trim|xss_clean");
      $this->form_validation->set_rules("nama_pembayar", "* Nama pembayar", "trim|xss_clean");
      $this->form_validation->set_rules("jumlah_uang", "* Jumlah uang", "trim|xss_clean");
      $this->form_validation->set_rules("file", "* File", "trim|xss_clean");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['nomor_spj'] = $this->input->post('nomor_spj', true);
        $save_data['tanggal_surat_spj'] = date("Y-m-d",  strtotime($this->input->post('tanggal_surat_spj', true)));
        $save_data['no_invoice'] = $this->input->post('no_invoice', true);
        $save_data['nama_pembayar'] = $this->input->post('nama_pembayar', true);
        $save_data['jumlah_uang'] = $this->input->post('jumlah_uang', true);
        $save_data['id_group'] = profile('id_group');
        $save_data['file'] = $this->imageCopy($this->input->post('file', true), $_POST['file-dir-file']);

        $this->model->insert($save_data);

        set_message("success", cclang("notif_save"));
        $json['redirect'] = url("c_spj");
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
    $this->is_allowed('c_spj_update');
    if ($row = $this->model->find(dec_url($id))) {
      $this->template->set_title(cclang("update") . " " . $this->title);
      $data = array(
        'action' => url("c_spj/update_action/$id"),
        'nomor_spj' => set_value("nomor_spj", $row->nomor_spj),
        'tanggal_surat_spj' => $row->tanggal_surat_spj == "" ? "" : date("Y-m-d",  strtotime($row->tanggal_surat_spj)),
        'no_invoice' => set_value("no_invoice", $row->no_invoice),
        'nama_pembayar' => set_value("nama_pembayar", $row->nama_pembayar),
        'jumlah_uang' => set_value("jumlah_uang", $row->jumlah_uang),
        'file' => set_value("file", $row->file),
      );
      $this->template->view("update", $data);
    } else {
      $this->error404();
    }
  }

  function update_action($id)
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('c_spj_update')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("nomor_spj", "* Nomor spj", "trim|xss_clean|required");
      $this->form_validation->set_rules("tanggal_surat_spj", "* Tanggal surat spj", "trim|xss_clean");
      $this->form_validation->set_rules("no_invoice", "* No invoice", "trim|xss_clean");
      $this->form_validation->set_rules("nama_pembayar", "* Nama pembayar", "trim|xss_clean");
      $this->form_validation->set_rules("jumlah_uang", "* Jumlah uang", "trim|xss_clean");
      $this->form_validation->set_rules("file", "* File", "trim|xss_clean");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['nomor_spj'] = $this->input->post('nomor_spj', true);
        $save_data['tanggal_surat_spj'] = date("Y-m-d",  strtotime($this->input->post('tanggal_surat_spj', true)));
        $save_data['no_invoice'] = $this->input->post('no_invoice', true);
        $save_data['nama_pembayar'] = $this->input->post('nama_pembayar', true);
        $save_data['jumlah_uang'] = $this->input->post('jumlah_uang', true);
        $save_data['id_group'] = profile('id_group');
        $save_data['file'] = $this->imageCopy($this->input->post('file', true), $_POST['file-dir-file']);

        $save = $this->model->change(dec_url($id), $save_data);

        set_message("success", cclang("notif_update"));

        $json['redirect'] = url("c_spj");
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
      if (!is_allowed('c_spj_delete')) {
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

/* End of file C_spj.php */
/* Location: ./application/modules/c_spj/controllers/backend/C_spj.php */
