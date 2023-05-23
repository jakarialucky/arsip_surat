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


class C_spj_model extends MY_Model
{

  private $table        = "tbl_spj";
  private $primary_key  = "id_spj";
  private $column_order = array('nomor_spj', 'tanggal_surat_spj', 'no_invoice', 'uraian', 'jumlah_uang', 'file');
  private $order        = array('tbl_spj.id_spj' => "DESC");
  private $select       = "tbl_spj.id_spj,tbl_spj.nomor_spj,tbl_spj.tanggal_surat_spj,tbl_spj.no_invoice,tbl_spj.uraian,tbl_spj.jumlah_uang,tbl_spj.file";

  public function __construct()
  {
    $config = array(
      'table'         => $this->table,
      'primary_key'   => $this->primary_key,
      'select'         => $this->select,
      'column_order'   => $this->column_order,
      'order'         => $this->order,
    );

    parent::__construct($config);
  }

  private function _get_datatables_query()
  {
    $id_group = profile('id_group');
    $this->db->select($this->select);
    $this->db->from($this->table);
    if ($id_group != 1) {
      $this->db->where('tbl_spj.id_group', $id_group);
    }

    if ($this->input->post("nomor_spj")) {
      $this->db->like("tbl_spj.nomor_spj", $this->input->post("nomor_spj"));
    }

    if ($this->input->post("tanggal_surat_spj")) {
      $this->db->like("tbl_spj.tanggal_surat_spj", date('Y-m-d', strtotime($this->input->post("tanggal_surat_spj"))));
    }

    if ($this->input->post("no_invoice")) {
      $this->db->like("tbl_spj.no_invoice", $this->input->post("no_invoice"));
    }

    if ($this->input->post("uraian")) {
      $this->db->like("tbl_spj.uraian", $this->input->post("uraian"));
    }

    if ($this->input->post("jumlah_uang")) {
      $this->db->like("tbl_spj.jumlah_uang", $this->input->post("jumlah_uang"));
    }

    if ($this->input->post("file")) {
      $this->db->like("tbl_spj.file", $this->input->post("file"));
    }

    if (isset($_POST['order'])) // here order processing
    {
      $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
    } else if (isset($this->order)) {
      $order = $this->order;
      $this->db->order_by(key($order), $order[key($order)]);
    }
  }


  public function get_datatables()
  {
    $this->_get_datatables_query();
    if ($_POST['length'] != -1)
      $this->db->limit($_POST['length'], $_POST['start']);
    $query = $this->db->get();
    return $query->result();
  }

  public function count_filtered()
  {
    $this->_get_datatables_query();
    $query = $this->db->get();
    return $query->num_rows();
  }

  public function count_all()
  {
    $this->db->select($this->select);
    $this->db->from("$this->table");
    return $this->db->count_all_results();
  }
}

/* End of file C_spj_model.php */
/* Location: ./application/modules/c_spj/models/C_spj_model.php */
