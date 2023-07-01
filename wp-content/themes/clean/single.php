<?php
get_header();
?>
    <div class="container">
        <div id="primary" class="content-area">
            <main id="main" class="site-main" role="main">

                <?php while (have_posts()) : the_post(); ?>

                    <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                        <header class="entry-header">
                            <h1 class="entry-title"><?php the_title(); ?></h1>
                        </header>

                        <div class="entry-content">
                            <?php if (has_post_thumbnail()) { ?>
                                <div class="post-thumbnail">
                                    <?php the_post_thumbnail(); ?>
                                </div>
                            <?php } ?>

                            <div class="row">
                                <div class="column entry-content__left">
                                    <?php the_content(); ?>
                                </div>
                                <div class="column entry-content__right">
                                    <?php get_template_part('custom-sidebar-block'); ?>
                                </div>
                            </div>
                        </div>

                        <footer class="entry-footer">
                            <?php
                            wp_link_pages(array(
                                'before' => '<div class="page-links">' . esc_html__('Pages:', 'your-theme'),
                                'after' => '</div>',
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

                <div class="entry-content__link">
                    <a href="/blog/">Back all articles</a>
                </div>

                <div class="more__posts">
                    <?php
                    $args = array(
                        'post_type' => 'post',
                        'post_status' => 'publish',
                        'posts_per_page' => 3,
                        'post__not_in' => array(get_the_ID()),
                    );
                    $query = new WP_Query($args);

                    if ($query->have_posts()) :
                        while ($query->have_posts()) : $query->the_post();
                            ?>
                            <div class="columns taxonomy-post">
                                <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                                    <?php if (has_post_thumbnail()) { ?>
                                        <div class="post-thumbnail">
                                            <a href="<?php the_permalink(); ?>">
                                                <?php the_post_thumbnail('large'); ?>
                                            </a>
                                        </div>
                                    <?php } ?>
                                    <header class="entry-header">
                                        <?php
                                        $terms = get_the_terms(get_the_ID(), 'category');
                                        if ($terms && !is_wp_error($terms)) {
                                            $term_links = array();
                                            foreach ($terms as $term) {
                                                $term_links[] = '<a href="' . esc_url(get_term_link($term)) . '">' . $term->name . '</a>';
                                            }
                                            $term_list = implode(' | ', $term_links);
                                            echo '<div class="entry-terms">' . $term_list . '</div>';
                                        }
                                        ?>
                                        <h2 class="entry-title"><a href="<?php the_permalink(); ?>"
                                                                   target="_blank"><?php the_title(); ?></a></h2>
                                    </header>
                                    <div class="entry-content">
                                        <?php echo wp_trim_words(get_the_excerpt(), 15, '...'); ?>
                                        <div class="entry-meta">
                                            <span class="entry-date"><?php the_time('F j, Y'); ?></span>
                                        </div>
                                    </div>
                                    <a class="read-more-link" href="<?php the_permalink(); ?>"
                                       target="_blank">Read more</a>
                                </article>
                            </div>
                        <?php
                        endwhile;
                        wp_reset_postdata();
                    else :
                        get_template_part('template-parts/content', 'none');
                    endif;
                    ?>
                </div>

            </main>
        </div>
    </div>

<?php
get_footer(); ?>
