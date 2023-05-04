<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : jmdev  */
/*| version : V.1.0.0 */
/*| facebook : https://web.facebook.com/ */
/*| fanspage : https://web.facebook.com/ */
/*| instagram : https://www.instagram.com/ */
/*| youtube : https://www.youtube.com/channel/ */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 04/05/2023 14:52*/
/*| Please DO NOT modify this information*/


class C_jenis_surat extends Backend{

private $title = "Jenis Surat";


public function __construct()
{
  $config = array(
    'title' => $this->title,
   );
  parent::__construct($config);
  $this->load->model("C_jenis_surat_model","model");
}

function index()
{
  $this->is_allowed('c_jenis_surat_list');
  $this->template->set_title($this->title);
  $this->template->view("index");
}

function json()
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('c_jenis_surat_list')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $list = $this->model->get_datatables();
    $data = array();
    foreach ($list as $row) {
        $rows = array();
                $rows[] = $row->id_jenis_surat;
                $rows[] = $row->jenis_surat;
        
        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="'.url("c_jenis_surat/detail/".enc_url($row->id_jenis_surat)).'" id="detail" class="btn btn-primary" title="'.cclang("detail").'">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="'.url("c_jenis_surat/update/".enc_url($row->id_jenis_surat)).'" id="update" class="btn btn-warning" title="'.cclang("update").'">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="'.url("c_jenis_surat/delete/".enc_url($row->id_jenis_surat)).'" id="delete" class="btn btn-danger" title="'.cclang("delete").'">
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
  if(!is_allowed('c_jenis_surat_filter'))
  {
    echo "access not permission";
  }else{
    $this->template->view("filter",[],false);
  }
}

function detail($id)
{
  $this->is_allowed('c_jenis_surat_detail');
    if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title("Detail ".$this->title);
    $data = array(
          "id_jenis_surat" => $row->id_jenis_surat,
          "jenis_surat" => $row->jenis_surat,
    );
    $this->template->view("view",$data);
  }else{
    $this->error404();
  }
}

function add()
{
  $this->is_allowed('c_jenis_surat_add');
  $this->template->set_title(cclang("add")." ".$this->title);
  $data = array('action' => url("c_jenis_surat/add_action"),
                  'id_jenis_surat' => set_value("id_jenis_surat"),
                  'jenis_surat' => set_value("jenis_surat"),
                  );
  $this->template->view("add",$data);
}

function add_action()
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('c_jenis_surat_add')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("id_jenis_surat","* Kode Jenis Surat","trim|xss_clean|required");
    $this->form_validation->set_rules("jenis_surat","* Jenis Surat","trim|xss_clean|required");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['id_jenis_surat'] = $this->input->post('id_jenis_surat',true);
      $save_data['jenis_surat'] = $this->input->post('jenis_surat',true);

      $this->model->insert($save_data);

      set_message("success",cclang("notif_save"));
      $json['redirect'] = url("c_jenis_surat");
      $json['success'] = true;
    }else {
      foreach ($_POST as $key => $value) {
        $json['alert'][$key] = form_error($key);
      }
    }

    $this->response($json);
  }
}

function update($id)
{
  $this->is_allowed('c_jenis_surat_update');
  if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title(cclang("update")." ".$this->title);
    $data = array('action' => url("c_jenis_surat/update_action/$id"),
                  'id_jenis_surat' => set_value("id_jenis_surat", $row->id_jenis_surat),
                  'jenis_surat' => set_value("jenis_surat", $row->jenis_surat),
                  );
    $this->template->view("update",$data);
  }else {
    $this->error404();
  }
}

function update_action($id)
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('c_jenis_surat_update')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("id_jenis_surat","* Kode Jenis Surat","trim|xss_clean|required");
    $this->form_validation->set_rules("jenis_surat","* Jenis Surat","trim|xss_clean|required");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['id_jenis_surat'] = $this->input->post('id_jenis_surat',true);
      $save_data['jenis_surat'] = $this->input->post('jenis_surat',true);

      $save = $this->model->change(dec_url($id), $save_data);

      set_message("success",cclang("notif_update"));

      $json['redirect'] = url("c_jenis_surat");
      $json['success'] = true;
    }else {
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
    if (!is_allowed('c_jenis_surat_delete')) {
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

/* End of file C_jenis_surat.php */
/* Location: ./application/modules/c_jenis_surat/controllers/backend/C_jenis_surat.php */
