<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card-header bg-primary text-white">
      <?=ucwords($title_module)?>
    </div>
    <div class="card">
      <div class="card-body">
        <table class="table table-bordered table-striped">
        <tr>
          <td>Nama bagian</td>
          <td><?=$nama_bagian?></td>
        </tr>
        <tr>
          <td>Username admin bagian</td>
          <td><?=$username_admin_bagian?></td>
        </tr>
        <tr>
          <td>Password bagian</td>
          <td><?=$password_bagian?></td>
        </tr>
        <tr>
          <td>Nama lengkap</td>
          <td><?=$nama_lengkap?></td>
        </tr>
      <tr>
        <td>Tanggal lahir bagian</td>
        <td><?=$tanggal_lahir_bagian != "" ? date('d-m-Y',strtotime($tanggal_lahir_bagian)):""?></td>
      </tr>
        <tr>
          <td>Alamat</td>
          <td><?=$alamat?></td>
        </tr>
        <tr>
          <td>No hp bagian</td>
          <td><?=$no_hp_bagian?></td>
        </tr>
        <tr>
          <td>Gambar</td>
          <td><?=$gambar?></td>
        </tr>
        </table>

        <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger mt-3"><?=cclang("back")?></a>
      </div>
    </div>
  </div>
</div>
