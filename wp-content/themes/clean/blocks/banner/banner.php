<?php
$fields = get_fields();

$banner_style = !empty($fields['image']) ? ' style="background-image: url(' . $fields['image']['url'] . ')"' : '';
?>

<section class="banner"<?php echo $banner_style; ?>>
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h1><?php echo wp_kses_post($fields['title']); ?></h1>
        <?php }

        if (!empty($fields['description'])) { ?>
            <p><?php echo wp_kses_post($fields['description']); ?></p>
        <?php } ?>
    </div>
</section>
