<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title><?= ucwords($title_module) ?></title>
  <link rel="shortcut icon" href="<?= base_url() ?>_temp/uploads/img/<?= setting("favicon") ?>" />
  <!--Animate CSS -->
  <link href="<?= base_url() ?>_temp/backend/vendors/animate/animate.min.css" rel="stylesheet" type="text/css">
  <link href="<?= base_url() ?>_temp/backend/css/custom.css" rel="stylesheet" type="text/css">
  <!-- plugins:css -->
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/ti-icons/css/themify-icons.css">
  <link href="<?= base_url() ?>_temp/backend/css/icons.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/select2/select2.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>_temp/frontend/css/horizontal-layout-light/style.css">
  <style>
    .table {
      width: 100% !important;
      max-width: 100% !important;
      margin-bottom: 1rem !important;
    }

    .table th,
    .table td {
      padding: 0.75rem !important;
      vertical-align: top !important;
      border-top: 1px solid #eceeef !important;
    }

    .table thead th {
      vertical-align: bottom !important;
      border-bottom: 2px solid #eceeef !important;
    }

    .table tbody+tbody {
      border-top: 2px solid #eceeef !important;
    }

    .table .table {
      background-color: #fff !important;
    }

    .table-sm th,
    .table-sm td {
      padding: 0.3rem !important;
    }

    .table-bordered {
      border: 1px solid #eceeef !important;
    }

    .table-bordered th,
    .table-bordered td {
      border: 1px solid #eceeef !important;
    }

    .table-bordered thead th,
    .table-bordered thead td {
      border-bottom-width: 2px !important;
    }

    .table-striped tbody tr:nth-of-type(odd) {
      background-color: rgba(0, 0, 0, 0.05) !important;
    }

    .table-hover tbody tr:hover {
      background-color: rgba(0, 0, 0, 0.075) !important;
    }

    .table-active,
    .table-active>th,
    .table-active>td {
      background-color: rgba(0, 0, 0, 0.075) !important;
    }

    .table-hover .table-active:hover {
      background-color: rgba(0, 0, 0, 0.075) !important;
    }

    .table-hover .table-active:hover>td,
    .table-hover .table-active:hover>th {
      background-color: rgba(0, 0, 0, 0.075) !important;
    }

    .table-success,
    .table-success>th,
    .table-success>td {
      background-color: #dff0d8 !important;
    }

    .table-hover .table-success:hover {
      background-color: #d0e9c6 !important;
    }

    .table-hover .table-success:hover>td,
    .table-hover .table-success:hover>th {
      background-color: #d0e9c6 !important;
    }

    .table-info,
    .table-info>th,
    .table-info>td {
      background-color: #d9edf7 !important;
    }

    .table-hover .table-info:hover {
      background-color: #c4e3f3 !important;
    }

    .table-hover .table-info:hover>td,
    .table-hover .table-info:hover>th {
      background-color: #c4e3f3 !important;
    }

    .table-warning,
    .table-warning>th,
    .table-warning>td {
      background-color: #fcf8e3 !important;
    }

    .table-hover .table-warning:hover {
      background-color: #faf2cc !important;
    }

    .table-hover .table-warning:hover>td,
    .table-hover .table-warning:hover>th {
      background-color: #faf2cc !important;
    }

    .table-danger,
    .table-danger>th,
    .table-danger>td {
      background-color: #f2dede !important;
    }

    .table-hover .table-danger:hover {
      background-color: #ebcccc !important;
    }

    .table-hover .table-danger:hover>td,
    .table-hover .table-danger:hover>th {
      background-color: #ebcccc !important;
    }

    .thead-inverse th {
      color: #fff !important;
      background-color: #292b2c !important;
    }

    .thead-default th {
      color: #464a4c !important;
      background-color: #eceeef !important;
    }

    .table-inverse {
      color: #fff !important;
      background-color: #292b2c !important;
    }

    .table-inverse th,
    .table-inverse td,
    .table-inverse thead th {
      border-color: #fff !important;
    }

    .table-inverse.table-bordered {
      border: 0 !important;
    }

    .table-responsive {
      display: block !important;
      width: 100% !important;
      overflow-x: auto !important;
      -ms-overflow-style: -ms-autohiding-scrollbar !important;
    }

    .table-responsive.table-bordered {
      border: 0 !important;
    }
  </style>
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" integrity="sha512-FOS5ANNUsuvefA5Fm6hZBLsxqfF105LIysEgV8VNz29jZLVYIhI+MOLKPBmMXgkHhARFHf5pE7KbXOLE6TXW0A==" crossorigin="anonymous" referrerpolicy="no-referrer" /> -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/jquery-toast-plugin/jquery.toast.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/fancybox/jquery.fancybox.min.css" />
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/summernote/dist/summernote-bs4.css">
  <!-- End plugin css for this page -->
  <!-- plugin datatables -->
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/datatables/datatables.min.css" rel="stylesheet">
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/datatables/responsive-2.3.0/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/datatables/Select-1.4.0/css/select.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/datatables/Buttons-2.2.3/css/buttons.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/fullcalendar/fullcalendar.css">

  <style media="screen">
    .form-group label {
      font-weight: 600;
    }

    .form-check-label {
      font-weight: 100 !important;
    }
  </style>
  <!-- plugins:js -->
  <script src="<?= base_url() ?>_temp/backend/vendors/js/vendor.bundle.base.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/sweetalert/sweetalert.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/jquery-toast-plugin/jquery.toast.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/datatables/datatables.min.js"></script>
  <!-- <script src="<?= base_url() ?>_temp/backend/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script> -->
  <!-- <script src="<?= base_url() ?>_temp/backend/vendors/responsive-2.3.0/js/dataTables.responsive.min.js"></script> -->
  <script src="<?= base_url() ?>_temp/backend/vendors/datatables/Responsive-2.3.0/js/responsive.bootstrap4.min.js"></script>

  <script src="<?= base_url() ?>_temp/backend/vendors/datatables/Select-1.4.0/js/select.bootstrap4.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/datatables/Buttons-2.2.3/js/buttons.bootstrap4.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/jquery-qrcode/jquery-qrcode-0.18.0.js"></script>


  <script src="<?= base_url() ?>_temp/backend/vendors/fancybox/jquery.fancybox.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/select2/select2.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/summernote/dist/summernote-bs4.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/clipboard/clipboard.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/js/custom.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/moment/moment.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/fullcalendar/fullcalendar.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/fullcalendar/locale-all.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/jquery.repeater/jquery.repeater.min.js"></script>
  <!-- <script src="<?= base_url() ?>_temp/backend/js/form-repeater.js"></script> -->
  <!-- end plugins js -->
  <script>
    var BASE_URL = "<?= base_url() ?>";

    $(document).ready(function() {
      var t_message = '<?= $this->session->flashdata('tt_message'); ?>';
      var t_type = '<?= $this->session->flashdata('tt_type'); ?>';

      if (t_message.length > 0) {
        // showToast(t_type, t_message);
        swal(t_message, {
          icon: t_type
        })
      }
    });
  </script>
  <style>
    .loading-keyboard {
      display: none;
      text-align: center;
      position: absolute;
      z-index: 9999;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.88);
    }

    .pixel-loader {
      margin-top: 20%;
      margin-left: 50%;
      /* margin-right: 400px; */
    }

    .loading-keyboard p {
      /* padding-top: 200px; */
      text-align: center;
      font-size: 22px;
      font-weight: 600;
      padding: 20px;
      color: #33ff00;
      animation: blinking 1.5s infinite;
    }

    @keyframes blinking {

      /*0%{   color: #fff;   }*/
      0% {
        color: #1cff00;
      }

      50% {
        color: #30a43b;
      }

      100% {
        color: transparent;
      }
    }
  </style>
</head>

<body>
  <div class="loading-keyboard">
    <div class="pixel-loader"></div>
    <p>Lagi Ganerate Sabar Ya !!</p>
  </div>
  <div class="container-scroller">
    <div class="horizontal-menu">
      <nav class="navbar top-navbar col-lg-12 col-12 p-0">
        <div class="container">
          <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo mr-5" href="<?= url("dashboard") ?>"><img src="<?= base_url() ?>_temp/uploads/img/<?= setting("logo") ?>" class="mr-2" alt="logo" /></a>
            <a class="navbar-brand brand-logo-mini" href="<?= url("dashboard") ?>"><img src="<?= base_url() ?>_temp/uploads/img/<?= setting("logo_mini") ?>" alt="logo" /></a>
          </div>

        </div>
      </nav>
      <nav class="bottom-navbar">
        <div class="container">
          <ul class="nav page-navigation">
            <!-- <li class="nav-item">
              <a class="nav-link" href="../../index.html">
                <i class="ti-home menu-icon"></i>
                <span class="menu-title">Dashboard</span>
              </a>
            </li> -->
            <li class="nav-item">
              <a class="nav-link" href="../../index.html">
                <i class="ti-bag menu-icon"></i>
                <span class="menu-title">Lokasi Barang</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../widgets/widgets.html">
                <i class="ti-settings menu-icon"></i>
                <span class="menu-title">Artikel</span>
              </a>
            </li>
            <!-- <li class="nav-item mega-menu">
              <a href="#" class="nav-link">
                <i class="ti-palette menu-icon"></i>
                <span class="menu-title">Jadwal Laboratorium</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="submenu">
                <div class="col-group-wrapper row">
                  <div class="col-group col-md-4">
                    <div class="row">
                      <div class="col-12">
                        <p class="category-heading">Basic Elements</p>
                        <div class="submenu-item">
                          <div class="row">
                            <div class="col-md-6">
                              <ul>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/accordions.html">Accordion</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/buttons.html">Buttons</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/badges.html">Badges</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/breadcrumbs.html">Breadcrumbs</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/dropdowns.html">Dropdown</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/modals.html">Modals</a></li>
                              </ul>
                            </div>
                            <div class="col-md-6">
                              <ul>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/progress.html">Progress bar</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/pagination.html">Pagination</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/tabs.html">Tabs</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/typography.html">Typography</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/tooltips.html">Tooltip</a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-group col-md-4">
                    <div class="row">
                      <div class="col-12">
                        <p class="category-heading">Advanced Elements</p>
                        <div class="submenu-item">
                          <div class="row">
                            <div class="col-md-6">
                              <ul>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/dragula.html">Dragula</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/carousel.html">Carousel</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/clipboard.html">Clipboard</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/context-menu.html">Context Menu</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/loaders.html">Loader</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/slider.html">Slider</a></li>
                              </ul>
                            </div>
                            <div class="col-md-6">
                              <ul>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/popups.html">Popup</a></li>
                                <li class="nav-item"><a class="nav-link" href="../ui-features/notifications.html">Notification</a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-group col-md-4">
                    <p class="category-heading">Icons</p>
                    <ul class="submenu-item">
                      <li class="nav-item"><a class="nav-link" href="../icons/flag-icons.html">Flag Icons</a></li>
                      <li class="nav-item"> <a class="nav-link" href="../icons/mdi.html">Mdi icons</a></li>
                      <li class="nav-item"><a class="nav-link" href="../icons/font-awesome.html">Font Awesome</a></li>
                      <li class="nav-item"><a class="nav-link" href="../icons/simple-line-icon.html">Simple Line Icons</a></li>
                      <li class="nav-item"><a class="nav-link" href="../icons/themify.html">Themify Icons</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li> -->
            <!-- <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="ti-clipboard menu-icon"></i>
                <span class="menu-title">Tutorial</span>
                <i class="menu-arrow"></i></a>
              <div class="submenu">
                <ul class="submenu-item">
                  <li class="nav-item"><a class="nav-link" href="../forms/basic_elements.html">Basic Elements</a></li>
                  <li class="nav-item"><a class="nav-link" href="../forms/advanced_elements.html">Advanced Elements</a></li>
                  <li class="nav-item"><a class="nav-link" href="../forms/validation.html">Validation</a></li>
                  <li class="nav-item"><a class="nav-link" href="../forms/wizard.html">Wizard</a></li>
                  <li class="nav-item"><a class="nav-link" href="../forms/text_editor.html">Text Editor</a></li>
                  <li class="nav-item"><a class="nav-link" href="../forms/code_editor.html">Code Editor</a></li>
                </ul>
              </div>
            </li> -->
            <!-- <li class="nav-item">
              <a href="../documentation/documentation.html" class="nav-link">
                <i class="ti-receipt menu-icon"></i>
                <span class="menu-title">Documentation</span></a>
            </li> -->
            <li class="nav-item">
              <a href="<?= base_url('login.html') ?>" class="nav-link">
                <i class="ti-receipt menu-icon"></i>
                <span class="menu-title">Halaman Login</span></a>
            </li>
          </ul>
        </div>
      </nav>
    </div>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- <?= $main_menu ?> -->

      <div class="main-panel">
        <div class="content-wrapper">