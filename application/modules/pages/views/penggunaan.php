<main id="main">

  <!-- ======= Breadcrumbs ======= -->
  <section class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>Form Penggunaan Laboratorium</h2>
        <ol>
          <li><a href="<?= site_url() ?>">Home</a></li>
          <li>Inventaris</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  <section class="inner-page">
    <div class="container">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <!-- <link rel="stylesheet" href="<?= base_url() ?>_temp/frontend/v1/assets/js/css/signature-pad.css"> -->
      <style>
        .signature-pad {
          position: relative;
          display: -webkit-box;
          display: -ms-flexbox;
          display: flex;
          -webkit-box-orient: vertical;
          -webkit-box-direction: normal;
          -ms-flex-direction: column;
          flex-direction: column;
          font-size: 10px;
          width: 100%;
          height: 100%;
          max-width: 100%;
          max-height: 460px;
          border: 1px solid #e8e8e8;
          background-color: #fff;
          box-shadow: 0 1px 4px rgba(0, 0, 0, 0.27), 0 0 40px rgba(0, 0, 0, 0.08) inset;
          border-radius: 4px;
          padding: 16px;
        }

        .signature-pad::before,
        .signature-pad::after {
          position: absolute;
          z-index: -1;
          content: "";
          width: 40%;
          height: 10px;
          bottom: 10px;
          background: transparent;
          box-shadow: 0 8px 12px rgba(0, 0, 0, 0.4);
        }

        .signature-pad::before {
          left: 20px;
          -webkit-transform: skew(-3deg) rotate(-3deg);
          transform: skew(-3deg) rotate(-3deg);
        }

        .signature-pad::after {
          right: 20px;
          -webkit-transform: skew(3deg) rotate(3deg);
          transform: skew(3deg) rotate(3deg);
        }

        .signature-pad--body {
          position: relative;
          -webkit-box-flex: 1;
          -ms-flex: 1;
          flex: 1;
          border: 1px solid #f4f4f4;
        }

        .signature-pad--body canvas {
          position: relative;
          left: 0;
          top: 0;
          width: 100%;
          height: 100%;
          border-radius: 4px;
          box-shadow: 0 0 5px rgba(0, 0, 0, 0.02) inset;
        }

        .signature-pad--footer {
          color: #C3C3C3;
          text-align: center;
          font-size: 1.2em;
          margin-top: 25px;
        }

        .signature-pad--actions {
          display: -webkit-box;
          display: -ms-flexbox;
          display: flex;
          -webkit-box-pack: justify;
          -ms-flex-pack: justify;
          justify-content: space-between;
          margin-top: 8px;
        }
      </style>
      <form>
        <div class="form-group row">
          <label for="dosen" class="col-4 col-form-label">Dosen</label>
          <div class="col-8">
            <select id="dosen" name="dosen" class="custom-select">
              <option value="rabbit">Rabbit</option>
              <option value="duck">Duck</option>
              <option value="fish">Fish</option>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="tanggal" class="col-4 col-form-label">Tanggal</label>
          <div class="col-8">
            <div class="input-group">
              <input id="tanggal" name="tanggal" type="text" class="form-control">
              <div class="input-group-append">
                <div class="input-group-text">
                  <i class="fa fa-calendar"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="form-group row">
          <label for="mata_kuliah" class="col-4 col-form-label">Mata Kuliah</label>
          <div class="col-8">
            <select id="mata_kuliah" name="mata_kuliah" class="custom-select">
              <option value="rabbit">Rabbit</option>
              <option value="duck">Duck</option>
              <option value="fish">Fish</option>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="kelas" class="col-4 col-form-label">Kelas</label>
          <div class="col-8">
            <input id="kelas" name="kelas" type="text" class="form-control">
          </div>
        </div>
        <div class="form-group row">
          <label for="jam_mulai" class="col-4 col-form-label">Jam Mulai</label>
          <div class="col-8">
            <div class="input-group">
              <input id="jam_mulai" name="jam_mulai" type="text" class="form-control">
              <div class="input-group-append">
                <div class="input-group-text">
                  <i class="fa fa-calendar-minus-o"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="form-group row">
          <label for="jam_selesai" class="col-4 col-form-label">Jam Selesai</label>
          <div class="col-8">
            <div class="input-group">
              <input id="jam_selesai" name="jam_selesai" type="text" class="form-control">
              <div class="input-group-append">
                <div class="input-group-text">
                  <i class="fa fa-calendar-minus-o"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="form-group row">
          <!-- <label for="tanda_tangan" class="col-4 col-form-label">Tanda Tangan</label> -->
          <div class="col-12">
            <!-- <textarea id="tanda_tangan" name="tanda_tangan" cols="40" rows="5" class="form-control"></textarea> -->
            <div id="signature-pad" class="signature-pad">
              <div class="signature-pad--body">
                <canvas></canvas>
              </div>
              <div class="signature-pad--footer">
                <div class="description">Tanda Tangan</div>

                <div class="signature-pad--actions">
                  <div>
                    <button type="button" class="button clear" data-action="clear">Clear</button>
                    <!-- <button type="button" class="button" data-action="change-color">Change color</button> -->
                    <!-- <button type="button" class="button" data-action="change-width">Change width</button> -->
                    <button type="button" class="button" data-action="undo">Undo</button>
                    <button type="button" class="button" data-action="undo">OK</button>

                  </div>
                  <!-- <div>
                    <button type="button" class="button save" data-action="save-png">Save as PNG</button>
                    <button type="button" class="button save" data-action="save-jpg">Save as JPG</button>
                    <button type="button" class="button save" data-action="save-svg">Save as SVG</button>
                  </div> -->
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="form-group row">
          <div class="offset-4 col-8">
            <button name="submit" type="submit" class="btn btn-primary">Simpan</button>
          </div>
        </div>
      </form>
    </div>
  </section>

</main><!-- End #main -->
<script src="<?= base_url() ?>_temp/frontend/v1/assets/js/signature_pad.umd.min.js"></script>
<script>
  const wrapper = document.getElementById("signature-pad");
  const clearButton = wrapper.querySelector("[data-action=clear]");
  const changeColorButton = wrapper.querySelector("[data-action=change-color]");
  const changeWidthButton = wrapper.querySelector("[data-action=change-width]");
  const undoButton = wrapper.querySelector("[data-action=undo]");
  const savePNGButton = wrapper.querySelector("[data-action=save-png]");
  const saveJPGButton = wrapper.querySelector("[data-action=save-jpg]");
  const saveSVGButton = wrapper.querySelector("[data-action=save-svg]");
  const canvas = wrapper.querySelector("canvas");
  const signaturePad = new SignaturePad(canvas, {
    // It's Necessary to use an opaque color when saving image as JPEG;
    // this option can be omitted if only saving as PNG or SVG
    backgroundColor: 'rgb(255, 255, 255)'
  });

  // Adjust canvas coordinate space taking into account pixel ratio,
  // to make it look crisp on mobile devices.
  // This also causes canvas to be cleared.
  function resizeCanvas() {
    // When zoomed out to less than 100%, for some very strange reason,
    // some browsers report devicePixelRatio as less than 1
    // and only part of the canvas is cleared then.
    const ratio = Math.max(window.devicePixelRatio || 1, 1);

    // This part causes the canvas to be cleared
    canvas.width = canvas.offsetWidth * ratio;
    canvas.height = canvas.offsetHeight * ratio;
    canvas.getContext("2d").scale(ratio, ratio);

    // This library does not listen for canvas changes, so after the canvas is automatically
    // cleared by the browser, SignaturePad#isEmpty might still return false, even though the
    // canvas looks empty, because the internal data of this library wasn't cleared. To make sure
    // that the state of this library is consistent with visual state of the canvas, you
    // have to clear it manually.
    //signaturePad.clear();

    // If you want to keep the drawing on resize instead of clearing it you can reset the data.
    signaturePad.fromData(signaturePad.toData());
  }

  // On mobile devices it might make more sense to listen to orientation change,
  // rather than window resize events.
  window.onresize = resizeCanvas;
  resizeCanvas();

  function download(dataURL, filename) {
    const blob = dataURLToBlob(dataURL);
    const url = window.URL.createObjectURL(blob);

    const a = document.createElement("a");
    a.style = "display: none";
    a.href = url;
    a.download = filename;

    document.body.appendChild(a);
    a.click();

    window.URL.revokeObjectURL(url);
  }

  // One could simply use Canvas#toBlob method instead, but it's just to show
  // that it can be done using result of SignaturePad#toDataURL.
  function dataURLToBlob(dataURL) {
    // Code taken from https://github.com/ebidel/filer.js
    const parts = dataURL.split(';base64,');
    const contentType = parts[0].split(":")[1];
    const raw = window.atob(parts[1]);
    const rawLength = raw.length;
    const uInt8Array = new Uint8Array(rawLength);

    for (let i = 0; i < rawLength; ++i) {
      uInt8Array[i] = raw.charCodeAt(i);
    }

    return new Blob([uInt8Array], {
      type: contentType
    });
  }

  clearButton.addEventListener("click", () => {
    signaturePad.clear();
  });

  undoButton.addEventListener("click", () => {
    const data = signaturePad.toData();

    if (data) {
      data.pop(); // remove the last dot or line
      signaturePad.fromData(data);
    }
  });

  changeColorButton.addEventListener("click", () => {
    const r = Math.round(Math.random() * 255);
    const g = Math.round(Math.random() * 255);
    const b = Math.round(Math.random() * 255);
    const color = "rgb(" + r + "," + g + "," + b + ")";

    signaturePad.penColor = color;
  });

  changeWidthButton.addEventListener("click", () => {
    const min = Math.round(Math.random() * 100) / 10;
    const max = Math.round(Math.random() * 100) / 10;

    signaturePad.minWidth = Math.min(min, max);
    signaturePad.maxWidth = Math.max(min, max);
  });

  savePNGButton.addEventListener("click", () => {
    if (signaturePad.isEmpty()) {
      alert("Please provide a signature first.");
    } else {
      const dataURL = signaturePad.toDataURL();
      download(dataURL, "signature.png");
    }
  });

  saveJPGButton.addEventListener("click", () => {
    if (signaturePad.isEmpty()) {
      alert("Please provide a signature first.");
    } else {
      const dataURL = signaturePad.toDataURL("image/jpeg");
      download(dataURL, "signature.jpg");
    }
  });

  saveSVGButton.addEventListener("click", () => {
    if (signaturePad.isEmpty()) {
      alert("Please provide a signature first.");
    } else {
      const dataURL = signaturePad.toDataURL('image/svg+xml');
      download(dataURL, "signature.svg");
    }
  });
</script>