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


class Pages_model extends MY_Model
{

  private $table        = "tbl_ruangan";
  private $primary_key  = "kode_ruangan";
  private $column_order = array('kode_ruangan', 'nama_ruangan', 'nama_gedung');
  private $order        = array('tbl_ruangan.kode_ruangan' => "DESC");
  private $select       = "tbl_ruangan.kode_ruangan,tbl_ruangan.kode_ruangan,tbl_ruangan.nama_ruangan,tbl_ruangan.nama_gedung";

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
    $this->db->select($this->select);
    $this->db->from($this->table);
    $this->_get_join();
    if ($this->input->post("kode_ruangan")) {
      $this->db->like("tbl_ruangan.kode_ruangan", $this->input->post("kode_ruangan"));
      $this->db->like("tbl_ruangan.nama_ruangan", $this->input->post("nama_ruangan"));
      $this->db->like("tbl_ruangan.nama_gedung", $this->input->post("nama_gedung"));
    }

    if (isset($_POST['order'])) // here order processing
    {
      $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
    } else if (isset($this->order)) {
      $order = $this->order;
      $this->db->order_by(key($order), $order[key($order)]);
    }
  }
  public function _get_join()
  {
    $this->db->select("tbl_barang.nama_barang_merk");
    $this->db->join("tbl_barang", "tbl_barang.kode_barang = tbl_transaksi_barang.kode_barang", "left");
    $this->db->select("tbl_ruangan.nama_ruangan");
    $this->db->join("tbl_ruangan", "tbl_ruangan.kode_ruangan = tbl_transaksi_barang.kode_ruangan", "left");
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

/* End of file Ruangan_model.php */
/* Location: ./application/modules/ruangan/models/Ruangan_model.php */
