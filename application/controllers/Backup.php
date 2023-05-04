<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Backup extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->dbutil();
        $this->load->helper('download');
        $this->load->helper('file');
    }

    public function index()
    {
        $this->backup_database();
    }

    public function backup_database()
    {
        // Konfigurasi backup database
        $config = array(
            'format' => 'zip',
            'filename' => 'database_backup.sql'
        );

        // Backup database dan simpan ke dalam file zip
        $backup = $this->dbutil->backup($config);
        $filename = 'database_backup_' . date('YmdHis') . '.zip';
        $save = 'database/' . $filename;
        write_file($save, $backup);

        // Download file backup database
        // force_download($filename, $backup);
    }
}
