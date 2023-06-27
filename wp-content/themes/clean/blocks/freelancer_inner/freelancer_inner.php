<?php
$fields = get_fields();
?>

<section class="freelancerin">
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h2><?php echo wp_kses_post($fields['title']); ?></h2>
        <?php } ?>
        <div class="freelancerin__inner">
            <?php
            if (!empty($fields['freelancer'])) {
                foreach ($fields['freelancer'] as $faq) { ?>
                    <div class="freelancerin__fields">
                        <div class="freelancerin__fields-image"><img
                                    src="<?php echo wp_kses_post($faq['image']['url']); ?>"
                                    alt="<?php echo wp_kses_post($faq['image']['alt']); ?>"></div>
                        <div class="freelancerin__fields-right">
                            <div class="freelancerin__fields-item"><?php echo $faq['item']; ?></div>
                            <div class="freelancerin__fields-inner"><?php echo $faq['inner']; ?></div>
                        </div>
                    </div>
                <?php }
            } ?>
        </div>
    </div>
</section>
