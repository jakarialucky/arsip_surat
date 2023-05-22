<ul class="menu-nav">
  <?php $uri = strtolower($this->uri->segment(2));
  $getMenu = $this->Core_model->get_main_menu();
  ?>
  <?php foreach ($getMenu->result() as $menu) : ?>
    <?php $url_menu = ($menu->type == "controller") ? site_url(ADMIN_ROUTE . "/$menu->controller") : $menu->controller ?>
    <?php $getSubMenu = $this->Core_model->get_main_menu($menu->id_menu); ?>
    <?php if ($getSubMenu->num_rows() > 0) : ?>
      <?php if (is_allowed("sidebar_view_" . str_replace(" ", "_", $menu->menu))) : ?>



        <li class="menu-item menu-item-submenu" aria-haspopup="true" data-menu-toggle="hover">
          <a href="javascript:;" class="menu-link menu-toggle">
            <span class="<?= $menu->icon ?> menu-icon">

            </span>
            <span class="menu-text"><?= strtoupper(ucwords($menu->menu)) ?></span>
            <i class="menu-arrow"></i>
          </a>
          <div class="menu-submenu">
            <i class="menu-arrow"></i>
            <ul class="menu-subnav">
              <li class="menu-item menu-item-parent" aria-haspopup="true">
                <span class="menu-link">
                  <span class="menu-text"><?= strtoupper(ucwords($menu->menu)) ?></span>
                </span>
              </li>
              <?php foreach ($getSubMenu->result() as $sub_menu) : ?>
                <?php $url_sub_menu = ($sub_menu->type == "controller") ? site_url(ADMIN_ROUTE . "/$sub_menu->controller") : $sub_menu->controller ?>
                <?php if (is_allowed("sidebar_view_" . str_replace(" ", "_", $sub_menu->menu))) : ?>

                  <li class="menu-item <?= $sub_menu->controller == $uri ? 'menu-item-active' : '' ?>" aria-haspopup="true">
                    <a href="<?= $url_sub_menu ?>" class="menu-link">
                      <i class="menu-bullet menu-bullet-dot">
                        <span></span>
                      </i>
                      <span class="menu-text"><?= strtoupper(ucwords($sub_menu->menu)) ?></span>
                    </a>
                  </li>
                <?php endif; ?>
              <?php endforeach; ?>

            </ul>
          </div>
        </li>
      <?php endif; ?>
    <?php else : ?>
      <?php if (is_allowed("sidebar_view_" . str_replace(" ", "_", $menu->menu))) : ?>
        <li class="menu-item <?= $menu->controller == $uri ? 'menu-item-active' : '' ?>" aria-haspopup="true">
          <a href="<?= $url_menu ?>" class="menu-link">
            <span class="<?= $menu->icon ?> menu-icon">

            </span>
            <span class="menu-text"><?= strtoupper(ucwords($menu->menu)) ?></span>
          </a>
        </li>
      <?php endif; ?>
    <?php endif; ?>
  <?php endforeach; ?>

</ul>