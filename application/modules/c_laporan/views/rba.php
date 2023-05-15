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
                <th>ID</th>
                <th>Perubahan Ke</th>
                <th>Tanggal RBA</th>
                <th>Nama RBA</th>
                <th>No. Rekening Kegiatan RBA</th>
                <!-- <th>Berkas RBA</th> -->
                <th>Tanggal Buat</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($rba as $row) { ?>
                <tr>
                  <td><?php echo $row->id_rba; ?></td>
                  <td><?php echo $row->nomor_rba; ?></td>
                  <td><?php echo $row->tanggal_rba; ?></td>
                  <td><?php echo $row->nama_rba; ?></td>
                  <td><?php echo $row->no_rekening_kegiatan_rba; ?></td>
                  <!-- <td><?php echo $row->berkas_rba; ?></td> -->
                  <td><?php echo $row->date_create; ?></td>
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
        // 'print',
        {
          extend: 'print',
          orientation: 'landscape',
          customize: function(doc) {
            // atur kustomisasi dokumen PDF di sini
          },
        },
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