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


class Tb_bagian_model extends MY_Model{

  private $table        = "tb_bagian";
  private $primary_key  = "id_bagian";
  private $column_order = array('nama_bagian', 'username_admin_bagian', 'password_bagian', 'nama_lengkap', 'tanggal_lahir_bagian', 'alamat', 'no_hp_bagian', 'gambar');
  private $order        = array('tb_bagian.id_bagian'=>"DESC");
  private $select       = "tb_bagian.id_bagian,tb_bagian.nama_bagian,tb_bagian.username_admin_bagian,tb_bagian.password_bagian,tb_bagian.nama_lengkap,tb_bagian.tanggal_lahir_bagian,tb_bagian.alamat,tb_bagian.no_hp_bagian,tb_bagian.gambar";

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

    if($this->input->post("nama_bagian"))
        {
          $this->db->like("tb_bagian.nama_bagian", $this->input->post("nama_bagian"));
        }

    if($this->input->post("username_admin_bagian"))
        {
          $this->db->like("tb_bagian.username_admin_bagian", $this->input->post("username_admin_bagian"));
        }

    if($this->input->post("password_bagian"))
        {
          $this->db->like("tb_bagian.password_bagian", $this->input->post("password_bagian"));
        }

    if($this->input->post("nama_lengkap"))
        {
          $this->db->like("tb_bagian.nama_lengkap", $this->input->post("nama_lengkap"));
        }

    if($this->input->post("tanggal_lahir_bagian"))
        {
          $this->db->like("tb_bagian.tanggal_lahir_bagian", date('Y-m-d',strtotime($this->input->post("tanggal_lahir_bagian"))));
        }

    if($this->input->post("alamat"))
        {
          $this->db->like("tb_bagian.alamat", $this->input->post("alamat"));
        }

    if($this->input->post("no_hp_bagian"))
        {
          $this->db->like("tb_bagian.no_hp_bagian", $this->input->post("no_hp_bagian"));
        }

    if($this->input->post("gambar"))
        {
          $this->db->like("tb_bagian.gambar", $this->input->post("gambar"));
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

/* End of file Tb_bagian_model.php */
/* Location: ./application/modules/tb_bagian/models/Tb_bagian_model.php */
