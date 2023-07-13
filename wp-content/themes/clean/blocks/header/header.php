<?php
$fields = get_field('header', 'options');
?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <?php wp_head(); ?>
</head>
<body>
<header class="class-<?php echo the_ID();?> header" id="wrapper">
    <div class="container">
        <div class="header__logo">
            <?php if (!is_front_page()) { ?>
            <a href="<?php echo home_url('/'); ?>">
                <?php } ?>
                <img src="data:image/svg+xml,%3Csvg width='79' height='21' viewBox='0 0 79 21' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M78.1393 0.716797H74.325V6.98985C74.024 6.74401 73.6897 6.53098 73.3224 6.35084C72.4838 5.91477 71.5297 5.70058 70.4674 5.70058C69.1455 5.70058 67.9375 6.02745 66.8499 6.68347L66.8481 6.68452C65.7817 7.33813 64.9379 8.21664 64.3194 9.31618C63.6984 10.4202 63.3905 11.6589 63.3905 13.0254C63.3905 14.3762 63.6987 15.614 64.3185 16.7331C64.9367 17.8493 65.7807 18.7369 66.8481 19.3912L66.851 19.3929C67.9238 20.0331 69.1402 20.3503 70.4922 20.3503C71.5053 20.3503 72.4469 20.1526 73.3131 19.7541L73.3173 19.7521C73.7589 19.5402 74.153 19.2823 74.4986 18.9787V20.0528H78.1393V0.716797ZM44.6067 1.01434H40.7924V5.05181H44.6067V1.01434ZM26.9745 6.61808C27.41 6.91699 27.7728 7.26349 28.0611 7.65684C28.3939 7.21951 28.7861 6.85447 29.2387 6.56454C30.115 5.98664 31.1201 5.70058 32.2444 5.70058C33.2464 5.70058 34.1472 5.92555 34.9387 6.38255C35.7445 6.83828 36.3762 7.47926 36.8306 8.30023C37.2874 9.10901 37.5112 10.0424 37.5112 11.0914V20.0528H33.6969V11.8601C33.6969 11.2987 33.5956 10.8316 33.4045 10.4494C33.2114 10.0633 32.949 9.77434 32.6179 9.5728L32.6104 9.56811C32.2848 9.35575 31.8783 9.24215 31.3765 9.24215C30.9119 9.24215 30.5103 9.35387 30.1629 9.57105L30.1555 9.57551C29.8085 9.77789 29.5401 10.0664 29.3486 10.4494C29.1575 10.8316 29.0562 11.2987 29.0562 11.8601V20.0528H25.2418V11.8601C25.2418 11.2987 25.1405 10.8316 24.9494 10.4494C24.7579 10.0664 24.4895 9.77789 24.1425 9.57551L24.1305 9.56811C23.8036 9.35485 23.4048 9.24215 22.9215 9.24215C22.4569 9.24215 22.0553 9.35387 21.7078 9.57105L21.7004 9.57551C21.3535 9.77789 21.085 10.0664 20.8935 10.4494C20.7024 10.8316 20.6011 11.2987 20.6011 11.8601V20.0528H16.7868V5.99812H20.4027V7.05966C20.6081 6.83356 20.8428 6.63496 21.1069 6.46477C21.9026 5.95198 22.8335 5.70058 23.8885 5.70058C25.0482 5.70058 26.0803 6.00446 26.9745 6.61808ZM52.6179 6.38411C52.2912 6.57416 52.0035 6.80317 51.7548 7.07011V5.99812H48.1388V20.0528H51.9532V11.8601C51.9532 11.3017 52.0616 10.8374 52.2664 10.457C52.4732 10.0731 52.7578 9.78239 53.1226 9.5781L53.1298 9.57374C53.4949 9.35472 53.9147 9.24215 54.3975 9.24215C54.8989 9.24215 55.3159 9.35589 55.6606 9.57133L55.6725 9.57798C56.0373 9.78228 56.3218 10.0731 56.5286 10.457C56.7334 10.8374 56.8419 11.3017 56.8419 11.8601V20.0528H60.6562V11.0914C60.6562 10.0424 60.4324 9.10898 59.9755 8.30018C59.5202 7.47765 58.8791 6.83654 58.0566 6.38126C57.2485 5.92478 56.3235 5.70058 55.2901 5.70058C54.2881 5.70058 53.3943 5.92557 52.6179 6.38411ZM59.9755 8.30018L59.9749 8.29908L59.7284 8.43837L59.9761 8.30134L59.9755 8.30018ZM4.53123 5.99812H0.716919V14.5379C0.716919 15.6792 0.921351 16.6896 1.33984 17.5615L1.34188 17.5655C1.77798 18.4377 2.40071 19.1232 3.20834 19.6148L3.21064 19.6161C4.03766 20.1088 4.99844 20.3503 6.08297 20.3503C7.08283 20.3503 7.968 20.1345 8.72847 19.6927C9.05572 19.5066 9.3441 19.2816 9.59351 19.0187V20.0528H13.2343V5.99812H9.41995V14.1908C9.41995 14.7492 9.3115 15.2135 9.10666 15.5939C8.89974 15.9782 8.61414 16.2786 8.2469 16.4997C7.88153 16.7035 7.46026 16.8087 6.97559 16.8087C6.49189 16.8087 6.06116 16.7039 5.67748 16.4985C5.31044 16.2771 5.0263 15.9852 4.82073 15.6203C4.63049 15.2373 4.53123 14.788 4.53123 14.2652V5.99812ZM44.6067 5.99812H40.7924V20.0528H44.6067V5.99812ZM69.0311 9.74423C69.5616 9.41078 70.1617 9.24215 70.8393 9.24215C71.5374 9.24215 72.1375 9.40446 72.6493 9.72061C73.1637 10.0383 73.5668 10.4851 73.8589 11.0693L73.8632 11.0773C74.1689 11.6429 74.325 12.2899 74.325 13.0254C74.325 13.7786 74.1684 14.4336 73.8631 14.9984L73.8604 15.0037C73.5689 15.5714 73.1656 16.0114 72.6493 16.3303C72.1375 16.6464 71.5374 16.8087 70.8393 16.8087C70.1591 16.8087 69.5573 16.647 69.0261 16.3284C68.4933 16.0087 68.0744 15.5682 67.7673 15.0011C67.4776 14.4359 67.3288 13.7797 67.3288 13.0254C67.3288 12.2703 67.4779 11.6233 67.7665 11.0759C68.0737 10.5082 68.493 10.0673 69.0262 9.74735L69.0311 9.74423Z' fill='white'/%3E%3C/svg%3E%0A"
                     alt="UMIND" class="black">
                <img src="data:image/svg+xml,%3Csvg width='70' height='19' viewBox='0 0 70 19' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M69.123 0.75H65.7546V6.28984C65.4888 6.07273 65.1935 5.8846 64.8692 5.72552C64.1286 5.34042 63.286 5.15126 62.3478 5.15126C61.1805 5.15126 60.1136 5.43993 59.1531 6.01927L59.1516 6.0202C58.2098 6.59741 57.4646 7.37324 56.9184 8.34426C56.37 9.31924 56.0981 10.4131 56.0981 11.62C56.0981 12.8128 56.3703 13.906 56.9176 14.8942C57.4636 15.88 58.2089 16.6639 59.1516 17.2416L59.1541 17.2432C60.1015 17.8086 61.1757 18.0887 62.3697 18.0887C63.2644 18.0887 64.096 17.9141 64.8609 17.5622L64.8646 17.5604C65.2546 17.3732 65.6027 17.1455 65.9078 16.8774V17.8259H69.123V0.75ZM39.5098 1.01276H36.1413V4.57832H39.5098V1.01276ZM23.9385 5.96153C24.3231 6.2255 24.6435 6.53149 24.8981 6.87887C25.192 6.49266 25.5384 6.17029 25.938 5.91424C26.7119 5.40389 27.5996 5.15126 28.5924 5.15126C29.4774 5.15126 30.2729 5.34994 30.9718 5.75352C31.6835 6.15599 32.2413 6.72204 32.6426 7.44706C33.046 8.16131 33.2437 8.98561 33.2437 9.91201V17.8259H29.8752V10.5908C29.8752 10.095 29.7857 9.68256 29.6169 9.34502C29.4464 9.00403 29.2147 8.74887 28.9223 8.57089L28.9157 8.56674C28.6281 8.3792 28.2692 8.27889 27.826 8.27889C27.4157 8.27889 27.0611 8.37755 26.7542 8.56934L26.7477 8.57328C26.4413 8.752 26.2042 9.00682 26.0351 9.34502C25.8664 9.68256 25.7769 10.095 25.7769 10.5908V17.8259H22.4084V10.5908C22.4084 10.095 22.3189 9.68256 22.1501 9.34502C21.981 9.00682 21.7439 8.752 21.4376 8.57328L21.427 8.56674C21.1382 8.37841 20.786 8.27889 20.3592 8.27889C19.9489 8.27889 19.5942 8.37755 19.2874 8.56934L19.2808 8.57328C18.9745 8.752 18.7374 9.00682 18.5683 9.34502C18.3995 9.68256 18.31 10.095 18.31 10.5908V17.8259H14.9416V5.41403H18.1349V6.35149C18.3163 6.15182 18.5235 5.97643 18.7567 5.82613C19.4594 5.37328 20.2816 5.15126 21.2132 5.15126C22.2373 5.15126 23.1488 5.41963 23.9385 5.96153ZM46.5846 5.7549C46.2961 5.92274 46.042 6.12498 45.8224 6.36072V5.41403H42.6291V17.8259H45.9976V10.5908C45.9976 10.0977 46.0934 9.6877 46.2743 9.35174C46.4568 9.01268 46.7082 8.75598 47.0303 8.57556L47.0367 8.57171C47.3591 8.3783 47.7299 8.27889 48.1562 8.27889C48.599 8.27889 48.9673 8.37933 49.2717 8.56958L49.2822 8.57546C49.6044 8.75588 49.8556 9.01268 50.0382 9.35174C50.2191 9.6877 50.3149 10.0977 50.3149 10.5908V17.8259H53.6834V9.91201C53.6834 8.98559 53.4857 8.16127 53.0823 7.44702C52.6802 6.72062 52.114 6.15445 51.3876 5.75238C50.674 5.34926 49.8572 5.15126 48.9445 5.15126C48.0596 5.15126 47.2703 5.34996 46.5846 5.7549ZM52.8641 7.56905L53.0817 7.44604L53.0823 7.44702L53.0828 7.44804L52.8641 7.56905ZM4.11849 5.41403H0.75V12.9557C0.75 13.9635 0.930537 14.8559 1.30011 15.6258L1.30192 15.6294C1.68704 16.3997 2.23698 17.005 2.95021 17.4391L2.95225 17.4403C3.6826 17.8754 4.53108 18.0887 5.48885 18.0887C6.37185 18.0887 7.15355 17.8981 7.82514 17.5079C8.11413 17.3436 8.36881 17.1449 8.58907 16.9127V17.8259H11.8043V5.41403H8.43579V12.6491C8.43579 13.1422 8.34002 13.5522 8.15912 13.8882C7.97638 14.2276 7.72417 14.4928 7.39986 14.6882C7.07719 14.8681 6.70516 14.961 6.27714 14.961C5.84998 14.961 5.46959 14.8685 5.13076 14.6871C4.80661 14.4915 4.55569 14.2338 4.37414 13.9116C4.20614 13.5733 4.11849 13.1765 4.11849 12.7148V5.41403ZM39.5098 5.41403H36.1413V17.8259H39.5098V5.41403ZM61.0794 8.72227C61.5479 8.4278 62.0778 8.27889 62.6762 8.27889C63.2928 8.27889 63.8227 8.42222 64.2747 8.70142C64.729 8.98201 65.085 9.37659 65.3429 9.89249L65.3467 9.89951C65.6167 10.399 65.7546 10.9704 65.7546 11.62C65.7546 12.2851 65.6162 12.8636 65.3466 13.3623L65.3442 13.367C65.0868 13.8683 64.7307 14.2569 64.2747 14.5385C63.8227 14.8177 63.2928 14.961 62.6762 14.961C62.0756 14.961 61.5441 14.8183 61.075 14.5368C60.6045 14.2545 60.2345 13.8655 59.9633 13.3647C59.7075 12.8655 59.576 12.2861 59.576 11.62C59.576 10.9531 59.7077 10.3817 59.9626 9.89831C60.2339 9.39695 60.6042 9.00757 61.0751 8.72504L61.0794 8.72227Z' fill='%23121212'/%3E%3C/svg%3E%0A"
                     alt="UMIND" class="inner">
                <?php if (!is_front_page()) { ?>
            </a>
        <?php } ?>
        </div>
        <?php
        wp_nav_menu(array(
            'menu' => 'main_menu',
            'menu_class' => 'header__menu',
            'container' => false,
            'walker' => new Walker_Menu
        ));

        if (!empty($fields['button'])) { ?>
            <a href="/contact-us" class="header__button"><?php echo $fields['button']; ?></a>
        <?php } ?>
        <div class="header__burger">
            <span></span>
            <span></span>

        </div>
    </div>
</header>
<main>
