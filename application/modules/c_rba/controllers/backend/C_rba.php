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


class C_rba extends Backend
{

  private $title = "Surat Rba";


  public function __construct()
  {
    $config = array(
      'title' => $this->title,
    );
    parent::__construct($config);
    $this->load->model("C_rba_model", "model");
  }

  function index()
  {
    $this->is_allowed('c_rba_list');
    $this->template->set_title($this->title);
    $this->template->view("index");
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

  function detail($id)
  {
    $this->is_allowed('c_rba_detail');
    if ($row = $this->model->find(dec_url($id))) {
      $this->template->set_title("Detail " . $this->title);
      $data = array(
        "nomor_rba" => $row->nomor_rba,
        "tanggal_rba" => $row->tanggal_rba,
        "nama_rba" => $row->nama_rba,
        "no_rekening_kegiatan_rba" => $row->no_rekening_kegiatan_rba,
        "berkas_rba" => $row->berkas_rba,
      );
      $this->template->view("view", $data);
    } else {
      $this->error404();
    }
  }

  function add()
  {
    $this->is_allowed('c_rba_add');
    $this->template->set_title(cclang("add") . " " . $this->title);
    $data = array(
      'action' => url("c_rba/add_action"),
      'nomor_rba' => set_value("nomor_rba"),
      'tanggal_rba' => set_value("tanggal_rba"),
      'nama_rba' => set_value("nama_rba"),
      'no_rekening_kegiatan_rba' => set_value("no_rekening_kegiatan_rba"),
      'berkas_rba' => set_value("berkas_rba"),
    );
    $this->template->view("add", $data);
  }

  function add_action()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('c_rba_add')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("nomor_rba", "* Nomor rba", "trim|xss_clean|required");
      $this->form_validation->set_rules("tanggal_rba", "* Tanggal rba", "trim|xss_clean");
      $this->form_validation->set_rules("nama_rba", "* Nama rba", "trim|xss_clean");
      $this->form_validation->set_rules("no_rekening_kegiatan_rba", "* No rekening kegiatan rba", "trim|xss_clean");
      $this->form_validation->set_rules("berkas_rba", "* Berkas rba", "trim|xss_clean");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['nomor_rba'] = $this->input->post('nomor_rba', true);
        $save_data['tanggal_rba'] = date("Y-m-d",  strtotime($this->input->post('tanggal_rba', true)));
        $save_data['nama_rba'] = $this->input->post('nama_rba', true);
        $save_data['no_rekening_kegiatan_rba'] = $this->input->post('no_rekening_kegiatan_rba', true);
        $save_data['id_group'] = profile('id_group');
        $save_data['berkas_rba'] = $this->imageCopy($this->input->post('berkas_rba', true), $_POST['file-dir-berkas_rba']);

        $this->model->insert($save_data);

        set_message("success", cclang("notif_save"));
        $json['redirect'] = url("c_rba");
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
    $this->is_allowed('c_rba_update');
    if ($row = $this->model->find(dec_url($id))) {
      $this->template->set_title(cclang("update") . " " . $this->title);
      $data = array(
        'action' => url("c_rba/update_action/$id"),
        'nomor_rba' => set_value("nomor_rba", $row->nomor_rba),
        'tanggal_rba' => $row->tanggal_rba == "" ? "" : date("Y-m-d",  strtotime($row->tanggal_rba)),
        'nama_rba' => set_value("nama_rba", $row->nama_rba),
        'no_rekening_kegiatan_rba' => set_value("no_rekening_kegiatan_rba", $row->no_rekening_kegiatan_rba),
        'berkas_rba' => set_value("berkas_rba", $row->berkas_rba),
      );
      $this->template->view("update", $data);
    } else {
      $this->error404();
    }
  }

  function update_action($id)
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('c_rba_update')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("nomor_rba", "* Nomor rba", "trim|xss_clean|required");
      $this->form_validation->set_rules("tanggal_rba", "* Tanggal rba", "trim|xss_clean");
      $this->form_validation->set_rules("nama_rba", "* Nama rba", "trim|xss_clean");
      $this->form_validation->set_rules("no_rekening_kegiatan_rba", "* No rekening kegiatan rba", "trim|xss_clean");
      $this->form_validation->set_rules("berkas_rba", "* Berkas rba", "trim|xss_clean");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['nomor_rba'] = $this->input->post('nomor_rba', true);
        $save_data['tanggal_rba'] = date("Y-m-d",  strtotime($this->input->post('tanggal_rba', true)));
        $save_data['nama_rba'] = $this->input->post('nama_rba', true);
        $save_data['no_rekening_kegiatan_rba'] = $this->input->post('no_rekening_kegiatan_rba', true);
        $save_data['id_group'] = profile('id_group');
        $save_data['berkas_rba'] = $this->imageCopy($this->input->post('berkas_rba', true), $_POST['file-dir-berkas_rba']);

        $save = $this->model->change(dec_url($id), $save_data);

        set_message("success", cclang("notif_update"));

        $json['redirect'] = url("c_rba");
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
      if (!is_allowed('c_rba_delete')) {
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

/* End of file C_rba.php */
/* Location: ./application/modules/c_rba/controllers/backend/C_rba.php */
