<?php defined('BASEPATH') or exit('No direct script access allowed');


function sess($str)
{
  $ci =  &get_instance();
  return $ci->session->userdata($str);
}


function setting($kd = null, $field = "value")
{
  $ci =  &get_instance();
  $kd = strtolower($kd);
  $qry = $ci->db->get_where("setting", ["options" => $kd]);
  if ($qry->num_rows() > 0) {
    return $qry->row()->$field;
  } else {
    return "System not available";
  }
}


function imgView($img = "", $class = "img-thumbnail", $style = "")
{
  $str = '';
  if ($img != "") {
    // $str .= '<a href="' . base_url() . '_temp/uploads/img/' . $img . '" data-fancybox="gallery">
    //           <img src="' . base_url() . '_temp/uploads/img/' . $img . '" alt="' . $img . '" style="' . $style . '" class="' . $class . '" />
    //         </a>';
    $str .= '<a href="' . base_url() . '_temp/uploads/img/' . $img . '" data-fancybox="gallery" class="symbol symbol-50 flex-shrink-0">
                <img src="' . base_url() . '_temp/uploads/img/' . $img . '" alt="photo">
            </a>';
  } else {
    $str .= '<a href="' . base_url() . '_temp/uploads/noimage.jpg" data-fancybox="gallery" class="symbol symbol-50 flex-shrink-0">
              <img src="' . base_url() . '_temp/uploads/noimage.jpg" alt="noimage" style="' . $style . '" class="' . $class . '" />
            </a>';
  }

  return $str;
}


function readJSON($path)
{
  $string = file_get_contents($path);
  $obj = json_decode($string);
  return $obj;
}

function generate_id($last_id)
{
  $ambil_kanan = substr($last_id, -6);
  $id_baru = $ambil_kanan + 1;
  return sprintf("%06d", $id_baru);
}
