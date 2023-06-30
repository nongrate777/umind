<?php
$fields = get_fields();
?>

<div class="blogs">

        <?php if (!empty($fields['text'])) { ?>
            <div class="blogs__text"><?php echo wp_kses_post($fields['text']); ?></div>
        <?php } ?>

</div>
