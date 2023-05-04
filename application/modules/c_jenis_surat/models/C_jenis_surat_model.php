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


class C_jenis_surat_model extends MY_Model{

  private $table        = "tb_jenis_surat";
  private $primary_key  = "id_jenis_surat";
  private $column_order = array('id_jenis_surat', 'jenis_surat');
  private $order        = array('tb_jenis_surat.id_jenis_surat'=>"DESC");
  private $select       = "tb_jenis_surat.id_jenis_surat,tb_jenis_surat.id_jenis_surat,tb_jenis_surat.jenis_surat";

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

    if($this->input->post("id_jenis_surat"))
        {
          $this->db->like("tb_jenis_surat.id_jenis_surat", $this->input->post("id_jenis_surat"));
        }

    if($this->input->post("jenis_surat"))
        {
          $this->db->like("tb_jenis_surat.jenis_surat", $this->input->post("jenis_surat"));
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

/* End of file C_jenis_surat_model.php */
/* Location: ./application/modules/c_jenis_surat/models/C_jenis_surat_model.php */
