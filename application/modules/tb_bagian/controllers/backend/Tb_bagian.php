<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : mpampamdev  */
/*| version : V.0.0.2 */
/*| facebook : https://web.facebook.com/mpampam */
/*| fanspage : https://web.facebook.com/programmerjalanan */
/*| instagram : https://www.instagram.com/programmer_jalanan */
/*| youtube : https://www.youtube.com/channel/UC1TlTaxRNdwrCqjBJ5zh6TA */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 28/04/2023 08:43*/
/*| Please DO NOT modify this information*/


class Tb_bagian extends Backend{

private $title = "Tb Bagian";


public function __construct()
{
  $config = array(
    'title' => $this->title,
   );
  parent::__construct($config);
  $this->load->model("Tb_bagian_model","model");
}

function index()
{
  $this->is_allowed('tb_bagian_list');
  $this->template->set_title($this->title);
  $this->template->view("index");
}

function json()
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('tb_bagian_list')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $list = $this->model->get_datatables();
    $data = array();
    foreach ($list as $row) {
        $rows = array();
                $rows[] = $row->nama_bagian;
                $rows[] = $row->username_admin_bagian;
                $rows[] = $row->password_bagian;
                $rows[] = $row->nama_lengkap;
                $rows[] = date("d-m-Y",  strtotime($row->tanggal_lahir_bagian));
                $rows[] = $row->alamat;
                $rows[] = $row->no_hp_bagian;
                $rows[] = $row->gambar;
        
        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="'.url("tb_bagian/detail/".enc_url($row->id_bagian)).'" id="detail" class="btn btn-primary" title="'.cclang("detail").'">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="'.url("tb_bagian/update/".enc_url($row->id_bagian)).'" id="update" class="btn btn-warning" title="'.cclang("update").'">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="'.url("tb_bagian/delete/".enc_url($row->id_bagian)).'" id="delete" class="btn btn-danger" title="'.cclang("delete").'">
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
  if(!is_allowed('tb_bagian_filter'))
  {
    echo "access not permission";
  }else{
    $this->template->view("filter",[],false);
  }
}

function detail($id)
{
  $this->is_allowed('tb_bagian_detail');
    if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title("Detail ".$this->title);
    $data = array(
          "nama_bagian" => $row->nama_bagian,
          "username_admin_bagian" => $row->username_admin_bagian,
          "password_bagian" => $row->password_bagian,
          "nama_lengkap" => $row->nama_lengkap,
          "tanggal_lahir_bagian" => $row->tanggal_lahir_bagian,
          "alamat" => $row->alamat,
          "no_hp_bagian" => $row->no_hp_bagian,
          "gambar" => $row->gambar,
    );
    $this->template->view("view",$data);
  }else{
    $this->error404();
  }
}

function add()
{
  $this->is_allowed('tb_bagian_add');
  $this->template->set_title(cclang("add")." ".$this->title);
  $data = array('action' => url("tb_bagian/add_action"),
                  'nama_bagian' => set_value("nama_bagian"),
                  'username_admin_bagian' => set_value("username_admin_bagian"),
                  'password_bagian' => set_value("password_bagian"),
                  'nama_lengkap' => set_value("nama_lengkap"),
                  'tanggal_lahir_bagian' => set_value("tanggal_lahir_bagian"),
                  'alamat' => set_value("alamat"),
                  'no_hp_bagian' => set_value("no_hp_bagian"),
                  'gambar' => set_value("gambar"),
                  );
  $this->template->view("add",$data);
}

function add_action()
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('tb_bagian_add')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("nama_bagian","* Nama bagian","trim|xss_clean");
    $this->form_validation->set_rules("username_admin_bagian","* Username admin bagian","trim|xss_clean");
    $this->form_validation->set_rules("password_bagian","* Password bagian","trim|xss_clean");
    $this->form_validation->set_rules("nama_lengkap","* Nama lengkap","trim|xss_clean");
    $this->form_validation->set_rules("tanggal_lahir_bagian","* Tanggal lahir bagian","trim|xss_clean");
    $this->form_validation->set_rules("alamat","* Alamat","trim|xss_clean");
    $this->form_validation->set_rules("no_hp_bagian","* No hp bagian","trim|xss_clean");
    $this->form_validation->set_rules("gambar","* Gambar","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['nama_bagian'] = $this->input->post('nama_bagian',true);
      $save_data['username_admin_bagian'] = $this->input->post('username_admin_bagian',true);
      $save_data['password_bagian'] = $this->input->post('password_bagian',true);
      $save_data['nama_lengkap'] = $this->input->post('nama_lengkap',true);
      $save_data['tanggal_lahir_bagian'] = date("Y-m-d",  strtotime($this->input->post('tanggal_lahir_bagian', true)));
      $save_data['alamat'] = $this->input->post('alamat',true);
      $save_data['no_hp_bagian'] = $this->input->post('no_hp_bagian',true);
      $save_data['gambar'] = $this->input->post('gambar',true);

      $this->model->insert($save_data);

      set_message("success",cclang("notif_save"));
      $json['redirect'] = url("tb_bagian");
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
  $this->is_allowed('tb_bagian_update');
  if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title(cclang("update")." ".$this->title);
    $data = array('action' => url("tb_bagian/update_action/$id"),
                  'nama_bagian' => set_value("nama_bagian", $row->nama_bagian),
                  'username_admin_bagian' => set_value("username_admin_bagian", $row->username_admin_bagian),
                  'password_bagian' => set_value("password_bagian", $row->password_bagian),
                  'nama_lengkap' => set_value("nama_lengkap", $row->nama_lengkap),
                  'tanggal_lahir_bagian' => $row->tanggal_lahir_bagian == "" ? "":date("Y-m-d",  strtotime($row->tanggal_lahir_bagian)),
                  'alamat' => set_value("alamat", $row->alamat),
                  'no_hp_bagian' => set_value("no_hp_bagian", $row->no_hp_bagian),
                  'gambar' => set_value("gambar", $row->gambar),
                  );
    $this->template->view("update",$data);
  }else {
    $this->error404();
  }
}

function update_action($id)
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('tb_bagian_update')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("nama_bagian","* Nama bagian","trim|xss_clean");
    $this->form_validation->set_rules("username_admin_bagian","* Username admin bagian","trim|xss_clean");
    $this->form_validation->set_rules("password_bagian","* Password bagian","trim|xss_clean");
    $this->form_validation->set_rules("nama_lengkap","* Nama lengkap","trim|xss_clean");
    $this->form_validation->set_rules("tanggal_lahir_bagian","* Tanggal lahir bagian","trim|xss_clean");
    $this->form_validation->set_rules("alamat","* Alamat","trim|xss_clean");
    $this->form_validation->set_rules("no_hp_bagian","* No hp bagian","trim|xss_clean");
    $this->form_validation->set_rules("gambar","* Gambar","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['nama_bagian'] = $this->input->post('nama_bagian',true);
      $save_data['username_admin_bagian'] = $this->input->post('username_admin_bagian',true);
      $save_data['password_bagian'] = $this->input->post('password_bagian',true);
      $save_data['nama_lengkap'] = $this->input->post('nama_lengkap',true);
      $save_data['tanggal_lahir_bagian'] = date("Y-m-d",  strtotime($this->input->post('tanggal_lahir_bagian', true)));
      $save_data['alamat'] = $this->input->post('alamat',true);
      $save_data['no_hp_bagian'] = $this->input->post('no_hp_bagian',true);
      $save_data['gambar'] = $this->input->post('gambar',true);

      $save = $this->model->change(dec_url($id), $save_data);

      set_message("success",cclang("notif_update"));

      $json['redirect'] = url("tb_bagian");
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
    if (!is_allowed('tb_bagian_delete')) {
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

/* End of file Tb_bagian.php */
/* Location: ./application/modules/tb_bagian/controllers/backend/Tb_bagian.php */
