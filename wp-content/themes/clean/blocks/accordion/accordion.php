<?php
$fields = get_fields();
?>

<section class="accordion">
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h2><?php echo wp_kses_post($fields['title']); ?></h2>
        <?php }

        if (!empty($fields['accordion'])) {
            foreach ($fields['accordion'] as $faq) { ?>
                <div class="accordion__faq">
                    <div class="accordion__question"><?php echo wp_kses_post($faq['question']); ?></div>
                    <div class="accordion__answer content"><?php echo $faq['answer']; ?></div>
                </div>
            <?php }
        } ?>
    </div>
</section>
