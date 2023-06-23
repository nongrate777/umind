<?php
$fields = get_fields();
?>

<section class="green">
    <div class="container">
        <div class="double">
            <?php if (!empty($fields['title'])) { ?>
                <h2><?php echo wp_kses_post($fields['title']); ?></h2>
            <?php } ?>
            <div class="green__bottom">
                <div class="green__bottom-desc">
                    <?php if (!empty($fields['description'])) { ?>
                        <?php echo wp_kses_post($fields['description']); ?>
                    <?php } ?>
                </div>
                <div class="green__bottom-button">
                    <?php if (!empty($fields['button'])) { ?>
                        <a href="#"><?php echo wp_kses_post($fields['button']); ?></a>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</section>
