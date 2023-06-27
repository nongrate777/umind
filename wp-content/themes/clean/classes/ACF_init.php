<?php

class ACF_init
{
    protected static $instance = null;

    public static function instance(): ?ACF_init
    {
        if (null === self::$instance) {
            self::$instance = new self();
        }

        return self::$instance;
    }

    function __construct()
    {
        add_action('acf/init', array($this, 'options_page'));

        add_filter('block_categories_all', array($this, 'register_category'));
        add_action('acf/init', array($this, 'register_blocks'));
    }

    public static function options_page(): void
    {
        acf_add_options_page(array(
            'page_title' => 'Общие поля',
            'menu_title' => 'Общие поля',
            'menu_slug' => 'general-fields',
            'capability' => 'edit_posts',
            'position' => 10
        ));
    }

    public static function register_category($categories)
    {
        $custom_categories = array(
            'slug' => 'custom-layout',
            'title' => 'Блоки'
        );

        array_unshift($categories, $custom_categories);

        return $categories;
    }

    public static function register_blocks(): void
    {
        $blocks = array(
            'banner' => 'Banner Block',
            'accordion' => 'Accordion Block',
            'freelancer' => 'Freelancers Block',
            'freelancer_inner' => 'Freelancer Inner Block',
            'cv' => 'CV Block',
            'technologies' => 'Technologies Block',
            'black' => 'Black Block',
            'green' => 'Green Block',
            'green_inner' => 'Green Inner Block',
            'dev' => 'Developer Block',
            'dev_about' => 'Dev About_Us Block',
            'arrow' => 'Arrow Block',
            'testimonials' => 'Testimonials Block',
            'region' => 'Region Block',
            'white' => 'White Block',
            'contact' => 'Contact Block',
            'green_about' => 'Green about Block',
            'policy' => 'Policy Block'
        );

        foreach ($blocks as $id => $name) {
            acf_register_block_type(
                array(
                    'name' => $id.'_block',
                    'title' => $name,
                    'render_template' => get_template_directory() . '/blocks/'.$id.'/'.$id.'.php',
                    'category' => 'custom-layout'
                )
            );
        }
    }
}

ACF_init::instance();
