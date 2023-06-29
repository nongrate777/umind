<?php
$fields = get_fields('376');
get_header();
?>

<section class="white">
    <div class="container">
        <?php if (!empty($fields['title'])) { ?>
            <h2><?php echo wp_kses_post($fields['title']); ?></h2>
        <?php } ?>
        <?php if (!empty($fields['description'])) { ?>
            <div class="white__description"><?php echo wp_kses_post($fields['description']); ?></div>
        <?php } ?>
    </div>
</section>

<div class="container">
    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">

            <?php if (have_posts()) : ?>

                <div class="row">
                    <?php while (have_posts()) : the_post(); ?>
                        <div class="column">
                            <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                                <?php if (has_post_thumbnail()) { ?>
                                    <div class="post-thumbnail">
                                        <a href="<?php the_permalink(); ?>">
                                            <?php the_post_thumbnail('large'); ?>
                                        </a>
                                    </div>
                                <?php } ?>
                                <header class="entry-header">
                                    <h2 class="entry-title"><a
                                                href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>

                                </header>
                                <div class="entry-content">
                                    <?php echo wp_trim_words(get_the_excerpt(), 15, '...'); ?>
                                    <div class="entry-meta">
                                        <span class="entry-date"><?php the_time('F j, Y'); ?></span>
                                    </div>
                                </div>
                                <a class="read-more-link" href="<?php the_permalink(); ?>">Read more</a>
                            </article>
                        </div>
                    <?php endwhile; ?>
                </div>

                <?php the_posts_navigation(); ?>
                <?php wp_reset_postdata(); ?>

            <?php else : ?>

                <?php get_template_part('template-parts/content', 'none'); ?>

            <?php endif; ?>

        </main>
    </div>
</div>

<?php get_footer(); ?>
