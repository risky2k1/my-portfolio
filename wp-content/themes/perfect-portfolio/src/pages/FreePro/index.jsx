
import freevspro from "../../assets/img/freevspro.webp";
import { Sidebar, Icon } from "../../components";
import { __ } from '@wordpress/i18n';
const FreePro = () => {

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
                    <img className="freepro" src={freevspro} alt={__("Free vs Pro image", "perfect-portfolio")} />
                </div>
                <Sidebar sidebarSettings={sidebarSettings} openInNewTab={true}/>
            </div>
        </>
    )
}

export default FreePro;