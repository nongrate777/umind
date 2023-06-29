<?php
$fields = get_fields();
?>

<section class="policy">
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h2><?php echo wp_kses_post($fields['title']); ?></h2>
        <?php } ?>
        <?php if (!empty($fields['date'])) { ?>
            <div class="policy__date"><?php echo wp_kses_post($fields['date']); ?></div>
        <?php } ?>
        <?php if (!empty($fields['description'])) { ?>
            <div class="policy__description"><?php echo wp_kses_post($fields['description']); ?></div>
        <?php } ?>

    </div>
</section>

