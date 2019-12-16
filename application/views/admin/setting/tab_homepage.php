<div class="tab-pane" id="tab_homepage">
   <ul class="nav nav-tabs">
        <?php foreach ($this->config->item('cms_language') as $lang_code => $lang_name) { ?>
            <li<?php echo ($lang_code == 'vi') ? ' class="active"' : ''; ?>><a
                href="#tab1_<?php echo $lang_code; ?>"
                data-toggle="tab"><img
                      src="<?php echo $this->templates_assets; ?>/flag/<?php echo $lang_code ?>.png"> <?php echo $lang_name; ?>
                </a>
            </li>
        <?php } ?>
    </ul>
    <div class="tab-content">

        <?php foreach ($this->config->item('cms_language') as $lang_code => $lang_name) { ?>
            <div class="tab-pane <?php echo ($lang_code == 'vi') ? 'active' : ''; ?>" id="tab1_<?php echo $lang_code; ?>">
                <div class="box-body">

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Giới thiệu</label>
                                <textarea id="content_<?php echo $lang_code;?>" name="home[<?php echo $lang_code; ?>][lecturers]" placeholder="Giới thiệu" class="tinymce form-control" rows="10"><?php echo isset($home[$lang_code]['lecturers']) ? $home[$lang_code]['lecturers'] : ''; ?></textarea>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Tầm nhìn</label>
                                <textarea id="content_<?php echo $lang_code;?>" name="home[<?php echo $lang_code; ?>][course]" placeholder="Tầm nhìn" class="tinymce form-control" rows="10"><?php echo isset($home[$lang_code]['course']) ? $home[$lang_code]['course'] : ''; ?></textarea>
                            </div>
                        </div>
                    </div> 
                    <hr>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Sứ mệnh</label>
                                <textarea id="content_<?php echo $lang_code;?>" name="home[<?php echo $lang_code; ?>][t_course]" placeholder="Sứ mệnh" class="tinymce form-control" rows="10"><?php echo isset($home[$lang_code]['t_course']) ? $home[$lang_code]['t_course'] : ''; ?></textarea>
                            </div>
                        </div>
                        <div class="col-md-6">
                           <div class="form-group">
                                <label>Giá trị cốt lõi</label>
                                <textarea id="content_<?php echo $lang_code;?>" name="home[<?php echo $lang_code; ?>][t_lecturers]" placeholder="Gía trị cốt lõi>" class="tinymce form-control" rows="10"><?php echo isset($home[$lang_code]['t_lecturers']) ? $home[$lang_code]['t_lecturers'] : ''; ?></textarea>
                            </div>
                        </div>
                    </div>
                    <hr>
                </div> 
            </div> 
        <?php } ?>
    </div>

</div>