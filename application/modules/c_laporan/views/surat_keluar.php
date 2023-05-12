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
          <table style="width:100%" id="table" class="table table-bordered table-striped dt-responsive nowrap">
            <thead>
              <tr>
                <th>No Surat</th>
                <th>Tanggal Surat</th>
                <th>Perihal</th>
                <th>Pengirim</th>
                <th>Kepada</th>
                <th>Jenis Surat</th>
                <th>Sifat Surat</th>
                <th>Petugas</th>
                <th>Deskripsi</th>
                <th>Berkas Surat Keluar</th>
                <th>Dibuat Pada</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($surat_keluar  as $surat) { ?>
                <tr>
                  <td><?php echo $surat->no_surat; ?></td>
                  <td><?php echo $surat->tgl_surat; ?></td>
                  <td><?php echo $surat->perihal; ?></td>
                  <td><?php echo $surat->pengirim; ?></td>
                  <td><?php echo $surat->kepada; ?></td>
                  <td><?php echo $surat->id_jenis_surat; ?></td>
                  <td><?php echo $surat->sifat_surat; ?></td>
                  <td><?php echo $surat->id_petugas; ?></td>
                  <td><?php echo $surat->deskripsi; ?></td>
                  <td><?php echo $surat->berkas_surat_keluar; ?></td>
                  <td><?php echo $surat->dibuat_pada; ?></td>
                </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>


      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  $(document).ready(function() {
    var table;
    table = $('#table').DataTable({
      responsive: true,
      // Pagination settings
      dom: `<'row'<'col-sm-6 text-left'f><'col-sm-6 text-right'B>>
			<'row'<'col-sm-12'tr>>
			<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7 dataTables_pager'lp>>`,

      buttons: [
        'print',
        'copyHtml5',
        'excelHtml5',
        'csvHtml5',
        // 'pdfHtml5',
        {
          extend: 'pdfHtml5',
          orientation: 'landscape',
          customize: function(doc) {
            // atur kustomisasi dokumen PDF di sini
          },
        }
      ]
    });


  });
</script>