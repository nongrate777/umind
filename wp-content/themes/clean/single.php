<?php get_header(); ?>
<div class="container">
    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">

            <?php while (have_posts()) : the_post(); ?>

                <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                    <header class="entry-header">
                        <h1 class="entry-title"><?php the_title(); ?></h1>
                    </header>

                    <div class="entry-content">
                        <?php
                        if (has_post_thumbnail()) {
                            the_post_thumbnail();
                        }
                        ?>
                        <?php the_content(); ?>
                    </div>

                    <footer class="entry-footer">
                        <?php
                        wp_link_pages(array(
                            'before' => '<div class="page-links">' . esc_html__('Pages:', 'your-theme'),
                            'after'  => '</div>',
                        ));
                        ?>
                    </footer>
                </article>

                <?php
                if (comments_open() || get_comments_number()) {
                    comments_template();
                }
                ?>

            <?php endwhile; ?>

        </main>
    </div>
</div>
<?php get_sidebar(); ?>
<?php get_footer(); ?>
