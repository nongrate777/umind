<?php
$fields = get_fields();
?>

<section class="contact">
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h2><?php echo wp_kses_post($fields['title']); ?></h2>
        <?php } ?>
        <div class="contact__part">
            <div class="contact__part-form">
                <?php echo do_shortcode('[contact-form-7 id="212" title="Feedback"]'); ?>
            </div>
            <div class="contact__part-inner">
                <?php if (!empty($fields['image'])) { ?>
                    <div class="contact__image"><img src="<?php echo $fields['image']['url']; ?>"></div>
                <?php } ?>
                <?php if (!empty($fields['name'])) { ?>
                    <div class="contact__name"><?php echo $fields['name']; ?></div>
                <?php } ?>
                <?php if (!empty($fields['job'])) { ?>
                    <div class="contact__job"><?php echo $fields['job']; ?></div>
                <?php } ?>

                <div class="contact__link">
                    <a href="#"></a>
                </div>
                <div class="contact__call">
                    <a href="#">Book a call with us to discuss</a>
                </div>
            </div>
        </div>
    </div>
</section>

