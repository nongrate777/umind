<?php
$fields = get_fields();
?>

<section class="region">
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h2><?php echo wp_kses_post($fields['title']); ?></h2>
        <?php } ?>
        <div class="region__main">
            <div class="region__inner">

                <?php
                if (!empty($fields['first'])) {
                    foreach ($fields['first'] as $front) { ?>
                        <div class="region__fields">
                            <div class="region__fields-item"><?php echo $front['name']; ?></div>
                        </div>
                    <?php }
                } ?>
            </div>
            <div class="region__inner">

                <?php
                if (!empty($fields['second'])) {
                    foreach ($fields['second'] as $back) { ?>
                        <div class="region__fields">
                            <div class="region__fields-item"><?php echo $back['name']; ?></div>
                        </div>
                    <?php }
                } ?>
            </div>

            <div class="region__inner">

                <?php
                if (!empty($fields['third'])) {
                    foreach ($fields['third'] as $mob) { ?>
                        <div class="region__fields">
                            <div class="region__fields-item"><?php echo $mob['name']; ?></div>
                        </div>
                    <?php }
                } ?>
            </div>

            <div class="region__inner">

                <?php
                if (!empty($fields['fours'])) {
                    foreach ($fields['fours'] as $cloud) { ?>
                        <div class="region__fields">
                            <div class="region__fields-item"><?php echo $cloud['name']; ?></div>
                        </div>
                    <?php }
                } ?>
            </div>
        </div>
    </div>
</section>
