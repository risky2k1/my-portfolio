<?php
/**
 * Perfect Portfolio Front Page Settings
 *
 * @package Perfect_Portfolio
 */
if ( ! function_exists( 'perfect_portfolio_customize_register_frontpage' ) ) :

function perfect_portfolio_customize_register_frontpage( $wp_customize ) {
	
    /** Front Page Settings */
    $wp_customize->add_panel( 
        'frontpage_settings',
         array(
            'priority'    => 60,
            'capability'  => 'edit_theme_options',
            'title'       => __( 'Front Page Settings', 'perfect-portfolio' ),
            'description' => __( 'Customize About, Gallery, Services, Call To Action, Latest Posts, settings.', 'perfect-portfolio' ),
        ) 
    );

    /** Gallery Section */
    $wp_customize->add_section(
        'gallery_section',
        array(
            'title'    => __( 'Portfolio Section', 'perfect-portfolio' ),
            'priority' => 25,
            'panel'    => 'frontpage_settings',
        )
    );

    /** Gallery Options */
    $wp_customize->add_setting(
        'ed_gallery_section',
        array(
            'default'           => true,
            'sanitize_callback' => 'perfect_portfolio_sanitize_checkbox'
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Toggle_Control(
            $wp_customize,
            'ed_gallery_section',
            array(
                'label'       => __( 'Enable Portfolio Section', 'perfect-portfolio' ),
                'description' => __( 'Enable to show Portfolio section.', 'perfect-portfolio' ),
                'section'     => 'gallery_section',
            )            
        )
    );
    
    /** Number of portfolio Excerpt */
    $wp_customize->add_setting( 
        'no_of_portfolio', 
        array(
            'default'           => 9,
            'sanitize_callback' => 'perfect_portfolio_sanitize_number_absint'
        ) 
    );
    
    $wp_customize->add_control(
        new Perfect_Portfolio_Slider_Control( 
            $wp_customize,
            'no_of_portfolio',
            array(
                'section'     => 'gallery_section',
                'label'       => __( 'Number Of Portfolio', 'perfect-portfolio' ),
                'description' => __( 'Set number of latest portfolios to show in portfolio section.', 'perfect-portfolio' ),
                'choices'     => array(
                    'min'           => 6,
                    'max'           => 12,
                    'step'          => 3,
                ),  
            )
        )
    );
    /** Portfolio Settings Ends */
  
    /** View All Label */
    $wp_customize->add_setting(
        'gallery_view_all',
        array(
            'default'           => __( 'View More', 'perfect-portfolio' ),
            'sanitize_callback' => 'sanitize_text_field',
            'transport'         => 'postMessage'
        )
    );
    
    $wp_customize->add_control(
        'gallery_view_all',
        array(
            'label'           => __( 'View More Label', 'perfect-portfolio' ),
            'section'         => 'gallery_section',
            'type'            => 'text',
            'active_callback' => 'perfect_portfolio_gallery_view_all_ac'
        )
    );
    
    $wp_customize->selective_refresh->add_partial( 'gallery_view_all', array(
        'selector' => '.gallery-section .tc-wrapper .btn-readmore',
        'render_callback' => 'perfect_portfolio_get_gallery_view_all_btn',
    ) ); 

    /** View All Url */
    $wp_customize->add_setting(
        'gallery_view_all_url',
        array(
            'default'           => '#',
            'sanitize_callback' => 'esc_url_raw',
        )
    );
    
    $wp_customize->add_control(
        'gallery_view_all_url',
        array(
            'label'           => __( 'View More Label Url', 'perfect-portfolio' ),
            'section'         => 'gallery_section',
            'type'            => 'url',
            'active_callback' => 'perfect_portfolio_gallery_view_all_ac'
        )
    );
    /** Gallery Section Ends */    
     
    /** Blog Section */
    $wp_customize->add_section(
        'blog_section',
        array(
            'title'    => __( 'Blog Section', 'perfect-portfolio' ),
            'priority' => 77,
            'panel'    => 'frontpage_settings',
        )
    );

    /** Blog Options */
    $wp_customize->add_setting(
        'ed_blog_section',
        array(
            'default'           => true,
            'sanitize_callback' => 'perfect_portfolio_sanitize_checkbox'
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Toggle_Control(
            $wp_customize,
            'ed_blog_section',
            array(
                'label'       => __( 'Enable Blog Section', 'perfect-portfolio' ),
                'description' => __( 'Enable to show blog section.', 'perfect-portfolio' ),
                'section'     => 'blog_section',
            )            
        )
    );

    /** Blog title */
    $wp_customize->add_setting(
        'blog_section_title',
        array(
            'default'           => __( 'Articles', 'perfect-portfolio' ),
            'sanitize_callback' => 'sanitize_text_field',
            'transport'         => 'postMessage'
        )
    );
    
    $wp_customize->add_control(
        'blog_section_title',
        array(
            'section' => 'blog_section',
            'label'   => __( 'Blog Title', 'perfect-portfolio' ),
            'type'    => 'text',
            'priority' => 60,
        )
    );

    // Selective refresh for blog title.
    $wp_customize->selective_refresh->add_partial( 'blog_section_title', array(
        'selector'            => '.article-section .tc-wrapper h2.section-title',
        'render_callback'     => 'perfect_portfolio_blog_section_title_selective_refresh',
        'container_inclusive' => false,
        'fallback_refresh'    => true,
    ) );
    
    /** View All Label */
    $wp_customize->add_setting(
        'blog_view_all',
        array(
            'default'           => __( 'View All', 'perfect-portfolio' ),
            'sanitize_callback' => 'sanitize_text_field',
            'transport'         => 'postMessage'
        )
    );
    
    $wp_customize->add_control(
        'blog_view_all',
        array(
            'label'           => __( 'View All Label', 'perfect-portfolio' ),
            'section'         => 'blog_section',
            'type'            => 'text',
            'active_callback' => 'perfect_portfolio_blog_view_all_ac'
        )
    );
    
    $wp_customize->selective_refresh->add_partial( 'blog_view_all', array(
        'selector' => '.article-section .tc-wrapper .btn-readmore',
        'render_callback' => 'perfect_portfolio_get_blog_view_all_btn',
    ) ); 
    /** Blog Section Ends **/

    /** Skill Section Start **/
    $wp_customize->add_section( 
        'skill_section_settings',
            array(
            'title'    => __( 'Skills Section', 'perfect-portfolio' ),
            'priority' => 30,
            'panel'    => 'frontpage_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'skill_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'skill_text',
            array(
                'section'     => 'skill_section_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'skill_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
            'transport'         => 'postMessage'
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'skill_image_settings',
            array(
                'section'     => 'skill_section_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/skills-design.png',
                    'two'       => get_template_directory_uri() . '/images/pro/skills.png',
                ),
            )
        )
    );
        
     /** Awards Section Start **/
    $wp_customize->add_section( 
        'award_section_settings',
            array(
            'title'    => __( 'Awards Section', 'perfect-portfolio' ),
            'priority' => 30,
            'panel'    => 'frontpage_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'award_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'award_text',
            array(
                'section'     => 'award_section_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'award_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'award_image_settings',
            array(
                'section'     => 'award_section_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/awards.png',
                ),
            )
        )
    );

    /** Clients Section Start **/
    $wp_customize->add_section( 
        'client_section_settings',
            array(
            'title'    => __( 'Clients Section', 'perfect-portfolio' ),
            'priority' => 30,
            'panel'    => 'frontpage_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'client_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'client_text',
            array(
                'section'     => 'client_section_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'client_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
            'transport'         => 'postMessage'
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'client_image_settings',
            array(
                'section'     => 'client_section_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/clients-design.png',
                    'two'       => get_template_directory_uri() . '/images/pro/clients.png',
                ),
            )
        )
    );

     /** Stats Section Start **/
     $wp_customize->add_section( 
        'stat_section_settings',
            array(
            'title'    => __( 'Stats Section', 'perfect-portfolio' ),
            'priority' => 30,
            'panel'    => 'frontpage_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'stat_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'stat_text',
            array(
                'section'     => 'stat_section_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'stat_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
            'transport'         => 'postMessage'
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'stat_image_settings',
            array(
                'section'     => 'stat_section_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/stats-section.png',
                    'two'       => get_template_directory_uri() . '/images/pro/stats.png',
                ),
            )
        )
    );

     /** Testimonials Section Start **/
     $wp_customize->add_section( 
        'testimonials_section_settings',
            array(
            'title'    => __( 'Testimonials Section', 'perfect-portfolio' ),
            'priority' => 30,
            'panel'    => 'frontpage_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'testimonials_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'testimonials_text',
            array(
                'section'     => 'testimonials_section_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'testimonials_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'testimonials_image_settings',
            array(
                'section'     => 'testimonials_section_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/testimonials.png',
                ),
            )
        )
    );

     /** Simple CTA Start **/
     $wp_customize->add_section( 
        'simple_cta_section_settings',
            array(
            'title'    => __( 'Simple CTA Section', 'perfect-portfolio' ),
            'priority' => 30,
            'panel'    => 'frontpage_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'simple_cta_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'simple_cta_text',
            array(
                'section'     => 'simple_cta_section_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'simple_cta_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'simple_cta_image_settings',
            array(
                'section'     => 'simple_cta_section_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/simple-cta.png',
                ),
            )
        )
    );

     /** Google Map Start **/
     $wp_customize->add_section( 
        'google_map_section_settings',
            array(
            'title'    => __( 'Google Map Section', 'perfect-portfolio' ),
            'priority' => 30,
            'panel'    => 'frontpage_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'google_map_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'google_map_text',
            array(
                'section'     => 'google_map_section_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'google_map_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'google_map_image_settings',
            array(
                'section'     => 'google_map_section_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/google-map.png',
                ),
            )
        )
    );

    /** Contact Section Start **/
    $wp_customize->add_section( 
        'contact_section_settings',
            array(
            'title'    => __( 'Contact Section', 'perfect-portfolio' ),
            'priority' => 30,
            'panel'    => 'frontpage_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'contact_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'contact_text',
            array(
                'section'     => 'contact_section_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'contact_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
            'transport'         => 'postMessage'
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'contact_image_settings',
            array(
                'section'     => 'contact_section_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/contact-design.png',
                    'two'       => get_template_directory_uri() . '/images/pro/contact.png',
                ),
            )
        )
    );

     /** Sort Front Page Start **/
     $wp_customize->add_section( 
        'sort_section_settings',
            array(
            'title'    => __( 'Sort Front Page Section', 'perfect-portfolio' ),
            'priority' => 80,
            'panel'    => 'frontpage_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'sort_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'sort_text',
            array(
                'section'     => 'sort_section_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'sort_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'sort_image_settings',
            array(
                'section'     => 'sort_section_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/sort.png',
                ),
            )
        )
    );
    
}
endif;
add_action( 'customize_register', 'perfect_portfolio_customize_register_frontpage' );