<?php
$fields = get_field('footer', 'options');
?>
</main>
<footer class="footer">
    <div class="container">


        <div class="footer__part1 contact-<?php echo the_ID();?>">
            <div class="footer__part1-inner">
            <?php if (!empty($fields['footer_title'])) { ?>
                <div class="footer__title"><?php echo  $fields['footer_title']; ?></div>
            <?php } ?>
            <?php if (!empty($fields['footer_description'])) { ?>
                <div class="footer__description"><?php echo  $fields['footer_description']; ?></div>
            <?php } ?>
            <?php if (!empty($fields['footer_link_text'] && $fields['footer_link'])) { ?>
                <div class="footer__link"><a href="/we-are-hiring/"><?php echo  $fields['footer_link_text']; ?></a></div>
            <?php } ?>
            </div>
            <div class="footer__part1-form">
                <?php echo do_shortcode('[contact-form-7 id="212" title="Feedback"]'); ?>
            </div>
        </div>
        <div class="footer__part2">
            <div class="footer__part2-left">
                <img src="data:image/svg+xml,%3Csvg width='70' height='19' viewBox='0 0 70 19' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M69.123 0.75H65.7546V6.28984C65.4888 6.07273 65.1935 5.8846 64.8692 5.72552C64.1286 5.34042 63.286 5.15126 62.3478 5.15126C61.1805 5.15126 60.1136 5.43993 59.1531 6.01927L59.1516 6.0202C58.2098 6.59741 57.4646 7.37324 56.9184 8.34426C56.37 9.31924 56.0981 10.4131 56.0981 11.62C56.0981 12.8128 56.3703 13.906 56.9176 14.8942C57.4636 15.88 58.2089 16.6639 59.1516 17.2416L59.1541 17.2432C60.1015 17.8086 61.1757 18.0887 62.3697 18.0887C63.2644 18.0887 64.096 17.9141 64.8609 17.5622L64.8646 17.5604C65.2546 17.3732 65.6027 17.1455 65.9078 16.8774V17.8259H69.123V0.75ZM39.5098 1.01276H36.1413V4.57832H39.5098V1.01276ZM23.9385 5.96153C24.3231 6.2255 24.6435 6.53149 24.8981 6.87887C25.192 6.49266 25.5384 6.17029 25.938 5.91424C26.7119 5.40389 27.5996 5.15126 28.5924 5.15126C29.4774 5.15126 30.2729 5.34994 30.9718 5.75352C31.6835 6.15599 32.2413 6.72204 32.6426 7.44706C33.046 8.16131 33.2437 8.98561 33.2437 9.91201V17.8259H29.8752V10.5908C29.8752 10.095 29.7857 9.68256 29.6169 9.34502C29.4464 9.00403 29.2147 8.74887 28.9223 8.57089L28.9157 8.56674C28.6281 8.3792 28.2692 8.27889 27.826 8.27889C27.4157 8.27889 27.0611 8.37755 26.7542 8.56934L26.7477 8.57328C26.4413 8.752 26.2042 9.00682 26.0351 9.34502C25.8664 9.68256 25.7769 10.095 25.7769 10.5908V17.8259H22.4084V10.5908C22.4084 10.095 22.3189 9.68256 22.1501 9.34502C21.981 9.00682 21.7439 8.752 21.4376 8.57328L21.427 8.56674C21.1382 8.37841 20.786 8.27889 20.3592 8.27889C19.9489 8.27889 19.5942 8.37755 19.2874 8.56934L19.2808 8.57328C18.9745 8.752 18.7374 9.00682 18.5683 9.34502C18.3995 9.68256 18.31 10.095 18.31 10.5908V17.8259H14.9416V5.41403H18.1349V6.35149C18.3163 6.15182 18.5235 5.97643 18.7567 5.82613C19.4594 5.37328 20.2816 5.15126 21.2132 5.15126C22.2373 5.15126 23.1488 5.41963 23.9385 5.96153ZM46.5846 5.7549C46.2961 5.92274 46.042 6.12498 45.8224 6.36072V5.41403H42.6291V17.8259H45.9976V10.5908C45.9976 10.0977 46.0934 9.6877 46.2743 9.35174C46.4568 9.01268 46.7082 8.75598 47.0303 8.57556L47.0367 8.57171C47.3591 8.3783 47.7299 8.27889 48.1562 8.27889C48.599 8.27889 48.9673 8.37933 49.2717 8.56958L49.2822 8.57546C49.6044 8.75588 49.8556 9.01268 50.0382 9.35174C50.2191 9.6877 50.3149 10.0977 50.3149 10.5908V17.8259H53.6834V9.91201C53.6834 8.98559 53.4857 8.16127 53.0823 7.44702C52.6802 6.72062 52.114 6.15445 51.3876 5.75238C50.674 5.34926 49.8572 5.15126 48.9445 5.15126C48.0596 5.15126 47.2703 5.34996 46.5846 5.7549ZM52.8641 7.56905L53.0817 7.44604L53.0823 7.44702L53.0828 7.44804L52.8641 7.56905ZM4.11849 5.41403H0.75V12.9557C0.75 13.9635 0.930537 14.8559 1.30011 15.6258L1.30192 15.6294C1.68704 16.3997 2.23698 17.005 2.95021 17.4391L2.95225 17.4403C3.6826 17.8754 4.53108 18.0887 5.48885 18.0887C6.37185 18.0887 7.15355 17.8981 7.82514 17.5079C8.11413 17.3436 8.36881 17.1449 8.58907 16.9127V17.8259H11.8043V5.41403H8.43579V12.6491C8.43579 13.1422 8.34002 13.5522 8.15912 13.8882C7.97638 14.2276 7.72417 14.4928 7.39986 14.6882C7.07719 14.8681 6.70516 14.961 6.27714 14.961C5.84998 14.961 5.46959 14.8685 5.13076 14.6871C4.80661 14.4915 4.55569 14.2338 4.37414 13.9116C4.20614 13.5733 4.11849 13.1765 4.11849 12.7148V5.41403ZM39.5098 5.41403H36.1413V17.8259H39.5098V5.41403ZM61.0794 8.72227C61.5479 8.4278 62.0778 8.27889 62.6762 8.27889C63.2928 8.27889 63.8227 8.42222 64.2747 8.70142C64.729 8.98201 65.085 9.37659 65.3429 9.89249L65.3467 9.89951C65.6167 10.399 65.7546 10.9704 65.7546 11.62C65.7546 12.2851 65.6162 12.8636 65.3466 13.3623L65.3442 13.367C65.0868 13.8683 64.7307 14.2569 64.2747 14.5385C63.8227 14.8177 63.2928 14.961 62.6762 14.961C62.0756 14.961 61.5441 14.8183 61.075 14.5368C60.6045 14.2545 60.2345 13.8655 59.9633 13.3647C59.7075 12.8655 59.576 12.2861 59.576 11.62C59.576 10.9531 59.7077 10.3817 59.9626 9.89831C60.2339 9.39695 60.6042 9.00757 61.0751 8.72504L61.0794 8.72227Z' fill='white'/%3E%3C/svg%3E%0A">
            </div>
            <div class="footer__part2-right1">
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
            <div class="footer__part2-right2">
                <?php if (!empty($fields['address_title'])) { ?>
                    <div class="footer__address-title"><?php echo  $fields['address_title']; ?></div>
                <?php } ?>
                <?php if (!empty($fields['address'])) { ?>
                    <div class="footer__address"><?php echo  $fields['address']; ?></div>
                <?php } ?>
            </div>
            <div class="footer__part2-right3">
                <?php if (!empty($fields['join_us'])) { ?>
                    <div class="footer__join"><a href="/we-are-hiring/"><?php echo  $fields['join_us']; ?></a><span>*</span></div>
                <?php } ?>
                <div class="footer__join-social">
                    <a href="#" class="social1"> </a>
                    <a href="#" class="social2"> </a>
                    <a href="#" class="social3"> </a>
                    <a href="#" class="social4"> </a>
                </div>
            </div>

        </div>
        <div class="footer__part3">
            <?php if (!empty($fields['copyright'])) { ?>
                <p class="footer__copyright">© <?php echo date('Y') . ' ' . $fields['copyright']; ?></p>
            <?php } ?>
            <?php if (!empty($fields['privacy_policy'] && $fields['privacy_policy_link'])) { ?>
            <div class="footer__part3-policy">
                <a href="<?php echo  $fields['privacy_policy_link']; ?>"><?php echo  $fields['privacy_policy']; ?></a>
            </div>
            <?php } ?>
        </div>

    </div>
</footer>
<?php
wp_footer();
?>
</body>
</html>
