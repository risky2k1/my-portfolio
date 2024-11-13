<?php
/**
 * Perfect Portfolio Layout Settings
 *
 * @package Perfect_Portfolio
 */
if ( ! function_exists( 'perfect_portfolio_customize_register_layout' ) ) :

function perfect_portfolio_customize_register_layout( $wp_customize ) {
	
    /** Layout Settings */
    $wp_customize->add_panel(
        'layout_settings',
        array(
            'title'    => __( 'Layout Settings', 'perfect-portfolio' ),
            'priority' => 55,
        )
    );
    
    /** Banner Layout **/
    $wp_customize->add_section( 
        'banner_layout_settings',
            array(
            'title'    => __( 'Banner Layout', 'perfect-portfolio' ),
            'priority' => 10,
            'panel'    => 'layout_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'banner_layout_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'banner_layout_text',
            array(
                'section'     => 'banner_layout_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'banner_layout_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'banner_layout_image_settings',
            array(
                'section'     => 'banner_layout_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/banner-layout.png',
                ),
            )
        )
    );

    /** Homepage Portfolio Layout **/
    $wp_customize->add_section( 
        'homepage_layout_settings',
            array(
            'title'    => __( 'Homepage Portfolio Layout', 'perfect-portfolio' ),
            'priority' => 15,
            'panel'    => 'layout_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'homepage_layout_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'homepage_layout_text',
            array(
                'section'     => 'homepage_layout_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'homepage_layout_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'homepage_layout_image_settings',
            array(
                'section'     => 'homepage_layout_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/portfolio-layout.png',
                ),
            )
        )
    );
    
    /** Portfolio Archive Layout **/
    $wp_customize->add_section( 
        'portfolio_layout_settings',
            array(
            'title'    => __( 'Portfolio Archive Layout', 'perfect-portfolio' ),
            'priority' => 20,
            'panel'    => 'layout_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'portfolio_layout_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'portfolio_layout_text',
            array(
                'section'     => 'portfolio_layout_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'portfolio_layout_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'portfolio_layout_image_settings',
            array(
                'section'     => 'portfolio_layout_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/portfolio-archive.png',
                ),
            )
        )
    );
    
    /** Blog Layout */
    $wp_customize->add_section(
        'blog_layout',
        array(
            'title'    => __( 'Blog Layout', 'perfect-portfolio' ),
            'panel'    => 'layout_settings',
            'priority' => 30,
        )
    );
    
    /** Blog Page layout */
    $wp_customize->add_setting( 
        'blog_page_layout', 
        array(
            'default'           => 'with-masonry-description grid',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio'
        ) 
    );
    
    $wp_customize->add_control(
		new Perfect_Portfolio_Radio_Image_Control(
			$wp_customize,
			'blog_page_layout',
			array(
				'section'	  => 'blog_layout',
				'label'		  => __( 'Blog Page Layout', 'perfect-portfolio' ),
				'description' => __( 'This is the layout for blog index page.', 'perfect-portfolio' ),
				'choices'	  => array(
                    'with-masonry-description grid' => get_template_directory_uri() . '/images/masonry.jpg',
                    'normal-grid-description'    => get_template_directory_uri() . '/images/normal.jpg',
                    'normal-grid-first-large' => get_template_directory_uri() . '/images/first-large.jpg',
				)
			)
		)
	);
    
    /** General Sidebar Layout */
    $wp_customize->add_section(
        'general_layout',
        array(
            'title'    => __( 'General Sidebar Layout', 'perfect-portfolio' ),
            'panel'    => 'layout_settings',
            'priority' => 35,
        )
    );
    
    /** Page Sidebar layout */
    $wp_customize->add_setting( 
        'page_sidebar_layout', 
        array(
            'default'           => 'right-sidebar',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio'
        ) 
    );
    
    $wp_customize->add_control(
		new Perfect_Portfolio_Radio_Image_Control(
			$wp_customize,
			'page_sidebar_layout',
			array(
				'section'	  => 'general_layout',
				'label'		  => __( 'Page Sidebar Layout', 'perfect-portfolio' ),
				'description' => __( 'This is the general sidebar layout for pages. You can override the sidebar layout for individual page in repective page.', 'perfect-portfolio' ),
				'choices'	  => array(
					'no-sidebar'       => get_template_directory_uri() . '/images/1c.jpg',
                    'centered'         => get_template_directory_uri() . '/images/1cc.jpg',
					'left-sidebar'     => get_template_directory_uri() . '/images/2cl.jpg',
                    'right-sidebar'    => get_template_directory_uri() . '/images/2cr.jpg',
				)
			)
		)
	);
    
    /** Post Sidebar layout */
    $wp_customize->add_setting( 
        'post_sidebar_layout', 
        array(
            'default'           => 'right-sidebar',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio'
        ) 
    );
    
    $wp_customize->add_control(
		new Perfect_Portfolio_Radio_Image_Control(
			$wp_customize,
			'post_sidebar_layout',
			array(
				'section'	  => 'general_layout',
				'label'		  => __( 'Post Sidebar Layout', 'perfect-portfolio' ),
				'description' => __( 'This is the general sidebar layout for posts. You can override the sidebar layout for individual post in repective post.', 'perfect-portfolio' ),
				'choices'	  => array(
					'no-sidebar'       => get_template_directory_uri() . '/images/1c.jpg',
                    'centered'         => get_template_directory_uri() . '/images/1cc.jpg',
					'left-sidebar'     => get_template_directory_uri() . '/images/2cl.jpg',
                    'right-sidebar'    => get_template_directory_uri() . '/images/2cr.jpg',
				)
			)
		)
	);  
    
    
    /** Pagination Settings **/
    $wp_customize->add_section( 
        'pagination_settings',
            array(
            'title'    => __( 'Pagination Settings', 'perfect-portfolio' ),
            'priority' => 40,
            'panel'    => 'layout_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'pagination_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'pagination_text',
            array(
                'section'     => 'pagination_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'pagination_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'pagination_image_settings',
            array(
                'section'     => 'pagination_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/pagination.png',
                ),
            )
        )
    );

    /** Misc Settings **/
    $wp_customize->add_section( 
        'misc_settings',
            array(
            'title'    => __( 'Misc Settings', 'perfect-portfolio' ),
            'priority' => 40,
            'panel'    => 'layout_settings',
        ) 
    );

    /** Note */
    $wp_customize->add_setting(
        'misc_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'misc_text',
            array(
                'section'     => 'misc_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'misc_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'misc_image_settings',
            array(
                'section'     => 'misc_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/misc.png',
                ),
            )
        )
    );
}
endif;
add_action( 'customize_register', 'perfect_portfolio_customize_register_layout' );