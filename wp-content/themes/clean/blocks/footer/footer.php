<?php
$fields = get_field('footer', 'options');
?>
</main>
<footer class="footer">
    <div class="container">


        <div class="footer__part1">
            <?php if (!empty($fields['footer_title'])) { ?>
                <div class="footer__title"><?php echo  $fields['footer_title']; ?></div>
            <?php } ?>
            <?php if (!empty($fields['footer_description'])) { ?>
                <div class="footer__description"><?php echo  $fields['footer_description']; ?></div>
            <?php } ?>
            <?php if (!empty($fields['footer_link_text'] && $fields['footer_link'])) { ?>
                <div class="footer__link"><?php echo  $fields['footer_link_text']; ?></div>
            <?php } ?>
        </div>
        <div class="footer__part2">
            <div class="footer__part2-left"></div>
            <div class="footer__part2-right">
                <?php if (!empty($fields['contact'])) { ?>
                    <div class="footer__contact"><?php echo  $fields['contact']; ?></div>
                <?php } ?>
                <?php if (!empty($fields['contact_email'] && $fields['contact_email_link'])) { ?>
                    <div class="footer__contact-email"><a href="<?php echo  $fields['contact_email_link']; ?>"><?php echo  $fields['contact_email']; ?></a></div>
                <?php } ?>
                <?php if (!empty($fields['contact_phone'] && $fields['contact_phone_link'])) { ?>
                    <div class="footer__contact-phone"><a href="<?php echo  $fields['contact_phone_link']; ?>"><?php echo  $fields['contact_phone']; ?></a></div>
                <?php } ?>
            </div>

        </div>
        <div class="footer__part3">
            <?php if (!empty($fields['copyright'])) { ?>
                <p class="footer__copyright">© <?php echo date('Y') . ' ' . $fields['copyright']; ?></p>
            <?php } ?>
        </div>

    </div>
</footer>
<?php
wp_footer();
?>
</body>
</html>
