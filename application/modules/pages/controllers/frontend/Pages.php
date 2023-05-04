<?php defined('BASEPATH') or exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : mpampamdev  */
/*| version : V.0.0.2 */
/*| facebook : https://web.facebook.com/mpampam */
/*| fanspage : https://web.facebook.com/programmerjalanan */
/*| instagram : https://www.instagram.com/programmer_jalanan */
/*| youtube : https://www.youtube.com/channel/UC1TlTaxRNdwrCqjBJ5zh6TA */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 24/05/2022 08:50*/
/*| Please DO NOT modify this information*/


class Pages extends Frontend
{

  private $title = "Ruangan";


  public function __construct()
  {
    $config = array(
      'title' => $this->title,
    );
    parent::__construct($config);
    $this->load->model("Pages_model", "model");
  }

  function index()
  {
    // $this->is_allowed('ruangan_list');
    $this->template_front->set_title($this->title);
    $this->template_front->view("index");
  }
  // dashboard Home Publish
  function dash()
  {
    // $this->is_allowed('ruangan_list');
    $this->template_front->set_title('Home');
    $this->template_front->view("dash");
  }
  function inventaris()
  {
    // $this->is_allowed('ruangan_list');
    $this->template_front->set_title('Invetaris Alat dan Bahan');
    $this->template_front->view("inven");
  }
  function penggunaan()
  {
    // $this->is_allowed('ruangan_list');
    $this->template_front->set_title('Form Penggunaan Laboratorium');
    $this->template_front->view("penggunaan");
  }

  function json()
  {
    if ($this->input->is_ajax_request()) {
      // if (!is_allowed('ruangan_list')) {
      //   show_error("Access Permission", 403, '403::Access Not Permission');
      //   exit();
      // }

      $list = $this->model->get_datatables();
      $data = array();
      foreach ($list as $row) {
        $rows = array();
        // $rows[] = $row->kode_ruangan;
        $rows[] = $row->nama_gedung;
        $rows[] = $row->nama_ruangan;

        $rows[] = $row->nama_gedung;
        $rows[] = $row->nama_gedung;

        // $rows[] = '
        //           <div class="btn-group" role="group" aria-label="Basic example">
        //               <a href="' . url("ruangan/detail/" . enc_url($row->kode_ruangan)) . '" id="detail" class="btn btn-primary" title="' . cclang("detail") . '">
        //                 <i class="mdi mdi-file"></i>
        //               </a>
        //               <a href="' . url("ruangan/update/" . enc_url($row->kode_ruangan)) . '" id="update" class="btn btn-warning" title="' . cclang("update") . '">
        //                 <i class="ti-pencil"></i>
        //               </a>
        //               <a href="' . url("ruangan/delete/" . enc_url($row->kode_ruangan)) . '" id="delete" class="btn btn-danger" title="' . cclang("delete") . '">
        //                 <i class="ti-trash"></i>
        //               </a>
        //             </div>
        //          ';

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
    if (!is_allowed('ruangan_filter')) {
      echo "access not permission";
    } else {
      $this->template->view("filter", [], false);
    }
  }

  function detail($id)
  {
    // $this->is_allowed('ruangan_detail');
    if ($row = $this->model->find(dec_url($id))) {
      $this->template->set_title("Detail " . $this->title);
      $data = array(
        "kode_ruangan" => $row->kode_ruangan,
        "nama_ruangan" => $row->nama_ruangan,
        "nama_gedung" => $row->nama_gedung,
      );
      $this->template->view("view", $data);
    } else {
      $this->error404();
    }
  }

  function add()
  {
    // $this->is_allowed('ruangan_add');
    $this->template->set_title(cclang("add") . " " . $this->title);
    $data = array(
      'action' => url("ruangan/add_action"),
      'nama_ruangan' => set_value("nama_ruangan"),
      'nama_gedung' => set_value("nama_gedung"),
    );
    $this->template->view("add", $data);
  }

  function add_action()
  {
    if ($this->input->is_ajax_request()) {
      // if (!is_allowed('ruangan_add')) {
      //   show_error("Access Permission", 403, '403::Access Not Permission');
      //   exit();
      // }

      $json = array('success' => false);
      $get_id = $this->db->query('SELECT * FROM tbl_ruangan order by kode_ruangan DESC')->row('kode_ruangan');
      $new_id = 'RU-' . generate_id($get_id);
      $save_data['kode_ruangan'] = $new_id;
      $this->form_validation->set_rules("nama_ruangan", "* Nama ruangan", "trim|xss_clean|required");
      $this->form_validation->set_rules("nama_gedung", "* Nama gedung", "trim|xss_clean|required");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['nama_ruangan'] = $this->input->post('nama_ruangan', true);
        $save_data['nama_gedung'] = $this->input->post('nama_gedung', true);

        $this->model->insert($save_data);

        set_message("success", cclang("notif_save"));
        $json['redirect'] = url("ruangan");
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
    // $this->is_allowed('ruangan_update');
    if ($row = $this->model->find(dec_url($id))) {
      $this->template->set_title(cclang("update") . " " . $this->title);
      $data = array(
        'action' => url("ruangan/update_action/$id"),
        'nama_ruangan' => set_value("nama_ruangan", $row->nama_ruangan),
        'nama_gedung' => set_value("nama_gedung", $row->nama_gedung),
      );
      $this->template->view("update", $data);
    } else {
      $this->error404();
    }
  }

  function update_action($id)
  {
    if ($this->input->is_ajax_request()) {
      // if (!is_allowed('ruangan_update')) {
      //   show_error("Access Permission", 403, '403::Access Not Permission');
      //   exit();
      // }

      $json = array('success' => false);
      $this->form_validation->set_rules("nama_ruangan", "* Nama ruangan", "trim|xss_clean|required");
      $this->form_validation->set_rules("nama_gedung", "* Nama gedung", "trim|xss_clean|required");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['nama_ruangan'] = $this->input->post('nama_ruangan', true);
        $save_data['nama_gedung'] = $this->input->post('nama_gedung', true);

        $save = $this->model->change(dec_url($id), $save_data);

        set_message("success", cclang("notif_update"));

        $json['redirect'] = url("ruangan");
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
      // if (!is_allowed('ruangan_delete')) {
      //   return $this->response([
      //     'type_msg' => "error",
      //     'msg' => "do not have permission to access"
      //   ]);
      // }

      $this->model->remove(dec_url($id));
      $json['type_msg'] = "success";
      $json['msg'] = cclang("notif_delete");


      return $this->response($json);
    }
  }
  function testing()
  {
    $url = "https://www.googleapis.com/blogger/v3/blogs/3470634935025256176?key=AIzaSyCqqeoyswB-gAU6uUbL7XnWICKPsNu4U3Q";
    // $authorization = "Authorization: Bearer " . $data['access_token'];
    try {
      $ch = curl_init($url);
      curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
      curl_setopt($ch, CURLOPT_HTTPGET, 1);
      curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
      $resp = curl_exec($ch);
      curl_close($ch);
      $posts = json_decode($resp, true);
      echo '<pre>';
      print_r($resp);
      echo '</pre>';
      die();
      $data['blog'] = $posts;
      // echo '<pre>'; print_r( $data['blog'][0]); echo '</pre>';
      // die();
      // do whatever you want with this data responses
    } catch (Exception $ex) {
      echo $ex->getMessage();
    }
  }
}

/* End of file Ruangan.php */
/* Location: ./application/modules/ruangan/controllers/backend/Ruangan.php */
