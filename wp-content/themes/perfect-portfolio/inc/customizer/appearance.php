<?php
/**
 * Perfect Portfolio Appearance Settings
 *
 * @package Perfect_Portfolio
 */
if ( ! function_exists( 'perfect_portfolio_customize_register_appearance' ) ) :

function perfect_portfolio_customize_register_appearance( $wp_customize ) {
    
    /** Appearance Settings */
    $wp_customize->add_panel( 
        'appearance_settings',
         array(
            'priority'    => 50,
            'capability'  => 'edit_theme_options',
            'title'       => __( 'Appearance Settings', 'perfect-portfolio' ),
            'description' => __( 'Customize Typography, Header Image & Background Image', 'perfect-portfolio' ),
        ) 
    );
    
    /** Typography */
    $wp_customize->add_section(
        'typography_settings',
        array(
            'title'    => __( 'Typography', 'perfect-portfolio' ),
            'priority' => 10,
            'panel'    => 'appearance_settings',
        )
    );
    
    /** Primary Font */
    $wp_customize->add_setting(
		'primary_font',
		array(
			'default'			=> 'Poppins',
			'sanitize_callback' => 'perfect_portfolio_sanitize_select'
		)
	);

	$wp_customize->add_control(
		new Perfect_Portfolio_Select_Control(
    		$wp_customize,
    		'primary_font',
    		array(
                'label'	      => __( 'Primary Font', 'perfect-portfolio' ),
                'description' => __( 'Primary font of the site.', 'perfect-portfolio' ),
    			'section'     => 'typography_settings',
    			'choices'     => perfect_portfolio_get_all_fonts(),	
     		)
		)
	);

    $wp_customize->add_setting(
        'ed_localgoogle_fonts',
        array(
            'default'           => false,
            'sanitize_callback' => 'perfect_portfolio_sanitize_checkbox',
        )
    );
    
    $wp_customize->add_control(
        'ed_localgoogle_fonts',
        array(
            'label'   => __( 'Load Google Fonts Locally', 'perfect-portfolio' ),
            'section' => 'typography_settings',
            'type'    => 'checkbox',
        )
    );

    $wp_customize->add_setting(
        'ed_preload_local_fonts',
        array(
            'default'           => false,
            'sanitize_callback' => 'perfect_portfolio_sanitize_checkbox',
        )
    );
    
    $wp_customize->add_control(
        'ed_preload_local_fonts',
        array(
            'label'           => __( 'Preload Local Fonts', 'perfect-portfolio' ),
            'section'         => 'typography_settings',
            'type'            => 'checkbox',
            'active_callback' => 'perfect_portfolio_flush_fonts_callback'
        )
    );
    

    $wp_customize->add_setting(
        'flush_google_fonts',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses',
        )
    );

    $wp_customize->add_control(
        'flush_google_fonts',
        array(
            'label'       => __( 'Flush Local Fonts Cache', 'perfect-portfolio' ),
            'description' => __( 'Click the button to reset the local fonts cache.', 'perfect-portfolio' ),
            'type'        => 'button',
            'settings'    => array(),
            'section'     => 'typography_settings',
            'input_attrs' => array(
                'value' => __( 'Flush Local Fonts Cache', 'perfect-portfolio' ),
                'class' => 'button button-primary flush-it',
            ),
            'active_callback' => 'perfect_portfolio_flush_fonts_callback'
        )
    );


    /** Note */
    $wp_customize->add_setting(
        'typography_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'typography_text',
            array(
                'section'     => 'typography_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'typography_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'typography_image_settings',
            array(
                'section'     => 'typography_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/typography.png',
                ),
            )
        )
    );
    
    /** Move Background Image section to appearance panel */
    $wp_customize->get_section( 'background_image' )->panel    = 'appearance_settings';
    $wp_customize->get_section( 'background_image' )->priority = 30;
    $wp_customize->get_section( 'colors' )->panel              = 'appearance_settings';
    $wp_customize->get_section( 'colors' )->priority           = 35;

    /** Note */
    $wp_customize->add_setting(
        'colors_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'colors_text',
            array(
                'section'     => 'colors',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'colors_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'colors_image_settings',
            array(
                'section'     => 'colors',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/colors.png',
                ),
            )
        )
    );
    
}
endif;
add_action( 'customize_register', 'perfect_portfolio_customize_register_appearance' );

function perfect_portfolio_flush_fonts_callback( $control ){
    $ed_localgoogle_fonts   = $control->manager->get_setting( 'ed_localgoogle_fonts' )->value();
    $control_id   = $control->id;
    
    if ( $control_id == 'flush_google_fonts' && $ed_localgoogle_fonts ) return true;
    if ( $control_id == 'ed_preload_local_fonts' && $ed_localgoogle_fonts ) return true;
    return false;
}