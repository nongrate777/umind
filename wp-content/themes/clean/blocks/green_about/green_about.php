<?php
$fields = get_fields();
?>

<section class="green_about">
    <div class="container">
        <div class="double">
            <div class="green_about__left">
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
            <div class="green_about__right">
                <?php if (!empty($fields['image'])) { ?>
                    <div class="green_about__right-image"><img src="<?php echo $fields['image']['url']; ?>"></div>
                <?php } ?>
                <?php if (!empty($fields['name'])) { ?>
                    <div class="green_about__right-name"><?php echo $fields['name']; ?></div>
                <?php } ?>
                <?php if (!empty($fields['job'])) { ?>
                    <div class="green_about__right-job"><?php echo $fields['job']; ?></div>
                <?php } ?>

                <div class="green_about__right-link">
                    <a href="https://www.linkedin.com/in/nataliaosipchik/" target="_blank"></a>
                </div>

            </div>
        </div>
    </div>
</section>
