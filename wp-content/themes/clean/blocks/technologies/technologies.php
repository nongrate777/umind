<?php
$fields = get_fields();
?>

<section class="technologies">
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h2><?php echo wp_kses_post($fields['title']); ?></h2>
        <?php } ?>
        <div class="tabs-container"></div>
        <div class="technologies__main">
            <div class="technologies__inner">
                <?php if (!empty($fields['frontend_title'])) { ?>
                    <div class="technologies__inner-title">
                        <?php echo wp_kses_post($fields['frontend_title']); ?>
                    </div>
                <?php } ?>
                <?php
                if (!empty($fields['frontend'])) {
                    foreach ($fields['frontend'] as $front) { ?>
                        <div class="technologies__fields">
                            <div class="technologies__fields-image">
                                <div class="image-wrapper">
                                    <img src="<?php echo wp_kses_post($front['frontend_image']['url']); ?>"
                                         alt="<?php echo wp_kses_post($front['frontend_image']['alt']); ?>">
                                    <img src="<?php echo wp_kses_post($front['frontend_hover_image']['url']); ?>"
                                         class="hover-image">
                                </div>
                            </div>
                            <div class="technologies__fields-item"><?php echo $front['frontend_name']; ?></div>
                        </div>
                    <?php }
                } ?>
            </div>
            <div class="technologies__inner">
                <?php if (!empty($fields['backend_title'])) { ?>
                    <div class="technologies__inner-title">
                        <?php echo wp_kses_post($fields['backend_title']); ?>
                    </div>
                <?php } ?>
                <?php
                if (!empty($fields['backend'])) {
                    foreach ($fields['backend'] as $back) { ?>
                        <div class="technologies__fields">
                            <div class="technologies__fields-image">
                                <div class="image-wrapper">
                                    <img src="<?php echo wp_kses_post($back['backend_image']['url']); ?>"
                                         alt="<?php echo wp_kses_post($back['backend_image']['alt']); ?>">
                                    <img src="<?php echo wp_kses_post($back['backend_hover_image']['url']); ?>"
                                         class="hover-image">
                                </div>
                            </div>
                            <div class="technologies__fields-item"><?php echo $back['backend_name']; ?></div>
                        </div>
                    <?php }
                } ?>
            </div>

            <div class="technologies__inner">
                <?php if (!empty($fields['mobile_title'])) { ?>
                    <div class="technologies__inner-title">
                        <?php echo wp_kses_post($fields['mobile_title']); ?>
                    </div>
                <?php } ?>
                <?php
                if (!empty($fields['mobile'])) {
                    foreach ($fields['mobile'] as $mob) { ?>
                        <div class="technologies__fields">
                            <div class="technologies__fields-image">
                                <div class="image-wrapper">
                                    <img src="<?php echo wp_kses_post($mob['mobile_image']['url']); ?>"
                                         alt="<?php echo wp_kses_post($mob['mobile_image']['alt']); ?>">
                                    <img src="<?php echo wp_kses_post($mob['mobile_hover_image']['url']); ?>"
                                         class="hover-image">
                                </div>
                            </div>
                            <div class="technologies__fields-item"><?php echo $mob['mobile_name']; ?></div>
                        </div>
                    <?php }
                } ?>
            </div>

            <div class="technologies__inner">
                <?php if (!empty($fields['cloud_title'])) { ?>
                    <div class="technologies__inner-title">
                        <?php echo wp_kses_post($fields['cloud_title']); ?>
                    </div>
                <?php } ?>
                <?php
                if (!empty($fields['cloud'])) {
                    foreach ($fields['cloud'] as $cloud) { ?>
                        <div class="technologies__fields">
                            <div class="technologies__fields-image">
                                <div class="image-wrapper">
                                    <img src="<?php echo wp_kses_post($cloud['cloud_image']['url']); ?>"
                                         alt="<?php echo wp_kses_post($cloud['cloud_image']['alt']); ?>">
                                    <img src="<?php echo wp_kses_post($cloud['cloud_hover_image']['url']); ?>"
                                         class="hover-image">
                                </div>
                            </div>
                            <div class="technologies__fields-item"><?php echo $cloud['cloud_name']; ?></div>
                        </div>
                    <?php }
                } ?>
            </div>
        </div>
    </div>
</section>



