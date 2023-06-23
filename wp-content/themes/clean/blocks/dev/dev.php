<?php
$fields = get_fields();
?>

<section class="dev">
    <div class="container">
        <?php if (!empty($fields['sub_title'])) { ?>
            <div class="dev__subtitle"><?php echo wp_kses_post($fields['sub_title']); ?></div>
        <?php } ?>
        <?php if (!empty($fields['title'])) { ?>
            <div class="dev__title"><?php echo wp_kses_post($fields['title']); ?></div>
        <?php } ?>
        <div class="dev__cols">
            <?php if (!empty($fields['dev_inner_left'])) { ?>
                <div class="dev__cols-inner">
                    <?php echo wp_kses_post($fields['dev_inner_left']); ?>
                </div>
            <?php }
            if (!empty($fields['dev_inner_right'])) { ?>
                <div class="dev__cols-inner">
                    <?php echo wp_kses_post($fields['dev_inner_right']); ?>
                </div>
            <?php } ?>
        </div>
        <div class="dev__tab-container">
            <div class="dev__tab-buttons">
                <button class="dev__tab-button" data-tab="tab1"><?php echo wp_kses_post($fields['tab1']); ?></button>
                <button class="dev__tab-button active" data-tab="tab2"><?php echo wp_kses_post($fields['tab2']); ?></button>
            </div>
            <div class="dev__tab-content">
                <div id="tab1" class="tab-item">
                    <div class="tab-item-first"><?php echo wp_kses_post($fields['tab1_inner']); ?></div>
                </div>
                <div id="tab2" class="tab-item active">
                    <div class="tab-item-second"><?php echo wp_kses_post($fields['tab2_inner']); ?></div>
                </div>
            </div>
        </div>
    </div>
</section>
