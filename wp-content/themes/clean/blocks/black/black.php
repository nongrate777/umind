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
        <div class="black__garntie">
            <?php if (!empty($fields['we_garantee'])) { ?>
                <div class="black__garntie-title"><?php echo wp_kses_post($fields['we_garantee']); ?></div>
            <?php } ?>
            <div class="black__garntie-inner">
                <?php
                if (!empty($fields['garante'])) {
                    foreach ($fields['garante'] as $garan) { ?>
                        <div class="garan__fields">
                            <div class="garan__fields-number"><?php echo $garan['number']; ?>/</div>
                            <div class="garan__fields-title"><?php echo $garan['desc']; ?></div>
                        </div>
                    <?php }
                } ?>
            </div>
        </div>
        <div class="black__hiring">
            <div class="black__hiring-first">
                <?php if (!empty($fields['hiring1_title'])) { ?>
                    <div class="black__hiring-first-title"><?php echo wp_kses_post($fields['hiring1_title']); ?></div>
                <?php } ?>
                <div class="black__hiring-first-list">
                    <?php
                    if (!empty($fields['hiring1'])) {
                        foreach ($fields['hiring1'] as $hiring1) { ?>
                                <div class="item"><?php echo $hiring1['hiring_list']; ?></div>
                        <?php }
                    } ?>
                </div>
                <?php if (!empty($fields['hiring1_button'])) { ?>
                    <div class="black__hiring-first-button"><a href="#"><?php echo wp_kses_post($fields['hiring1_button']); ?></a></div>
                <?php } ?>
            </div>
            <div class="black__hiring-second">
                <?php if (!empty($fields['hiring2_title'])) { ?>
                    <div class="black__hiring-second-title"><?php echo wp_kses_post($fields['hiring2_title']); ?></div>
                <?php } ?>
                <div class="popular">Popular</div>
                <div class="black__hiring-second-list">
                    <?php
                    if (!empty($fields['hiring2'])) {
                        foreach ($fields['hiring2'] as $hiring2) { ?>
                            <div class="item"><?php echo $hiring2['hiring_list']; ?></div>
                        <?php }
                    } ?>
                </div>
                <?php if (!empty($fields['hiring2_button'])) { ?>
                    <div class="black__hiring-second-button"><a href="#"><?php echo wp_kses_post($fields['hiring2_button']); ?></a></div>
                <?php } ?>
            </div>
            <div class="black__hiring-third">
                <?php if (!empty($fields['hiring3_title'])) { ?>
                    <div class="black__hiring-third-title"><?php echo wp_kses_post($fields['hiring3_title']); ?></div>
                <?php } ?>
                <div class="black__hiring-third-list">
                    <?php
                    if (!empty($fields['hiring3'])) {
                        foreach ($fields['hiring3'] as $hiring3) { ?>
                            <div class="item"><?php echo $hiring3['hiring_list']; ?></div>
                        <?php }
                    } ?>
                </div>
                <?php if (!empty($fields['hiring3_button'])) { ?>
                    <div class="black__hiring-third-button"><a href="#"><?php echo wp_kses_post($fields['hiring3_button']); ?></a></div>
                <?php } ?>
            </div>
        </div>
        <?php if (!empty($fields['bottom_title'])) { ?>
            <div class="black__bottom_title"><?php echo wp_kses_post($fields['bottom_title']); ?></div>
        <?php } ?>
        <?php if (!empty($fields['bottom_link_text'])) { ?>
            <div class="black__bottom_link"><a href="#"><?php echo wp_kses_post($fields['bottom_link_text']); ?></a>
            </div>
        <?php } ?>
    </div>
</section>
