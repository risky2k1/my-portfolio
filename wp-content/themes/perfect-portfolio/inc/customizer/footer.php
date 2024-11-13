<?php
/**
 * Perfect Portfolio Footer Setting
 *
 * @package Perfect_Portfolio
 */
if ( ! function_exists( 'perfect_portfolio_customize_register_footer' ) ) :

function perfect_portfolio_customize_register_footer( $wp_customize ) {
    
    $wp_customize->add_section(
        'footer_settings',
        array(
            'title'      => __( 'Footer Settings', 'perfect-portfolio' ),
            'priority'   => 199,
            'capability' => 'edit_theme_options',
        )
    );
    
    /** Footer Copyright */
    $wp_customize->add_setting(
        'footer_copyright',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post',
            'transport'         => 'postMessage'
        )
    );
    
    $wp_customize->add_control(
        'footer_copyright',
        array(
            'label'         => __( 'Footer Copyright Text', 'perfect-portfolio' ),
            'description'   => esc_html__( 'Add Copyright Text Here.', 'perfect-portfolio' ),
            'section'       => 'footer_settings',
            'type'          => 'textarea',
        )
    );
    
    $wp_customize->selective_refresh->add_partial( 'footer_copyright', array(
        'selector' => '.bottom-footer .tc-wrapper .copyright .copyright-text',
        'render_callback' => 'perfect_portfolio_get_footer_copyright',
    ) );


    /** Note */
    $wp_customize->add_setting(
        'footer_text',
        array(
            'default'           => '',
            'sanitize_callback' => 'wp_kses_post' 
        )
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Note_Control( 
            $wp_customize,
            'footer_text',
            array(
                'section'     => 'footer_settings',
                'description' => sprintf( __( '%1$sThis feature is available in Pro version.%2$s %3$sUpgrade to Pro%4$s ', 'perfect-portfolio' ),'<div class="featured-pro"><span>', '</span>', '<a href="https://rarathemes.com/wordpress-themes/perfect-portfolio-pro/?utm_source=perfect_portfolio&utm_medium=customizer&utm_campaign=upgrade_to_pro" target="_blank">', '</a></div>' ),
            )
        )
    );

    $wp_customize->add_setting( 
        'footer_image_settings', 
        array(
            'default'           => 'one',
            'sanitize_callback' => 'perfect_portfolio_sanitize_radio',
        ) 
    );

    $wp_customize->add_control(
        new Perfect_Portfolio_Radio_Image_Control(
            $wp_customize,
            'footer_image_settings',
            array(
                'section'     => 'footer_settings',
                'feat_class' => 'upg-to-pro',
                'choices'     => array(
                    'one'       => get_template_directory_uri() . '/images/pro/footer.png',
                ),
            )
        )
    );
        
}
endif;
add_action( 'customize_register', 'perfect_portfolio_customize_register_footer' );