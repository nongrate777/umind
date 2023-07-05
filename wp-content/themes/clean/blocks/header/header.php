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
                <img src="data:image/svg+xml,%3Csvg width='102' height='26' viewBox='0 0 102 26' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M14.1276 23.9837L25.4591 17.3114C26.5278 16.6821 26.5393 15.1405 25.4802 14.4953L13.3164 7.08592C12.2912 6.46139 11.0068 6.44634 9.96716 7.04668L2.55572 11.3265C1.44119 11.9701 1.46729 13.5877 2.60201 14.195L10.0177 18.1639C11.0327 18.7072 12.2582 18.679 13.2472 18.0896L25.4958 10.7899C26.5733 10.1478 26.5615 8.58343 25.4745 7.95758L13.2332 0.909559C12.2507 0.34387 11.0458 0.325203 10.0463 0.860181L2.63487 4.82684C1.49324 5.43785 1.4756 7.06837 2.60374 7.70394L9.98205 11.8607C11.0146 12.4425 11.6534 13.5356 11.6534 14.7207V22.5694C11.6534 23.8392 13.0334 24.628 14.1276 23.9837Z' stroke='white' stroke-width='0.656532'/%3E%3Cpath d='M47.7785 19.2617C46.8232 20.1754 45.5495 20.6322 43.9575 20.6322C42.3792 20.6322 41.1056 20.1684 40.1365 19.2409C39.1812 18.3133 38.7036 17.095 38.7036 15.586V9.10697H41.7355V15.233C41.7355 16.036 41.9293 16.6659 42.3169 17.1227C42.7184 17.5657 43.2653 17.7872 43.9575 17.7872C44.6635 17.7872 45.2104 17.5657 45.598 17.1227C45.9995 16.6659 46.2002 16.036 46.2002 15.233V9.10697H49.2321V15.586C49.2321 17.1089 48.7475 18.3341 47.7785 19.2617Z' fill='white'/%3E%3Cpath d='M64.7406 8.83701C65.9035 8.83701 66.8518 9.25233 67.5855 10.083C68.3331 10.9136 68.7069 11.9796 68.7069 13.281V20.3207H65.675V13.7794C65.675 12.2565 65.1074 11.4951 63.9722 11.4951C63.5292 11.4951 63.1416 11.6058 62.8093 11.8273C62.4909 12.035 62.2486 12.3465 62.0825 12.7618C61.9163 13.1771 61.8333 13.6755 61.8333 14.257V20.3207H58.8637V13.7794C58.8637 12.2565 58.3169 11.4951 57.2232 11.4951C56.531 11.4951 55.9911 11.7374 55.6034 12.2219C55.2158 12.7064 55.022 13.3848 55.022 14.257V20.3207H51.9901V9.10697H54.1083L54.6689 10.4983C55.0843 9.98607 55.5827 9.58459 56.1641 9.29387C56.7594 8.9893 57.3824 8.83701 58.0331 8.83701C58.7391 8.83701 59.3759 8.99622 59.9436 9.31463C60.5112 9.63305 60.9542 10.0761 61.2726 10.6437C61.411 10.4499 61.5564 10.2768 61.7087 10.1245C61.861 9.95839 62.0271 9.81302 62.2071 9.68843C62.387 9.54998 62.5739 9.43231 62.7678 9.3354C62.9616 9.22465 63.1623 9.13466 63.37 9.06544C63.5915 8.99622 63.813 8.94084 64.0345 8.89931C64.2699 8.85778 64.5052 8.83701 64.7406 8.83701Z' fill='white'/%3E%3Cpath d='M71.4787 7.6118V4.7876H74.5106V7.6118H71.4787ZM71.4787 20.3207V9.10697H74.5106V20.3207H71.4787Z' fill='white'/%3E%3Cpath d='M83.8166 8.83701C85.0903 8.83701 86.094 9.26618 86.8277 10.1245C87.5753 10.969 87.9491 12.1042 87.9491 13.5302V20.3207H84.9172V14.0078C84.9172 12.3327 84.2665 11.4951 82.9652 11.4951C82.4529 11.4951 82.003 11.6128 81.6154 11.8481C81.2416 12.0835 80.9509 12.4226 80.7432 12.8657C80.5494 13.3087 80.4525 13.8278 80.4525 14.4231V20.3207H77.4206V9.10697H79.4972L80.0994 10.4983C80.3071 10.2353 80.5425 10.0068 80.8055 9.81302C81.0824 9.60536 81.38 9.43231 81.6984 9.29387C82.0169 9.14158 82.3491 9.03083 82.6952 8.96161C83.0552 8.87854 83.429 8.83701 83.8166 8.83701Z' fill='white'/%3E%3Cpath d='M98.9681 5.05756H102V20.3207H99.7573L99.4042 19.3862C98.4075 20.2307 97.2376 20.653 95.8947 20.653C94.7734 20.653 93.7627 20.3969 92.8629 19.8846C91.963 19.3724 91.257 18.6664 90.7447 17.7665C90.2463 16.8528 89.9971 15.8352 89.9971 14.7138C89.9971 13.5925 90.2463 12.5819 90.7447 11.682C91.257 10.7821 91.963 10.0761 92.8629 9.56383C93.7627 9.05159 94.7734 8.79548 95.8947 8.79548C97.03 8.79548 98.0544 9.10005 98.9681 9.70919V5.05756ZM93.9427 16.9151C94.5242 17.4965 95.251 17.7872 96.1232 17.7872C97.0092 17.7872 97.7429 17.4965 98.3244 16.9151C98.9059 16.3198 99.1966 15.586 99.1966 14.7138C99.1966 13.8278 98.9059 13.0941 98.3244 12.5126C97.7429 11.9312 97.0092 11.6404 96.1232 11.6404C95.251 11.6404 94.5242 11.9312 93.9427 12.5126C93.3613 13.0941 93.0705 13.8278 93.0705 14.7138C93.0705 15.5999 93.3613 16.3336 93.9427 16.9151Z' fill='white'/%3E%3C/svg%3E%0A"
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
            <span></span>
        </div>
    </div>
</header>
<main>
