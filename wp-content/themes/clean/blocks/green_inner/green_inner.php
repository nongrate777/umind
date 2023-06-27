<?php
$fields = get_fields();
?>

<section class="greeninner">
    <div class="container">
        <div class="double">
            <?php if (!empty($fields['title'])) { ?>
                <h2><?php echo wp_kses_post($fields['title']); ?></h2>
            <?php } ?>
            <div class="greeninner__bottom">
                <div class="greeninner__bottom-desc">
                    <?php if (!empty($fields['description'])) { ?>
                        <?php echo wp_kses_post($fields['description']); ?>
                    <?php } ?>
                </div>
                <div class="greeninner__bottom-button">
                    <?php if (!empty($fields['button'])) { ?>
                        <a href="/we-are-hiring/"><?php echo wp_kses_post($fields['button']); ?></a>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</section>
