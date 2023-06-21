<?php
$fields = get_fields();
?>

<section class="freelancer">
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h2><?php echo wp_kses_post($fields['title']); ?></h2>
        <?php } ?>
        <div class="freelancer__inner">
            <?php
            if (!empty($fields['freelancer'])) {
                foreach ($fields['freelancer'] as $faq) { ?>
                    <div class="freelancer__fields">
                        <div class="freelancer__fields-image"><img
                                    src="<?php echo wp_kses_post($faq['image']['url']); ?>"
                                    alt="<?php echo wp_kses_post($faq['image']['alt']); ?>"></div>
                        <div class="freelancer__fields-item"><?php echo $faq['item']; ?></div>
                    </div>
                <?php }
            } ?>
        </div>
    </div>
</section>
