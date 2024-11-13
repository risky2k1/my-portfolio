import { Icon, Sidebar, Card, Heading } from "../../components";
import { __ } from '@wordpress/i18n';

const Homepage = () => {
    const cardLists = [
        {
            iconSvg: <Icon icon="site" />,
            heading: __('Site Identity', 'perfect-portfolio'),
            buttonText: __('Customize', 'perfect-portfolio'),
            buttonUrl: cw_dashboard.custom_logo
        },
        {
            iconSvg: <Icon icon="colorsetting" />,
            heading: __("Color Settings", 'perfect-portfolio'),
            buttonText: __('Customize', 'perfect-portfolio'),
            buttonUrl: cw_dashboard.colors
        },
        {
            iconSvg: <Icon icon="layoutsetting" />,
            heading: __("Layout Settings", 'perfect-portfolio'),
            buttonText: __('Customize', 'perfect-portfolio'),
            buttonUrl: cw_dashboard.layout
        },
        {
            iconSvg: <Icon icon="frontpagesetting" />,
            heading: __("Front Page Settings", 'perfect-portfolio'),
            buttonText: __('Customize', 'perfect-portfolio'),
            buttonUrl: cw_dashboard.frontpage
        },
        {
            iconSvg: <Icon icon="generalsetting" />,
            heading: __("General Settings"),
            buttonText: __('Customize', 'perfect-portfolio'),
            buttonUrl: cw_dashboard.general
        },
        {
            iconSvg: <Icon icon="footersetting" />,
            heading: __('Footer Settings', 'perfect-portfolio'),
            buttonText: __('Customize', 'perfect-portfolio'),
            buttonUrl: cw_dashboard.footer
        }
    ];

    const proSettings = [
        {
            heading: __('Banner Layouts', 'perfect-portfolio'),
            para: __('Choose from different unique banner layouts.', 'perfect-portfolio'),
            buttonText: __('Learn More', 'perfect-portfolio'),
            buttonUrl: cw_dashboard?.get_pro
        },
        {
            heading: __('Multiple Layouts', 'perfect-portfolio'),
            para: __('Choose layouts for blogs, banners, posts and more.', 'perfect-portfolio'),
            buttonText: __('Learn More', 'perfect-portfolio'),
            buttonUrl: cw_dashboard?.get_pro
        },
        {
            heading: __('Multiple Sidebar', 'perfect-portfolio'),
            para: __('Set different sidebars for posts and pages.', 'perfect-portfolio'),
            buttonText: "Learn More",
            buttonUrl: cw_dashboard?.get_pro
        },
        {
            para: __('Boost your website performance with ease.', 'perfect-portfolio'),
            heading: __('Performance Settings', 'perfect-portfolio'),
            buttonText: __('Learn More', 'perfect-portfolio'),
            buttonUrl: cw_dashboard?.get_pro
        },
        {
            para: __('Choose typography for different heading tags.', 'perfect-portfolio'),
            heading: __('Typography Settings', 'perfect-portfolio'),
            buttonText: __('Learn More', 'perfect-portfolio'),
            buttonUrl: cw_dashboard?.get_pro
        },
        {
            para: __('Import the demo content to kickstart your site.', 'perfect-portfolio'),
            heading: __('One Click Demo Import', 'perfect-portfolio'),
            buttonText: __('Learn More', 'perfect-portfolio'),
            buttonUrl: cw_dashboard?.get_pro
        }
    ];

    const sidebarSettings = [
        {
            heading: __('We Value Your Feedback!', 'perfect-portfolio-pro'),
            icon: "star",
            para: __("Your review helps us improve and assists others in making informed choices. Share your thoughts today!", 'perfect-portfolio-pro'),
            imageurl: <Icon icon="review" />,
            buttonText: __('Leave a Review', 'perfect-portfolio-pro'),
            buttonUrl: cw_dashboard.review
        },
        {
            heading: __('Knowledge Base', 'perfect-portfolio-pro'),
            para: __("Need help using our theme? Visit our well-organized Knowledge Base!", 'perfect-portfolio-pro'),
            imageurl: <Icon icon="documentation" />,
            buttonText: __('Explore', 'perfect-portfolio-pro'),
            buttonUrl: cw_dashboard.docmentation
        },
        {
            heading: __('Need Assistance? ', 'perfect-portfolio-pro'),
            para: __("If you need help or have any questions, don't hesitate to contact our support team. We're here to assist you!", 'perfect-portfolio-pro'),
            imageurl: <Icon icon="supportTwo" />,
            buttonText: __('Submit a Ticket', 'perfect-portfolio-pro'),
            buttonUrl: cw_dashboard.support
        }
    ];

    return (
        <>
            <div className="customizer-settings">
                <div className="cw-customizer">
                    <Heading
                        heading={__( 'Quick Customizer Settings', 'perfect-portfolio' )}
                        buttonText={__( 'Go To Customizer', 'perfect-portfolio' )}
                        buttonUrl={cw_dashboard?.customizer_url}
                        openInNewTab={true}
                    />
                    <Card
                        cardList={cardLists}
                        cardPlace='customizer'
                        cardCol='three-col'
                    />
                    <Heading
                        heading={__( 'More features with Pro version', 'perfect-portfolio' )}
                        buttonText={__( 'Go To Customizer', 'perfect-portfolio' )}
                        buttonUrl={cw_dashboard?.customizer_url}
                        openInNewTab={true}
                    />
                    <Card
                        cardList={proSettings}
                        cardPlace='cw-pro'
                        cardCol='two-col'
                    />
                    <div className="cw-button">
                        <a href={cw_dashboard?.get_pro} target="_blank" className="cw-button-btn primary-btn long-button">{__('Learn more about the Pro version', '')}</a>
                    </div>
                </div>
                <Sidebar sidebarSettings={sidebarSettings} openInNewTab={true} />
            </div>
        </>
    );
}

export default Homepage;