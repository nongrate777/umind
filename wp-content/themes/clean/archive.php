<?php get_header(); ?>
    <div class="container">
        <div id="primary" class="content-area">
            <main id="main" class="site-main" role="main">

                <?php if (have_posts()) : ?>

                    <header class="page-header">
                        <h1 class="page-title"><?php
                            if (is_category()) {
                                single_cat_title();
                            } elseif (is_tag()) {
                                single_tag_title();
                            } elseif (is_author()) {
                                the_post();
                                echo 'Author Archives: ' . get_the_author();
                                rewind_posts();
                            } elseif (is_day()) {
                                echo 'Daily Archives: ' . get_the_date();
                            } elseif (is_month()) {
                                echo 'Monthly Archives: ' . get_the_date('F Y');
                            } elseif (is_year()) {
                                echo 'Yearly Archives: ' . get_the_date('Y');
                            } else {
                                echo 'Archives:';
                            }
                            ?></h1>
                    </header>

                    <div class="row">
                        <?php while (have_posts()) : the_post(); ?>
                            <div class="column">
                                <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                                    <?php if (has_post_thumbnail()) { ?>
                                        <div class="post-thumbnail">
                                            <a href="<?php the_permalink(); ?>">
                                                <?php the_post_thumbnail('medium'); ?>
                                            </a>
                                        </div>
                                    <?php } ?>
                                    <header class="entry-header">
                                        <h2 class="entry-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                                        <div class="entry-meta">
                                            <span class="entry-date"><?php the_date(); ?></span>
                                        </div>
                                    </header>
                                </article>
                            </div>
                        <?php endwhile; ?>
                    </div>

                    <?php the_posts_navigation(); ?>

                <?php else : ?>

                    <?php get_template_part('template-parts/content', 'none'); ?>

                <?php endif; ?>

            </main>
        </div>
    </div>
<?php get_sidebar(); ?>
<?php get_footer(); ?>
