<?php
$fields = get_fields();
?>
<section class="testimonials">
    <div class="container">
        <div class="easy-title-wrapper">
            <?php if (!empty($fields['title_section'])) : ?>
                <div class="second-title second-title--mobile">
                    <h2><?php echo wp_kses_post($fields['title_section']); ?></h2>
                </div>
            <?php endif; ?>
        </div>
        <div class="swiper-wrapper-index">
            <div class="swiper-inner-container swiper1">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <?php
                        foreach ($fields['testimonials'] as $t) {

                            ?>
                            <div class="swiper-slide swiper-slide-item">
                                <div class="swiper-slide__top">
                                    <?php echo wp_kses_post($t['label']); ?>
                                </div>
                                <div class="swiper-slide__center">
                                    <?php echo $t['testimonial']; ?>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div class="swiper-slide__nav">
                <button class="swiper-next"></button>
                <button class="swiper-prev"></button>
            </div>
        </div>
    </div>
</section>
