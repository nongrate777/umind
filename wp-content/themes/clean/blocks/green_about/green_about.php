<?php
$fields = get_fields();
?>

<section class="green_about">
    <div class="container">
        <div class="double">
            <?php if (!empty($fields['title'])) { ?>
                <h2><?php echo wp_kses_post($fields['title']); ?></h2>
            <?php } ?>
            <div class="green_about__bottom">
                <div class="green_about__bottom-desc">
                    <?php if (!empty($fields['description'])) { ?>
                        <?php echo wp_kses_post($fields['description']); ?>
                    <?php } ?>
                </div>

            </div>
        </div>
    </div>
</section>
