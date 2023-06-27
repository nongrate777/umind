<?php
$fields = get_fields();
?>

<section class="dev_about">
    <div class="container">
        <?php if (!empty($fields['sub_title'])) { ?>
            <div class="dev_about__subtitle"><?php echo wp_kses_post($fields['sub_title']); ?></div>
        <?php } ?>
        <?php if (!empty($fields['title'])) { ?>
            <div class="dev_about__title"><?php echo wp_kses_post($fields['title']); ?></div>
        <?php } ?>
        <div class="dev_about__cols">
            <?php if (!empty($fields['dev_inner_left'])) { ?>
                <div class="dev_about__cols-inner">
                    <?php echo wp_kses_post($fields['dev_inner_left']); ?>
                </div>
            <?php }
            if (!empty($fields['dev_inner_right'])) { ?>
                <div class="dev_about__cols-inner">
                    <?php echo wp_kses_post($fields['dev_inner_right']); ?>
                </div>
            <?php } ?>
        </div>
    </div>
</section>
