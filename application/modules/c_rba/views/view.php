<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card-header bg-primary text-white">
      <?= ucwords($title_module) ?>
    </div>
    <div class="card">
      <div class="card-body">
        <table class="table table-bordered table-striped">
          <tr>
            <td>Perubahan Ke</td>
            <td><?= $perubahan_ke ?></td>
          </tr>
          <tr>
            <td>Tanggal rba</td>
            <td><?= $tanggal_rba != "" ? date('d-m-Y', strtotime($tanggal_rba)) : "" ?></td>
          </tr>
          <tr>
            <td>Nama rba</td>
            <td><?= $nama_rba ?></td>
          </tr>
          <tr>
            <td>No rekening kegiatan rba</td>
            <td><?= $no_rekening_kegiatan_rba ?></td>
          </tr>
          <tr>
            <td>Berkas rba</td>
            <td><?= is_image($berkas_rba) ?></td>
          </tr>
        </table>

        <a href="<?= url($this->uri->segment(2)) ?>" class="btn btn-sm btn-danger mt-3"><?= cclang("back") ?></a>
      </div>
    </div>
  </div>
</div>