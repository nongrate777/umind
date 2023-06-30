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
    <div class="arrow-up">
        <a href="#wrapper"><img src="<?php echo get_template_directory_uri() . '/sources/images/arrow.png'; ?>"
                                alt="arrow-up"></a>
    </div>


    <div class="container">
        <div id="primary" class="content-area">
            <main id="main" class="site-main" role="main">

                <div class="taxonomy-filter">
                    <ul>
                        <li class="active" data-term="all">All</li> <!-- Добавлено значение "all" для фильтра "All" -->
                        <?php
                        $terms = get_terms('category'); // Change 'category' to your actual taxonomy slug
                        if ($terms && !is_wp_error($terms)) {
                            foreach ($terms as $term) {
                                echo '<li data-term="' . $term->slug . '">' . $term->name . '</li>';
                            }
                        }
                        ?>
                    </ul>
                </div>

                <div class="taxonomy-posts">
                    <?php if (have_posts()) : ?>
                        <?php while (have_posts()) : the_post(); ?>
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
                                        $terms = get_the_terms(get_the_ID(), 'category'); // Change 'category' to your actual taxonomy slug
                                        if ($terms && !is_wp_error($terms)) {
                                            $term_links = array();
                                            foreach ($terms as $term) {
                                                $term_links[] = '<a href="' . esc_url(get_term_link($term)) . '">' . $term->name . '</a>';
                                            }
                                            $term_list = implode(' | ', $term_links);
                                            echo '<div class="entry-terms">' . $term_list . '</div>';
                                        }
                                        ?>
                                        <h2 class="entry-title"><a
                                                    href="<?php the_permalink(); ?>"
                                                    target="_blank"><?php the_title(); ?></a></h2>
                                    </header>
                                    <div class="entry-content">
                                        <?php echo wp_trim_words(get_the_excerpt(), 15, '...'); ?>
                                        <div class="entry-meta">
                                            <span class="entry-date"><?php the_time('F j, Y'); ?></span>
                                        </div>
                                    </div>
                                    <a class="read-more-link" href="<?php the_permalink(); ?>" target="_blank">Read more</a>
                                </article>
                            </div>
                        <?php endwhile; ?>
                    <?php else : ?>
                        <?php get_template_part('template-parts/content', 'none'); ?>
                    <?php endif; ?>
                </div>

                <?php the_posts_navigation(); ?>
                <?php wp_reset_postdata(); ?>

            </main>
        </div>
    </div>

    <script>
        jQuery(document).ready(function ($) {
            $('.taxonomy-filter li').on('click', function () {
                var term = $(this).data('term');

                if (term === 'all') {
                    $('.taxonomy-post').show();
                } else {
                    $('.taxonomy-post').hide();
                    $('.taxonomy-post .entry-terms a[href*="' + term + '"]').closest('.taxonomy-post').show();
                }

                $('.taxonomy-filter li').removeClass('active');
                $(this).addClass('active');
            });
        });
    </script>

<?php get_footer(); ?>
