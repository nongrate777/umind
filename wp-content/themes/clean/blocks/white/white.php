<?php
$fields = get_fields();
?>

<section class="white">
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h2><?php echo wp_kses_post($fields['title']); ?></h2>
        <?php } ?>
        <?php if (!empty($fields['description'])) { ?>
            <div class="white__description"><?php echo wp_kses_post($fields['description']); ?></div>
        <?php } ?>
        <?php if (!empty($fields['phone'] && $fields['phone_link'])) { ?>
            <div class="white__phone">
                <a href="tel:<?php echo wp_kses_post($fields['phone_link']); ?>"><?php echo wp_kses_post($fields['phone']); ?></a>
            </div>
        <?php } ?>
        <?php if (!empty($fields['email'] && $fields['email_link'])) { ?>
            <div class="white__email">
                <a href="mailto:<?php echo wp_kses_post($fields['email_link']); ?>"><?php echo wp_kses_post($fields['email']); ?></a>
            </div>
        <?php } ?>
    </div>
</section>

