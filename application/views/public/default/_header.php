<?php $controller = $this->router->fetch_class(); ?>
<header>
    <div class="container">
        <div class="wrap-header">
            <a href="<?php echo base_url() ?>" title="" class="logo"><img src="<?php echo base_url() ?>public/images/logo.png" alt=""></a>
            <div class="header-right">
                <nav class="d-nav">
                    <div class="logo-mb">
                        <a href="<?php echo base_url() ?>"><img src="<?php echo base_url() ?>public/images/logo.png"></a>
                    </div>
                    <ul>
                        <li <?php if($controller == 'home'){echo 'class="active"';} ?> ><a class="smooth" href="<?php echo base_url() ?>" title="">Trang chủ</a></li>
                        <li <?php if($controller == 'about'){echo 'class="active"';} ?>><a class="smooth" href="<?php echo base_url() ?>about/index" title="">về chúng tôi</a>
                            <!-- <ul>
                                <li><a class="smooth" href="#" title="">Menu 1 1</a></li>
                                <li><a class="smooth" href="#" title="">Menu 1 2</a></li>
                                <li><a class="smooth" href="#" title="">Menu 1 3</a></li>
                                <li><a class="smooth" href="#" title="">Menu 1 4</a></li>
                                <li><a class="smooth" href="#" title="">Menu 1 5</a></li>
                            </ul> -->
                        </li>
                        <li <?php if($controller == 'members'){echo 'class="active"';} ?>><a class="smooth" href="<?php echo base_url() ?>members/index" title="">Sở hữu các thương hiệu</a></li>
                        <li <?php if($controller == 'media_library'){echo 'class="active"';} ?>><a class="smooth" href="<?php echo base_url() ?>media_library/index" title="">thư viện</a></li>
                        <li <?php if($controller == 'news'){echo 'class="active"';} ?>><a class="smooth" href="<?php echo base_url() ?>news/index" title="">tin tức</a></li>
                        <li <?php if($controller == 'contact'){echo 'class="active"';} ?>><a class="smooth" href="<?php echo base_url() ?>contact/index" title="">liên hệ</a></li>
                    </ul>
                </nav>
                
                <div class="header-crt">
                    <div class="header-search">
                        <span class="ic-search"><i class="fa fa-search"></i></span>
                        <div class="form-search">
                            <div class="form-group">
                                <input type="text" placeholder="Tìm kiếm ...">
                                <button type="submit"><i class="icon_search"></i></button>
                            </div>
                        </div>
                    </div>
                    <a href="" title="" class="header-lang">VN</a>
                </div>
                <div class="icon-menu open-mnav">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
            
        </div>
    </div>
</header>