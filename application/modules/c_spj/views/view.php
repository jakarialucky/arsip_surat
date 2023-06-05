<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card-header bg-primary text-white">
      <?=ucwords($title_module)?>
    </div>
    <div class="card">
      <div class="card-body">
        <table class="table table-bordered table-striped">
        <tr>
          <td>Kode Rekening SPJ</td>
          <td><?=$nomor_spj?></td>
        </tr>
      <tr>
        <td>Tanggal surat spj</td>
        <td><?=$tanggal_surat_spj != "" ? date('d-m-Y',strtotime($tanggal_surat_spj)):""?></td>
      </tr>
        <tr>
          <td>No invoice</td>
          <td><?=$no_invoice?></td>
        </tr>
        <tr>
          <td>uraian</td>
          <td><?=$uraian?></td>
        </tr>
        <tr>
          <td>Jumlah uang</td>
          <td><?=$jumlah_uang?></td>
        </tr>
        <tr>
          <td>File</td>
          <td><?=is_image($file)?></td>
        </tr>
        </table>

        <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger mt-3"><?=cclang("back")?></a>
      </div>
    </div>
  </div>
</div>
