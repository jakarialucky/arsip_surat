<?php defined('BASEPATH') OR exit('No direct script access allowed');

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


class C_rba_model extends MY_Model{

  private $table        = "tbl_rba";
  private $primary_key  = "id_rba";
  private $column_order = array('nomor_rba', 'tanggal_rba', 'nama_rba', 'no_rekening_kegiatan_rba', 'berkas_rba');
  private $order        = array('tbl_rba.id_rba'=>"DESC");
  private $select       = "tbl_rba.id_rba,tbl_rba.nomor_rba,tbl_rba.tanggal_rba,tbl_rba.nama_rba,tbl_rba.no_rekening_kegiatan_rba,tbl_rba.berkas_rba";

public function __construct()
	{
		$config = array(
      'table' 	      => $this->table,
			'primary_key' 	=> $this->primary_key,
		 	'select' 	      => $this->select,
      'column_order' 	=> $this->column_order,
      'order' 	      => $this->order,
		 );

		parent::__construct($config);
	}

  private function _get_datatables_query()
    {
      $this->db->select($this->select);
      $this->db->from($this->table);

    if($this->input->post("nomor_rba"))
        {
          $this->db->like("tbl_rba.nomor_rba", $this->input->post("nomor_rba"));
        }

    if($this->input->post("tanggal_rba"))
        {
          $this->db->like("tbl_rba.tanggal_rba", date('Y-m-d',strtotime($this->input->post("tanggal_rba"))));
        }

    if($this->input->post("nama_rba"))
        {
          $this->db->like("tbl_rba.nama_rba", $this->input->post("nama_rba"));
        }

    if($this->input->post("no_rekening_kegiatan_rba"))
        {
          $this->db->like("tbl_rba.no_rekening_kegiatan_rba", $this->input->post("no_rekening_kegiatan_rba"));
        }

    if($this->input->post("berkas_rba"))
        {
          $this->db->like("tbl_rba.berkas_rba", $this->input->post("berkas_rba"));
        }

      if(isset($_POST['order'])) // here order processing
       {
           $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
       }
       else if(isset($this->order))
       {
           $order = $this->order;
           $this->db->order_by(key($order), $order[key($order)]);
       }

    }


    public function get_datatables()
    {
        $this->_get_datatables_query();
        if($_POST['length'] != -1)
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

/* End of file C_rba_model.php */
/* Location: ./application/modules/c_rba/models/C_rba_model.php */
