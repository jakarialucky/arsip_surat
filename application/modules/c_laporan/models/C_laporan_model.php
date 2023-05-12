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


class C_laporan_model extends MY_Model
{

  private $table        = "tbl_rba";
  private $primary_key  = "id_rba";
  private $column_order = array('nomor_rba', 'tanggal_rba', 'nama_rba', 'no_rekening_kegiatan_rba', 'berkas_rba');
  private $order        = array('tbl_rba.id_rba' => "DESC");
  private $select       = "tbl_rba.id_rba,tbl_rba.nomor_rba,tbl_rba.tanggal_rba,tbl_rba.nama_rba,tbl_rba.no_rekening_kegiatan_rba,tbl_rba.berkas_rba";

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

  public function get_all_surat_masuk($tanggal_awal, $tanggal_akhir)
  {
    $id_group = profile('id_group');
    $this->db->select('*');
    $this->db->from('tb_surat_masuk');
    if ($id_group != 1) {
      $this->db->where('tb_surat_masuk.id_group', $id_group);
    }
    $this->db->join('tb_jenis_surat', 'tb_jenis_surat.id_jenis_surat = tb_surat_masuk.id_jenis_surat', 'left');
    if ($tanggal_awal != '' || $tanggal_akhir != '') {
      $this->db->where('tgl_surat >=', $tanggal_awal);
      $this->db->where('tgl_surat <=', $tanggal_akhir);
    }

    $query = $this->db->get();
    return $query->result();
  }
  public function get_all_surat_keluar($tanggal_awal, $tanggal_akhir)
  {
    $id_group = profile('id_group');
    $this->db->select('*');
    $this->db->from('tb_surat_keluar');
    if ($id_group != 1) {
      $this->db->where('tb_surat_keluar.id_group', $id_group);
    }
    if ($tanggal_awal != '' || $tanggal_akhir != '') {
      $this->db->where('tgl_surat >=', $tanggal_awal);
      $this->db->where('tgl_surat <=', $tanggal_akhir);
    }
    $query = $this->db->get();
    return $query->result();
  }
  public function get_all_rba($tanggal_awal, $tanggal_akhir)
  {
    $id_group = profile('id_group');
    $this->db->select('*');
    $this->db->from('tbl_rba');
    if ($id_group != 1) {
      $this->db->where('tbl_rba.id_group', $id_group);
    }
    if ($tanggal_awal != '' || $tanggal_akhir != '') {
      $this->db->where('tanggal_rba >=', $tanggal_awal);
      $this->db->where('tanggal_rba <=', $tanggal_akhir);
    }
    $query = $this->db->get();
    return $query->result();
  }
  public function get_all_spj($tanggal_awal, $tanggal_akhir)
  {
    $id_group = profile('id_group');
    $this->db->select('*');
    $this->db->from('tbl_spj');
    if ($id_group != 1) {
      $this->db->where('tbl_spj.id_group', $id_group);
    }
    if ($tanggal_awal != '' || $tanggal_akhir != '') {
      $this->db->where('tanggal_surat_spj >=', $tanggal_awal);
      $this->db->where('tanggal_surat_spj <=', $tanggal_akhir);
    }
    $query = $this->db->get();
    return $query->result();
  }
}

/* End of file C_rba_model.php */
/* Location: ./application/modules/c_rba/models/C_rba_model.php */
