<?php
$fields = get_fields();
?>

<section class="cv_black">
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h2><?php echo wp_kses_post($fields['title']); ?></h2>
        <?php } ?>
        <?php if (!empty($fields['description'])) { ?>
            <p><?php echo wp_kses_post($fields['description']); ?></p>
        <?php } ?>
        <div class="cv_black__inner">
            <?php
            if (!empty($fields['cv'])) {
                foreach ($fields['cv'] as $cv) { ?>
                    <div class="cv_black__fields">
                        <div class="cv_black__fields-number"><?php echo $cv['number']; ?>/</div>
                        <div class="cv_black__fields-title"><?php echo $cv['cv_title']; ?></div>
                        <div class="cv_black__fields-description">
                            <?php echo $cv['cv_description'];
                            if (!empty($cv['cv_button'])) { ?>
                                <div class="cv_black__fields-description-button">
                                    <a href="/we-are-hiring/"><?php echo $cv['cv_button']; ?></a>
                                </div>
                            <?php } ?>
                        </div>

                    </div>
                <?php }
            } ?>
        </div>
    </div>
</section>
