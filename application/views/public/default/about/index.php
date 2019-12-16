<section class="bn-page">
    <img src="<?php echo base_url() ?>public/images/bg-about.jpg" alt="">
    <h2 class="title-page">về chúng tôi</h2>
    <div class="pr-mouse">
        <div class="mouse">
            <div class="scroll"></div>
        </div>
    </div>
    <div class="scale"></div>
    <div class="scale"></div>
    <div class="scale"></div>
</section>
<section class="page-primary">
    <div class="container">
        <div class="intro-about">
            <div class="row">
                <div class="col-lg-5">
                    <div class="ct">
                        <h2 class="title">giới thiệu</h2>
                        <div class="desc">
                            <?php echo $this->settings['about'][$this->session->public_lang_code]['gioithieu']; ?>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="img">
                        <img src="<?php echo base_url() ?>public/images/img-about.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="about-tab">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#tabs1"><span><img src="<?php echo base_url() ?>public/images/ic-ab1.jpg" alt=""></span>Tầm nhìn</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#tabs2"><span><img src="<?php echo base_url() ?>public/images/ic-ab2.jpg" alt=""></span>sứ mệnh</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#tabs3"><span><img src="<?php echo base_url() ?>public/images/ic-ab3.jpg" alt=""></span>giá trị cốt lõi</a>
                </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane fade" id="tabs1">
                    <div class="row">
                        <div class="col-lg">
                            <?php echo $this->settings['about'][$this->session->public_lang_code]['tamnhin1']; ?>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="tabs2">
                    <div class="row">
                        <div class="col-lg">
                            <?php echo $this->settings['about'][$this->session->public_lang_code]['sumenh1']; ?>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade active show" id="tabs3">
                    <img src="<?php echo base_url() ?>public/images/img-about2.jpg" alt="">
                    <div class="row">
                        <div class="col-lg">
                            <div class="item-ab">
                                <?php echo $this->settings['about'][$this->session->public_lang_code]['cotloi1']; ?>
                            </div>
                        </div>
                        <div class="col-lg">
                            <div class="item-ab">
                                <?php echo $this->settings['about'][$this->session->public_lang_code]['cotloi2']; ?>
                            </div>
                        </div>
                        <div class="col-lg">
                            <div class="item-ab">
                                <?php echo $this->settings['about'][$this->session->public_lang_code]['cotloi3']; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="new-letter">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <ul class="socials-home">
                    <li><a href="" title=""><i class="social_facebook"></i></a></li>
                    <li><a href="" title=""><i class="social_youtube"></i></a></li>
                    <li><a href="" title=""><i class="social_instagram"></i></a></li>
                </ul>
            </div>
            <div class="col-lg-8">
                <div class="form-letter">
                    <span>Đăng ký nhận ưu đãi hàng tháng</span>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Địa chỉ email">
                        <button><img src="<?php echo base_url() ?>public/images/ic-mail.png" alt=""></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>