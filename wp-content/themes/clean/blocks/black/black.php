<?php
$fields = get_fields();
?>

<section class="black">
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h2><?php echo wp_kses_post($fields['title']); ?></h2>
        <?php } ?>
        <?php if (!empty($fields['description'])) { ?>
            <div class="black__description"><?php echo wp_kses_post($fields['description']); ?></div>
        <?php } ?>
        <?php if (!empty($fields['bottom_title'])) { ?>
            <div class="black__bottom_title"><?php echo wp_kses_post($fields['bottom_title']); ?></div>
        <?php } ?>
        <?php if (!empty($fields['bottom_link_text'])) { ?>
            <div class="black__bottom_link"><a href="#"><?php echo wp_kses_post($fields['bottom_link_text']); ?></a></div>
        <?php } ?>
    </div>
</section>
