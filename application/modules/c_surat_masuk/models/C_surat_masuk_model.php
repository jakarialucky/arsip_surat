<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : mpampamdev  */
/*| version : V.0.0.2 */
/*| facebook : https://web.facebook.com/mpampam */
/*| fanspage : https://web.facebook.com/programmerjalanan */
/*| instagram : https://www.instagram.com/programmer_jalanan */
/*| youtube : https://www.youtube.com/channel/UC1TlTaxRNdwrCqjBJ5zh6TA */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 04/05/2023 13:35*/
/*| Please DO NOT modify this information*/


class C_surat_masuk_model extends MY_Model{

  private $table        = "tb_surat_masuk";
  private $primary_key  = "id_surat_masuk";
  private $column_order = array('no_surat', 'tgl_surat', 'perihal', 'id_jenis_surat', 'pengirim', 'ditujukan', 'deskripsi', 'id_petugas', 'sifat_surat', 'status_disposisi', 'berkas_surat_masuk');
  private $order        = array('tb_surat_masuk.id_surat_masuk'=>"DESC");
  private $select       = "tb_surat_masuk.id_surat_masuk,tb_surat_masuk.no_surat,tb_surat_masuk.tgl_surat,tb_surat_masuk.perihal,tb_surat_masuk.id_jenis_surat,tb_surat_masuk.pengirim,tb_surat_masuk.ditujukan,tb_surat_masuk.deskripsi,tb_surat_masuk.id_petugas,tb_surat_masuk.sifat_surat,tb_surat_masuk.status_disposisi,tb_surat_masuk.berkas_surat_masuk";

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
      $this->_get_join();

    if($this->input->post("no_surat"))
        {
          $this->db->like("tb_surat_masuk.no_surat", $this->input->post("no_surat"));
        }

    if($this->input->post("tgl_surat"))
        {
          $this->db->like("tb_surat_masuk.tgl_surat", date('Y-m-d',strtotime($this->input->post("tgl_surat"))));
        }

    if($this->input->post("perihal"))
        {
          $this->db->like("tb_surat_masuk.perihal", $this->input->post("perihal"));
        }

    if($this->input->post("id_jenis_surat"))
        {
          $this->db->like("tb_surat_masuk.id_jenis_surat", $this->input->post("id_jenis_surat"));
        }

    if($this->input->post("pengirim"))
        {
          $this->db->like("tb_surat_masuk.pengirim", $this->input->post("pengirim"));
        }

    if($this->input->post("ditujukan"))
        {
          $this->db->like("tb_surat_masuk.ditujukan", $this->input->post("ditujukan"));
        }

    if($this->input->post("deskripsi"))
        {
          $this->db->like("tb_surat_masuk.deskripsi", $this->input->post("deskripsi"));
        }

    if($this->input->post("id_petugas"))
        {
          $this->db->like("tb_surat_masuk.id_petugas", $this->input->post("id_petugas"));
        }

    if($this->input->post("sifat_surat"))
        {
          $this->db->like("tb_surat_masuk.sifat_surat", $this->input->post("sifat_surat"));
        }

    if($this->input->post("status_disposisi"))
        {
          $this->db->like("tb_surat_masuk.status_disposisi", $this->input->post("status_disposisi"));
        }

    if($this->input->post("berkas_surat_masuk"))
        {
          $this->db->like("tb_surat_masuk.berkas_surat_masuk", $this->input->post("berkas_surat_masuk"));
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
      $this->_get_join();
      return $this->db->count_all_results();
    }

    public function _get_join()
    {
      $this->db->select("tb_jenis_surat.jenis_surat");
      $this->db->join("tb_jenis_surat","tb_jenis_surat.id_jenis_surat = tb_surat_masuk.id_jenis_surat","left");
      $this->db->select("auth_user.name");
      $this->db->join("auth_user","auth_user.id_user = tb_surat_masuk.id_petugas","left");
    }

    public function get_detail($id)
    {
        $this->db->select("".$this->table.".*");
        $this->db->from($this->table);
        $this->_get_join();
        $this->db->where("".$this->table.'.'.$this->primary_key,$id);
        $query = $this->db->get();
        if($query->num_rows()>0)
        {
          return $query->row();
        }else{
          return FALSE;
        }
    }

}

/* End of file C_surat_masuk_model.php */
/* Location: ./application/modules/c_surat_masuk/models/C_surat_masuk_model.php */
