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
          <style>
            @media print {

              /* Styling untuk halaman cetak */
              body {
                background-color: #fff;
                /* Warna latar belakang */
                font-family: Arial, sans-serif;
                /* Jenis font */
              }

              /* Styling untuk header kop surat */
              .kop_surat {
                background-color: #7788ee;
                /* Warna latar belakang header */
                padding: 20px;
                margin-bottom: 20px;
                color: #fff;
                /* Warna teks header */
                font-size: 18px;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
              }

              .kop_surat img {
                margin-bottom: 10px;
                width: 150px;
                height: auto;
              }

              table.dataTable tbody th,
              table.dataTable tbody td {
                text-align: center;
              }

              /* Styling untuk footer kop surat */
              .footer_surat {
                background-color: #ffffff;
                /* Warna latar belakang footer */
                padding: 10px;
                color: #000;
                /* Warna teks footer */
                font-size: 14px;
                text-align: center;
              }
            }

            /* Styling untuk header kop surat */
            .kop_surat {
              background-color: #ffffff;
              /* Warna latar belakang header */
              padding: 20px;
              margin-bottom: 20px;
              color: #000;
              /* Warna teks header */
              font-size: 18px;
              display: flex;
              align-items: center;
              justify-content: center;
              flex-direction: column;
            }

            .kop_surat img {
              margin-bottom: 10px;
              width: 150px;
              height: auto;
            }

            .dataTables_wrapper table.dataTable tbody th,
            .dataTables_wrapper table.dataTable tbody td {
              text-align: center;
            }

            /* Styling untuk footer kop surat */
            .footer_surat {
              background-color: #ffffff;
              /* Warna latar belakang footer */
              padding: 10px;
              color: #000;
              /* Warna teks footer */
              font-size: 14px;
              text-align: center;
            }
          </style>
          <div class="kop_surat d-none">
            <img src="https://sippn.menpan.go.id/images/article/large/logo-rs11.png" alt="Logo Instansi">
            <h1>RSUD Hadji Beojasin</h1>
            <p>Sarang Halang, Pelaihari, Tanah Laut , 70815</p>
          </div>

          <!-- Konten surat -->

          <div class="footer_surat d-none">
            <p>Pencetak Surat: <?= profile('name') ?></p>
          </div>


          <table style="width:100%" id="table" class="table table-bordered table-striped dt-responsive nowrap">
            <thead>
              <tr>
                <th><?= strtoupper("No. Surat") ?>
                <th><?= strtoupper("Tgl. Surat") ?>
                <th><?= strtoupper("Perihal") ?>
                <th><?= strtoupper("Jenis Surat") ?>
                <th><?= strtoupper("Pengirim") ?>
                <th><?= strtoupper("Ditujukan") ?>
                <th><?= strtoupper("Sifat Surat") ?>
                <th><?= strtoupper("Status Disposisi") ?>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($surat_masuk as $surat) { ?>
                <tr>
                  <td><?php echo $surat->no_surat; ?></td>
                  <td><?php echo $surat->tgl_surat; ?></td>
                  <td><?php echo $surat->perihal; ?></td>
                  <td><?php echo $surat->jenis_surat; ?></td>
                  <td><?php echo $surat->pengirim; ?></td>
                  <td><?php echo $surat->ditujukan; ?></td>
                  <td><?php echo $surat->sifat_surat; ?></td>
                  <td><?php echo $surat->status_disposisi; ?></td>
                </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>


      </div>
    </div>
  </div>
</div>
<script src="<?= base_url("_temp/backend/js") ?>/pdfmake.min.js"></script>
<script src="<?= base_url("_temp/backend/js") ?>/vfs_fonts.js"></script>
<script src="<?= base_url("_temp/backend/js") ?>/exceljs.min.js"></script>
<script>
  function toBase64Image(url, callback) {
    var xhr = new XMLHttpRequest();
    xhr.onload = function() {
      var reader = new FileReader();
      reader.onloadend = function() {
        callback(reader.result);
      };
      reader.readAsDataURL(xhr.response);
    };
    xhr.open('GET', url);
    xhr.responseType = 'blob';
    xhr.send();
  }
  $(document).ready(function() {
    // Mengambil gambar logo dan mengonversi menjadi base64
    // Fungsi untuk membuat PDF
    var table;
    table = $('#table').DataTable({
      responsive: true,
      // Pagination settings
      dom: `<'row'<'col-sm-6 text-left'f><'col-sm-6 text-right'B>>
			<'row'<'col-sm-12'tr>>
			<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7 dataTables_pager'lp>>`,

      buttons: [{
          extend: 'print',
          text: 'Print',
          className: 'btn btn-primary',
          exportOptions: {
            columns: ':visible'
          },
          orientation: 'landscape',
          customize: function(win) {

            // atur kustomisasi dokumen PDF di sini
            $(win.document.body).prepend('<div class="kop_surat">' + $('.kop_surat').html() + '</div>');
            $(win.document.body).append('<div class="footer_surat">' + $('.footer_surat').html() + '</div>');
          },
        },
        {
          extend: 'excel',
          text: 'Excel',
          className: 'btn btn-success',
          exportOptions: {
            columns: ':visible'
          },
          action: function(e, dt, button, config) {
            generateXLX();
          }
        },
        {
          extend: 'pdf',
          text: 'PDF',
          className: 'btn btn-danger',
          action: function(e, dt, button, config) {
            generatePDF();
          }
        }
      ],
    });

    function escapeXml(unsafe) {
      return unsafe.replace(/[<>&'"]/g, function(c) {
        switch (c) {
          case '<':
            return '&lt;';
          case '>':
            return '&gt;';
          case '&':
            return '&amp;';
          case '\'':
            return '&apos;';
          case '"':
            return '&quot;';
        }
      });
    }


    function generatePDF() {
      // Mengambil gambar logo dan mengonversi menjadi base64
      toBase64Image('https://sippn.menpan.go.id/images/article/large/logo-rs11.png', function(base64Image) {
        // Mendefinisikan layout dan konten PDF
        const tableData = table.rows().data().toArray();
        const tableHeader = table.columns().header().toArray().map(column => column.innerText);

        var docDefinition = {
          pageOrientation: 'landscape',
          content: [{
              image: base64Image,
              width: 100,
              alignment: 'center',
              margin: [0, 0, 0, 10]
            },
            {
              text: 'RSUD Hadji Beojasin',
              fontSize: 20,
              alignment: 'center',
              margin: [0, 0, 0, 25]
            },
            {
              text: 'Sarang Halang, Pelaihari, Tanah Laut , 70815',
              fontSize: 12,
              alignment: 'center',
              margin: [0, 0, 0, 25]
            },
            // {
            //   text: 'No. Telpon: 12121@',
            //   fontSize: 12,
            //   alignment: 'center',
            //   margin: [0, 0, 0, 20]
            // },
            {
              table: {
                headerRows: 1,
                widths: Array(tableHeader.length).fill('*'),
                body: [
                  tableHeader,
                  ...tableData // Gunakan salinan data tabel
                ]
              },
              layout: 'lightHorizontalLines',
              alignment: 'center'
            },
            {
              text: 'Tanah laut, <?= indodate(date('Y-m-d')) ?>',
              fontSize: 12,
              alignment: 'right',
              margin: [0, 150, 0, 20]
            },
            {
              text: '<?= profile('name') ?>',
              fontSize: 12,
              alignment: 'right',
              margin: [0, 50, 0, 20]
            },
          ],
          styles: {
            header: {
              fontSize: 18,
              bold: true,
              alignment: 'center',
              margin: [0, 0, 0, 10]
            }
          }
        };

        // Membuat PDF menggunakan pdfmake
        pdfMake.createPdf(docDefinition).open();
      });
    }

    function generateXLX() {
      // Mengambil gambar logo dan mengonversi menjadi base64
      toBase64Image('https://sippn.menpan.go.id/images/article/large/logo-rs11.png', function(base64Image) {
        // Mendefinisikan layout dan konten Excel
        var workbook = new ExcelJS.Workbook();
        var worksheet = workbook.addWorksheet('Sheet1');

        // Mengatur lebar kolom
        // worksheet.columns = [{
        //     width: 20
        //   },
        //   {
        //     width: 20
        //   },
        //   {
        //     width: 20
        //   },
        //   {
        //     width: 20
        //   },
        //   // Tambahkan kolom sesuai dengan jumlah kolom data Anda
        // ];

        // Mengatur header
        // worksheet.getCell('A1').value = 'Kop Surat Instansi';
        // worksheet.getCell('A1').font = {
        //   size: 20,
        //   bold: true,
        //   alignment: {
        //     horizontal: 'center'
        //   }
        // };
        // worksheet.mergeCells('A1:H1');
        // worksheet.mergeCells('C1:D4');
        // Mengatur logo
        // worksheet.mergeCells('A1:H1');
        var logo = workbook.addImage({
          base64: base64Image,
          extension: 'png',
        });
        // logo.nativePixels = {
        //   x: 20,
        //   y: 30
        // };

        // worksheet.addImage(logo, 'C1:D3');
        // logo.editAs = 'oneCell';
        worksheet.getCell('A5').value = 'RSUD Hadji Beojasin';
        worksheet.getCell('A5').font = {
          size: 18,
          bold: true,
          alignment: {
            horizontal: 'center'
          }
        };



        worksheet.getCell('A7').value = 'Sarang Halang, Pelaihari, Tanah Laut, 70815';
        worksheet.getCell('A7').font = {
          size: 12,
          alignment: {
            horizontal: 'center'
          }
        };



        // worksheet.getCell('B5').value = '<?= ucwords($title_module) ?>';
        // worksheet.getCell('B5').font = {
        //   size: 12,
        //   alignment: {
        //     horizontal: 'center'
        //   }
        // };
        // worksheet.getCell('B5').alignment = {
        //   horizontal: 'left',
        //   vertical: 'middle'
        // };
        // worksheet.mergeCells('B5:E5');

        // Mengatur data tabel
        var table = $('#table').DataTable();
        var tableHeader = table.columns().header().toArray().map(column => column.innerText);
        var tableData = table.rows().data().toArray();

        // Mengatur header tabel
        tableHeader.forEach((header, index) => {
          worksheet.getCell(9, index + 1).value = header;
          worksheet.getCell(9, index + 1).font = {
            bold: true
          };
        });
        worksheet.mergeCells(5, 1, 5, tableHeader.length);
        worksheet.getCell('A5').alignment = {
          horizontal: 'center',
          vertical: 'middle'
        };
        worksheet.mergeCells(7, 1, 7, tableHeader.length);
        worksheet.getCell('A7').alignment = {
          horizontal: 'center',
          vertical: 'middle'
        };
        // Mengatur data tabel
        tableData.forEach((rowData, rowIndex) => {
          rowData.forEach((cellData, cellIndex) => {
            worksheet.getCell(rowIndex + 10, cellIndex + 1).value = cellData;
          });
        });

        // Mengatur lebar kolom berdasarkan konten
        worksheet.columns.forEach((column, index) => {
          var maxLength = 0;
          column.eachCell({
            includeEmpty: true
          }, (cell) => {
            var columnLength = cell.value ? cell.value.toString().length : 10;
            if (columnLength > maxLength) {
              maxLength = columnLength;
            }
          });
          column.width = maxLength < 10 ? 10 : maxLength;
        });
        worksheet.addImage(logo, {
          tl: {
            col: 3.9,
            row: 0
          },
          br: {
            col: 4.9,
            row: 4
          }
          // editAs: 'oneCell',
          // ext: {
          //   width: 120,
          //   height: 80
          // }
        });
        // Menambahkan footer di baris terakhir
        var lastRowNum = tableData.length + 9;
        worksheet.getCell(lastRowNum + 2, 1).value = 'Tanah Laut , <?= indodate(date('Y-m-d')) ?>';
        worksheet.getCell(lastRowNum + 2, 1).font = {
          bold: true,
          alignment: {
            horizontal: 'center',
            vertical: 'middle'
          }
        };
        worksheet.mergeCells(lastRowNum + 2, 1, lastRowNum + 2, tableHeader.length);
        // Menambahkan footer di baris terakhir

        worksheet.getCell(lastRowNum + 5, 1).value = '<?= profile('name') ?>';
        worksheet.getCell(lastRowNum + 5, 1).font = {
          bold: true,
          alignment: {
            horizontal: 'center',
            vertical: 'middle'
          }
        };
        worksheet.mergeCells(lastRowNum + 5, 1, lastRowNum + 5, tableHeader.length);




        var buffer = workbook.xlsx.writeBuffer().then(function(buffer) {
          var blob = new Blob([buffer], {
            type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
          });
          saveAs(blob, 'data.xlsx');
        });
      });
    }
    // Event handler untuk tombol Generate PDF
    $('#pdfButton').on('click', function() {
      generatePDF();
    });
  });
</script>