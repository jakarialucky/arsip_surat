<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card-header bg-primary text-white">
      <?=ucwords($title_module)?>
    </div>
    <div class="card">
      <div class="card-body">
        <table class="table table-bordered table-striped">
        <tr>
          <td>No surat</td>
          <td><?=$no_surat?></td>
        </tr>
      <tr>
        <td>Tanggal Surat</td>
        <td><?=$tgl_surat != "" ? date('d-m-Y',strtotime($tgl_surat)):""?></td>
      </tr>
        <tr>
          <td>Perihal</td>
          <td><?=$perihal?></td>
        </tr>
        <tr>
          <td>Pengirim</td>
          <td><?=$pengirim?></td>
        </tr>
        <tr>
          <td>Kepada</td>
          <td><?=$kepada?></td>
        </tr>
        <tr>
          <td>Jenis Surat</td>
          <td><?=$id_jenis_surat?></td>
        </tr>
        <tr>
          <td>Sifat surat</td>
          <td><?=$sifat_surat?></td>
        </tr>
        <tr>
          <td>Deskripsi</td>
          <td><?=$deskripsi?></td>
        </tr>
        <tr>
          <td>Berkas surat keluar</td>
          <td><?=is_image($berkas_surat_keluar)?></td>
        </tr>
        </table>

        <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger mt-3"><?=cclang("back")?></a>
      </div>
    </div>
  </div>
</div>
