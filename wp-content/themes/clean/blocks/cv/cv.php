<?php
$fields = get_fields();
?>

<section class="cv">
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h2><?php echo wp_kses_post($fields['title']); ?></h2>
        <?php } ?>
        <?php if (!empty($fields['description'])) { ?>
            <p><?php echo wp_kses_post($fields['description']); ?></p>
        <?php } ?>
        <div class="cv__inner">
            <?php
            if (!empty($fields['cv'])) {
                foreach ($fields['cv'] as $cv) { ?>
                    <div class="cv__fields">
                        <div class="cv__fields-number"><?php echo $cv['number']; ?>/</div>
                        <div class="cv__fields-title"><?php echo $cv['cv_title']; ?></div>
                        <div class="cv__fields-description"><?php echo $cv['cv_description']; ?></div>
                    </div>
                <?php }
            } ?>
        </div>
    </div>
</section>
