<?php

class Api_React
{

    public function __construct()
    {
        /* Register function to run at rest_api_init hook */
        add_action('rest_api_init', function () {
            /* /wp-json/react/v2/data */
            register_rest_route('react/v2', '/data', array(
                'methods' => 'GET',
                'callback' => array($this, 'react_data'),
                'permission_callback' => false,
                'args' => array(
                    'id' => array(
                        'validate_callback' => function ($param, $request, $key) {
                            return is_numeric($param);
                        }
                    ),
                )
            ));
        });
    }

    public static function react_data(): array
    {
        $default_lang = apply_filters('wpml_default_language', NULL);

        if (empty($default_lang)) {
            $lang = 'default';
        } else {
            $languages = apply_filters('wpml_active_languages', NULL);
            $request_lang = $_GET['lang'] ?? $default_lang;
            $lang = array_key_exists($request_lang, $languages) ? $request_lang : $default_lang;
        }

        $react_data = get_transient('react_data_' . $lang);

        if ($react_data === false) {

            $menu_items = wp_get_nav_menu_items('Header menu');
            $menu = array();

            foreach ($menu_items as $menu_item) {
                $item['title'] = $menu_item->title;
                $item['url'] = $menu_item->url;

                $menu[] = $item;
            }

            $react_data['header'] = get_field('header', 'options');

            $react_data['header']['menu'] = $menu;

            $react_data['footer'] = get_field('footer', 'options');
            set_transient('react_data_' . $lang, $react_data, HOUR_IN_SECONDS);
        }

        return $react_data;
    }

}

new Api_React();
