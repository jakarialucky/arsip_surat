<div class="row">
  <div class="col-md-12 col-xl-12 mx-auto animated fadeIn delay-2s">
    <div class="card card-custom gutter-b">
      <!-- <div class="card-header bg-primary text-white">
        <?= ucwords($title_module) ?>
      </div> -->
      <div class="card-header flex-wrap py-3 d-none">


      </div>
      <div class="card-body">

        <div class="container mt-4">
          <div class="row justify-content-center">
            <div class="col-md-6">
              <h4 class="mb-4">Form Report Laporan</h4>
              <form action="<?= url("c_laporan/pilih_laporan") ?>" method="POST">
                <div class="form-group">
                  <label for="tgl_awal">Tanggal Awal</label>
                  <input type="date" class="form-control" id="tgl_awal" name="tgl_awal">
                </div>
                <div class="form-group">
                  <label for="tgl_akhir">Tanggal Akhir</label>
                  <input type="date" class="form-control" id="tgl_akhir" name="tgl_akhir">
                </div>
                <div class="form-group">
                  <label for="jenis_laporan">Jenis Laporan</label>
                  <select class="form-control" id="jenis_laporan" name="jenis_laporan">
                    <option value="">-- Pilih Jenis Laporan --</option>
                    <option value="laporan_surat_masuk">Laporan Surat Masuk</option>
                    <option value="laporan_surat_keluar">Laporan Surat Keluar</option>
                    <option value="laporan_rba">Laporan RBA</option>
                    <option value="laporan_spj">Laporan SPJ</option>
                  </select>
                </div>
                <button type="submit" class="btn btn-primary">Cetak Laporan</button>
              </form>
            </div>
          </div>
        </div>


      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  $(document).ready(function() {
    var table;
    table = $('#table').DataTable({});


  });
</script>